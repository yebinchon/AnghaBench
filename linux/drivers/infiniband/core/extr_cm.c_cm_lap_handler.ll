; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_lap_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_lap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { i32, %struct.TYPE_13__*, %struct.TYPE_21__*, %struct.TYPE_16__, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.ib_cm_lap_event_param }
%struct.ib_cm_lap_event_param = type { i32* }
%struct.cm_id_private = type { i32, i32, i32, i32, %struct.TYPE_19__, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.cm_lap_msg = type { %struct.TYPE_20__, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.ib_mad_send_buf = type { i64 }
%struct.cm_mra_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_CM_ESTABLISHED = common dso_local global i64 0, align 8
@CM_RECV_DUPLICATES = common dso_local global i64 0, align 8
@CM_LAP_COUNTER = common dso_local global i64 0, align 8
@CM_MSG_RESPONSE_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm_work*)* @cm_lap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_lap_handler(%struct.cm_work* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.cm_id_private*, align 8
  %5 = alloca %struct.cm_lap_msg*, align 8
  %6 = alloca %struct.ib_cm_lap_event_param*, align 8
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.ib_mad_send_buf* null, %struct.ib_mad_send_buf** %7, align 8
  %9 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 2
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %17 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %16, i32 0, i32 2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @rdma_protocol_roce(i32 %15, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %259

26:                                               ; preds = %1
  %27 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %28 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %27, i32 0, i32 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.cm_lap_msg*
  store %struct.cm_lap_msg* %33, %struct.cm_lap_msg** %5, align 8
  %34 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %35 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %38 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.cm_id_private* @cm_acquire_id(i32 %36, i32 %39)
  store %struct.cm_id_private* %40, %struct.cm_id_private** %4, align 8
  %41 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %42 = icmp ne %struct.cm_id_private* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %26
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %259

46:                                               ; preds = %26
  %47 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %48 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store %struct.ib_cm_lap_event_param* %50, %struct.ib_cm_lap_event_param** %6, align 8
  %51 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %52 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @memset(i32* %54, i32 0, i32 4)
  %56 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %57 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %56, i32 0, i32 2
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %64 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %63, i32 0, i32 2
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %69 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %73 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %72, i32 0, i32 2
  %74 = call i32 @cm_path_set_rec_type(i32 %62, i32 %67, i32* %71, i32* %73)
  %75 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %76 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %80 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %82 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %83 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %86 = call i32 @cm_format_path_from_lap(%struct.cm_id_private* %81, i32* %84, %struct.cm_lap_msg* %85)
  %87 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %88 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %87, i32 0, i32 1
  %89 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %90 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i32* %88, i32** %91, align 8
  %92 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %93 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %92, i32 0, i32 0
  %94 = call i32 @spin_lock_irq(i32* %93)
  %95 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %96 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IB_CM_ESTABLISHED, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %46
  br label %250

102:                                              ; preds = %46
  %103 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %104 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %182 [
    i32 129, label %107
    i32 131, label %107
    i32 128, label %108
    i32 130, label %169
  ]

107:                                              ; preds = %102, %102
  br label %183

108:                                              ; preds = %102
  %109 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %110 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %109, i32 0, i32 2
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @CM_LAP_COUNTER, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = call i32 @atomic_long_inc(i32* %119)
  %121 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %122 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %121, i32 0, i32 2
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %125 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = call %struct.ib_mad_send_buf* @cm_alloc_response_msg_no_ah(%struct.TYPE_21__* %123, %struct.TYPE_13__* %126)
  store %struct.ib_mad_send_buf* %127, %struct.ib_mad_send_buf** %7, align 8
  %128 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %129 = call i32 @IS_ERR(%struct.ib_mad_send_buf* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %108
  br label %250

132:                                              ; preds = %108
  %133 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %134 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to %struct.cm_mra_msg*
  %137 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %138 = load i32, i32* @CM_MSG_RESPONSE_OTHER, align 4
  %139 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %140 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %143 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %146 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @cm_format_mra(%struct.cm_mra_msg* %136, %struct.cm_id_private* %137, i32 %138, i32 %141, i32 %144, i32 %147)
  %149 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %150 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %149, i32 0, i32 0
  %151 = call i32 @spin_unlock_irq(i32* %150)
  %152 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %153 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %152, i32 0, i32 2
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %153, align 8
  %155 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %156 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %155, i32 0, i32 1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %159 = call i32 @cm_create_response_msg_ah(%struct.TYPE_21__* %154, %struct.TYPE_13__* %157, %struct.ib_mad_send_buf* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %132
  %162 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %163 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %162, i32* null)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %161, %132
  %166 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %167 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %166)
  br label %168

168:                                              ; preds = %165, %161
  br label %254

169:                                              ; preds = %102
  %170 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %171 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %170, i32 0, i32 2
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = load i64, i64* @CM_RECV_DUPLICATES, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @CM_LAP_COUNTER, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = call i32 @atomic_long_inc(i32* %180)
  br label %250

182:                                              ; preds = %102
  br label %250

183:                                              ; preds = %107
  %184 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %185 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %184, i32 0, i32 2
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %188 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %187, i32 0, i32 1
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %193 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %192, i32 0, i32 1
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %199 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %198, i32 0, i32 6
  %200 = call i32 @cm_init_av_for_lap(%struct.TYPE_21__* %186, i32 %191, i32 %197, i32* %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %183
  br label %250

204:                                              ; preds = %183
  %205 = load %struct.ib_cm_lap_event_param*, %struct.ib_cm_lap_event_param** %6, align 8
  %206 = getelementptr inbounds %struct.ib_cm_lap_event_param, %struct.ib_cm_lap_event_param* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %209 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %208, i32 0, i32 5
  %210 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %211 = call i32 @cm_init_av_by_path(i32* %207, i32* null, i32* %209, %struct.cm_id_private* %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  br label %250

215:                                              ; preds = %204
  %216 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %217 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  store i32 130, i32* %218, align 8
  %219 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %5, align 8
  %220 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %224 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %226 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %225, i32 0, i32 2
  %227 = call i32 @atomic_inc_and_test(i32* %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %215
  %231 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %232 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %231, i32 0, i32 0
  %233 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %234 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %233, i32 0, i32 1
  %235 = call i32 @list_add_tail(i32* %232, i32* %234)
  br label %236

236:                                              ; preds = %230, %215
  %237 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %238 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %237, i32 0, i32 0
  %239 = call i32 @spin_unlock_irq(i32* %238)
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %244 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %245 = call i32 @cm_process_work(%struct.cm_id_private* %243, %struct.cm_work* %244)
  br label %249

246:                                              ; preds = %236
  %247 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %248 = call i32 @cm_deref_id(%struct.cm_id_private* %247)
  br label %249

249:                                              ; preds = %246, %242
  store i32 0, i32* %2, align 4
  br label %259

250:                                              ; preds = %214, %203, %182, %169, %131, %101
  %251 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %252 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %251, i32 0, i32 0
  %253 = call i32 @spin_unlock_irq(i32* %252)
  br label %254

254:                                              ; preds = %250, %168
  %255 = load %struct.cm_id_private*, %struct.cm_id_private** %4, align 8
  %256 = call i32 @cm_deref_id(%struct.cm_id_private* %255)
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %254, %249, %43, %23
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i64 @rdma_protocol_roce(i32, i32) #1

declare dso_local %struct.cm_id_private* @cm_acquire_id(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cm_path_set_rec_type(i32, i32, i32*, i32*) #1

declare dso_local i32 @cm_format_path_from_lap(%struct.cm_id_private*, i32*, %struct.cm_lap_msg*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.ib_mad_send_buf* @cm_alloc_response_msg_no_ah(%struct.TYPE_21__*, %struct.TYPE_13__*) #1

declare dso_local i32 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_format_mra(%struct.cm_mra_msg*, %struct.cm_id_private*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cm_create_response_msg_ah(%struct.TYPE_21__*, %struct.TYPE_13__*, %struct.ib_mad_send_buf*) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_init_av_for_lap(%struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32 @cm_init_av_by_path(i32*, i32*, i32*, %struct.cm_id_private*) #1

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cm_process_work(%struct.cm_id_private*, %struct.cm_work*) #1

declare dso_local i32 @cm_deref_id(%struct.cm_id_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
