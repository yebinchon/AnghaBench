; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32, i32, i32, i32, i8*, i8*, %struct.TYPE_20__, %struct.TYPE_18__, i32, i8*, i8*, %struct.TYPE_20__, %struct.TYPE_18__, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.cm_id_private = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.ib_cm_req_param = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.sa_path_rec*, i32, i32, i32, i32, i32, i32, i32, %struct.sa_path_rec* }
%struct.sa_path_rec = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i64 0, align 8
@CM_REQ_ATTR_ID = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, %struct.cm_id_private*, %struct.ib_cm_req_param*)* @cm_format_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_req(%struct.cm_req_msg* %0, %struct.cm_id_private* %1, %struct.ib_cm_req_param* %2) #0 {
  %4 = alloca %struct.cm_req_msg*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_req_param*, align 8
  %7 = alloca %struct.sa_path_rec*, align 8
  %8 = alloca %struct.sa_path_rec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_req_param* %2, %struct.ib_cm_req_param** %6, align 8
  %11 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %12 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %11, i32 0, i32 8
  %13 = load %struct.sa_path_rec*, %struct.sa_path_rec** %12, align 8
  store %struct.sa_path_rec* %13, %struct.sa_path_rec** %7, align 8
  %14 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %15 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %14, i32 0, i32 16
  %16 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  store %struct.sa_path_rec* %16, %struct.sa_path_rec** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %18 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %24 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %28 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @opa_is_extended_lid(i32 %26, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %22, %3
  %33 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %34 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %33, i32 0, i32 17
  %35 = load i32, i32* @CM_REQ_ATTR_ID, align 4
  %36 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %37 = call i32 @cm_form_tid(%struct.cm_id_private* %36)
  %38 = call i32 @cm_format_mad_hdr(i32* %34, i32 %35, i32 %37)
  %39 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %40 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %44 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %46 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %49 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 8
  %50 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %51 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %57 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %56, i32 0, i32 14
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %59 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %60 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cpu_to_be32(i32 %61)
  %63 = call i32 @cm_req_set_local_qpn(%struct.cm_req_msg* %58, i32 %62)
  %64 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %65 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %66 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cm_req_set_init_depth(%struct.cm_req_msg* %64, i32 %67)
  %69 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %70 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %71 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cm_req_set_remote_resp_timeout(%struct.cm_req_msg* %69, i32 %72)
  %74 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %75 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %76 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @cm_req_set_qp_type(%struct.cm_req_msg* %74, i64 %77)
  %79 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %80 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %81 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @cm_req_set_flow_ctrl(%struct.cm_req_msg* %79, i32 %82)
  %84 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %85 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %86 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cpu_to_be32(i32 %87)
  %89 = call i32 @cm_req_set_starting_psn(%struct.cm_req_msg* %84, i32 %88)
  %90 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %91 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %92 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @cm_req_set_local_resp_timeout(%struct.cm_req_msg* %90, i32 %93)
  %95 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %96 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %95, i32 0, i32 8
  %97 = load %struct.sa_path_rec*, %struct.sa_path_rec** %96, align 8
  %98 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %101 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %100, i32 0, i32 13
  store i32 %99, i32* %101, align 8
  %102 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %103 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %104 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %103, i32 0, i32 8
  %105 = load %struct.sa_path_rec*, %struct.sa_path_rec** %104, align 8
  %106 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @cm_req_set_path_mtu(%struct.cm_req_msg* %102, i32 %107)
  %109 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %110 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %111 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @cm_req_set_max_cm_retries(%struct.cm_req_msg* %109, i32 %112)
  %114 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %115 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %32
  %120 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %121 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %122 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cm_req_set_resp_res(%struct.cm_req_msg* %120, i32 %123)
  %125 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %126 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %127 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @cm_req_set_retry_count(%struct.cm_req_msg* %125, i32 %128)
  %130 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %131 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %132 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @cm_req_set_rnr_retry_count(%struct.cm_req_msg* %130, i32 %133)
  %135 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %136 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %137 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @cm_req_set_srq(%struct.cm_req_msg* %135, i32 %138)
  br label %140

140:                                              ; preds = %119, %32
  %141 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %142 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %141, i32 0, i32 12
  %143 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %144 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %143, i32 0, i32 9
  %145 = bitcast %struct.TYPE_18__* %142 to i8*
  %146 = bitcast %struct.TYPE_18__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 8, i1 false)
  %147 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %148 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %147, i32 0, i32 11
  %149 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %150 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %149, i32 0, i32 8
  %151 = bitcast %struct.TYPE_20__* %148 to i8*
  %152 = bitcast %struct.TYPE_20__* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 8, i1 false)
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %140
  %156 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %157 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @be32_to_cpu(i32 %159)
  %161 = call i8* @OPA_MAKE_ID(i32 %160)
  %162 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %163 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %162, i32 0, i32 12
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  store i8* %161, i8** %165, align 8
  %166 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %167 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @be32_to_cpu(i32 %169)
  %171 = call i8* @OPA_MAKE_ID(i32 %170)
  %172 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %173 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %172, i32 0, i32 11
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  store i8* %171, i8** %175, align 8
  br label %176

176:                                              ; preds = %155, %140
  %177 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %178 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp sle i32 %179, 1
  br i1 %180, label %181, label %206

181:                                              ; preds = %176
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %190

185:                                              ; preds = %181
  %186 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %187 = call i32 @sa_path_get_slid(%struct.sa_path_rec* %186)
  %188 = call i32 @ntohl(i32 %187)
  %189 = call i8* @htons(i32 %188)
  br label %190

190:                                              ; preds = %185, %184
  %191 = phi i8* [ null, %184 ], [ %189, %185 ]
  %192 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %193 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %192, i32 0, i32 10
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %202

197:                                              ; preds = %190
  %198 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %199 = call i32 @sa_path_get_dlid(%struct.sa_path_rec* %198)
  %200 = call i32 @ntohl(i32 %199)
  %201 = call i8* @htons(i32 %200)
  br label %202

202:                                              ; preds = %197, %196
  %203 = phi i8* [ null, %196 ], [ %201, %197 ]
  %204 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %205 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %204, i32 0, i32 9
  store i8* %203, i8** %205, align 8
  br label %213

206:                                              ; preds = %176
  %207 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %208 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %209 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %208, i32 0, i32 10
  store i8* %207, i8** %209, align 8
  %210 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %211 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %212 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %211, i32 0, i32 9
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %206, %202
  %214 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %215 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %216 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @cm_req_set_primary_flow_label(%struct.cm_req_msg* %214, i32 %217)
  %219 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %220 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %221 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @cm_req_set_primary_packet_rate(%struct.cm_req_msg* %219, i32 %222)
  %224 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %225 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %228 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %227, i32 0, i32 8
  store i32 %226, i32* %228, align 8
  %229 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %230 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %233 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %235 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %236 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @cm_req_set_primary_sl(%struct.cm_req_msg* %234, i32 %237)
  %239 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %240 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %241 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = icmp sle i32 %242, 1
  %244 = zext i1 %243 to i32
  %245 = call i32 @cm_req_set_primary_subnet_local(%struct.cm_req_msg* %239, i32 %244)
  %246 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %247 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %248 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.sa_path_rec*, %struct.sa_path_rec** %7, align 8
  %256 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @cm_ack_timeout(i32 %254, i32 %257)
  %259 = call i32 @cm_req_set_primary_local_ack_timeout(%struct.cm_req_msg* %246, i32 %258)
  %260 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %261 = icmp ne %struct.sa_path_rec* %260, null
  br i1 %261, label %262, label %398

262:                                              ; preds = %213
  store i32 0, i32* %10, align 4
  %263 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %264 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %278

268:                                              ; preds = %262
  %269 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %270 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %274 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @opa_is_extended_lid(i32 %272, i32 %276)
  store i32 %277, i32* %10, align 4
  br label %278

278:                                              ; preds = %268, %262
  %279 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %280 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %279, i32 0, i32 7
  %281 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %282 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %281, i32 0, i32 9
  %283 = bitcast %struct.TYPE_18__* %280 to i8*
  %284 = bitcast %struct.TYPE_18__* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 8, i1 false)
  %285 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %286 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %285, i32 0, i32 6
  %287 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %288 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %287, i32 0, i32 8
  %289 = bitcast %struct.TYPE_20__* %286 to i8*
  %290 = bitcast %struct.TYPE_20__* %288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %289, i8* align 8 %290, i64 8, i1 false)
  %291 = load i32, i32* %10, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %314

293:                                              ; preds = %278
  %294 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %295 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %294, i32 0, i32 7
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @be32_to_cpu(i32 %297)
  %299 = call i8* @OPA_MAKE_ID(i32 %298)
  %300 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %301 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %300, i32 0, i32 7
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  store i8* %299, i8** %303, align 8
  %304 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %305 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %304, i32 0, i32 7
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @be32_to_cpu(i32 %307)
  %309 = call i8* @OPA_MAKE_ID(i32 %308)
  %310 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %311 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %310, i32 0, i32 6
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 0
  store i8* %309, i8** %313, align 8
  br label %314

314:                                              ; preds = %293, %278
  %315 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %316 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = icmp sle i32 %317, 1
  br i1 %318, label %319, label %344

319:                                              ; preds = %314
  %320 = load i32, i32* %10, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  br label %328

323:                                              ; preds = %319
  %324 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %325 = call i32 @sa_path_get_slid(%struct.sa_path_rec* %324)
  %326 = call i32 @ntohl(i32 %325)
  %327 = call i8* @htons(i32 %326)
  br label %328

328:                                              ; preds = %323, %322
  %329 = phi i8* [ null, %322 ], [ %327, %323 ]
  %330 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %331 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %330, i32 0, i32 5
  store i8* %329, i8** %331, align 8
  %332 = load i32, i32* %10, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  br label %340

335:                                              ; preds = %328
  %336 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %337 = call i32 @sa_path_get_dlid(%struct.sa_path_rec* %336)
  %338 = call i32 @ntohl(i32 %337)
  %339 = call i8* @htons(i32 %338)
  br label %340

340:                                              ; preds = %335, %334
  %341 = phi i8* [ null, %334 ], [ %339, %335 ]
  %342 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %343 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %342, i32 0, i32 4
  store i8* %341, i8** %343, align 8
  br label %351

344:                                              ; preds = %314
  %345 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %346 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %347 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %346, i32 0, i32 5
  store i8* %345, i8** %347, align 8
  %348 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %349 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %350 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %349, i32 0, i32 4
  store i8* %348, i8** %350, align 8
  br label %351

351:                                              ; preds = %344, %340
  %352 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %353 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %354 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %353, i32 0, i32 6
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @cm_req_set_alt_flow_label(%struct.cm_req_msg* %352, i32 %355)
  %357 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %358 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %359 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @cm_req_set_alt_packet_rate(%struct.cm_req_msg* %357, i32 %360)
  %362 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %363 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %366 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %365, i32 0, i32 3
  store i32 %364, i32* %366, align 4
  %367 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %368 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %371 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %370, i32 0, i32 1
  store i32 %369, i32* %371, align 4
  %372 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %373 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %374 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @cm_req_set_alt_sl(%struct.cm_req_msg* %372, i32 %375)
  %377 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %378 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %379 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = icmp sle i32 %380, 1
  %382 = zext i1 %381 to i32
  %383 = call i32 @cm_req_set_alt_subnet_local(%struct.cm_req_msg* %377, i32 %382)
  %384 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %385 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %386 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.sa_path_rec*, %struct.sa_path_rec** %8, align 8
  %394 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @cm_ack_timeout(i32 %392, i32 %395)
  %397 = call i32 @cm_req_set_alt_local_ack_timeout(%struct.cm_req_msg* %384, i32 %396)
  br label %398

398:                                              ; preds = %351, %213
  %399 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %400 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %399, i32 0, i32 2
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %419

403:                                              ; preds = %398
  %404 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %405 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %419

408:                                              ; preds = %403
  %409 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %410 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %413 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.ib_cm_req_param*, %struct.ib_cm_req_param** %6, align 8
  %416 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @memcpy(i32 %411, i64 %414, i64 %417)
  br label %419

419:                                              ; preds = %408, %403, %398
  ret void
}

declare dso_local i32 @opa_is_extended_lid(i32, i32) #1

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*) #1

declare dso_local i32 @cm_req_set_local_qpn(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cm_req_set_init_depth(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_remote_resp_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_qp_type(%struct.cm_req_msg*, i64) #1

declare dso_local i32 @cm_req_set_flow_ctrl(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_starting_psn(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_local_resp_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_path_mtu(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_max_cm_retries(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_resp_res(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_retry_count(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_rnr_retry_count(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_srq(%struct.cm_req_msg*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @OPA_MAKE_ID(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sa_path_get_slid(%struct.sa_path_rec*) #1

declare dso_local i32 @sa_path_get_dlid(%struct.sa_path_rec*) #1

declare dso_local i32 @cm_req_set_primary_flow_label(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_packet_rate(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_sl(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_subnet_local(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_primary_local_ack_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_ack_timeout(i32, i32) #1

declare dso_local i32 @cm_req_set_alt_flow_label(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_packet_rate(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_sl(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_subnet_local(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @cm_req_set_alt_local_ack_timeout(%struct.cm_req_msg*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
