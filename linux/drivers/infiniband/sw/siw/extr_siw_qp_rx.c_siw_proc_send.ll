; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_proc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_proc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_6__*, %struct.ib_pd*, %struct.siw_rx_fpdu, %struct.siw_rx_stream }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ib_pd* }
%struct.ib_pd = type { i32 }
%struct.siw_rx_fpdu = type { i64, i64, i64, i64 }
%struct.siw_rx_stream = type { i64, i32, i64, i32 }
%struct.siw_wqe = type { i32, %struct.siw_mem**, %struct.TYPE_4__ }
%struct.siw_mem = type { i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.siw_sge* }
%struct.siw_sge = type { i64, i64 }

@TERM_ERROR_LAYER_DDP = common dso_local global i32 0, align 4
@DDP_ETYPE_UNTAGGED_BUF = common dso_local global i32 0, align 4
@DDP_ECODE_UT_INVALID_MSN_NOBUF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SIW_GET_DATA_START = common dso_local global i64 0, align 8
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@DDP_ETYPE_CATASTROPHIC = common dso_local global i32 0, align 4
@DDP_ECODE_CATASTROPHIC = common dso_local global i32 0, align 4
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_proc_send(%struct.siw_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_rx_stream*, align 8
  %5 = alloca %struct.siw_rx_fpdu*, align 8
  %6 = alloca %struct.siw_wqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_pd*, align 8
  %11 = alloca %struct.siw_mem**, align 8
  %12 = alloca %struct.siw_mem*, align 8
  %13 = alloca %struct.siw_sge*, align 8
  %14 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  %15 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %16 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %15, i32 0, i32 3
  store %struct.siw_rx_stream* %16, %struct.siw_rx_stream** %4, align 8
  %17 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %18 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %17, i32 0, i32 2
  store %struct.siw_rx_fpdu* %18, %struct.siw_rx_fpdu** %5, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %20 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %25 = call %struct.siw_wqe* @siw_rqe_get(%struct.siw_qp* %24)
  store %struct.siw_wqe* %25, %struct.siw_wqe** %6, align 8
  %26 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %27 = icmp ne %struct.siw_wqe* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %34 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %35 = load i32, i32* @DDP_ETYPE_UNTAGGED_BUF, align 4
  %36 = load i32, i32* @DDP_ECODE_UT_INVALID_MSN_NOBUF, align 4
  %37 = call i32 @siw_init_terminate(%struct.siw_qp* %33, i32 %34, i32 %35, i32 %36, i32 0)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %291

40:                                               ; preds = %23
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %43 = call %struct.siw_wqe* @rx_wqe(%struct.siw_rx_fpdu* %42)
  store %struct.siw_wqe* %43, %struct.siw_wqe** %6, align 8
  br label %44

44:                                               ; preds = %41, %40
  %45 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %46 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SIW_GET_DATA_START, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %52 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %53 = call i32 @siw_send_check_ntoh(%struct.siw_rx_stream* %51, %struct.siw_rx_fpdu* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %59 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %60 = call i32 @siw_qp_event(%struct.siw_qp* %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %291

62:                                               ; preds = %50
  %63 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %64 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %291

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %71 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %74 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @min(i32 %72, i64 %75)
  store i32 %76, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %253, %93, %69
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %270

80:                                               ; preds = %77
  %81 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %82 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.siw_sge*, %struct.siw_sge** %83, align 8
  %85 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %86 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %84, i64 %87
  store %struct.siw_sge* %88, %struct.siw_sge** %13, align 8
  %89 = load %struct.siw_sge*, %struct.siw_sge** %13, align 8
  %90 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %80
  %94 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %95 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %99 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %101 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  br label %77

102:                                              ; preds = %80
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.siw_sge*, %struct.siw_sge** %13, align 8
  %105 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %108 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = call i32 @min(i32 %103, i64 %110)
  store i32 %111, i32* %14, align 4
  %112 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %113 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %112, i32 0, i32 1
  %114 = load %struct.siw_mem**, %struct.siw_mem*** %113, align 8
  %115 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %116 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.siw_mem*, %struct.siw_mem** %114, i64 %117
  store %struct.siw_mem** %118, %struct.siw_mem*** %11, align 8
  %119 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %120 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = icmp eq %struct.TYPE_6__* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %102
  %124 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %125 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %124, i32 0, i32 1
  %126 = load %struct.ib_pd*, %struct.ib_pd** %125, align 8
  br label %134

127:                                              ; preds = %102
  %128 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %129 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.ib_pd*, %struct.ib_pd** %132, align 8
  br label %134

134:                                              ; preds = %127, %123
  %135 = phi %struct.ib_pd* [ %126, %123 ], [ %133, %127 ]
  store %struct.ib_pd* %135, %struct.ib_pd** %10, align 8
  %136 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %137 = load %struct.siw_sge*, %struct.siw_sge** %13, align 8
  %138 = load %struct.siw_mem**, %struct.siw_mem*** %11, align 8
  %139 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %140 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %141 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @siw_check_sge(%struct.ib_pd* %136, %struct.siw_sge* %137, %struct.siw_mem** %138, i32 %139, i64 %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %134
  %149 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %150 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %151 = load i32, i32* @DDP_ETYPE_CATASTROPHIC, align 4
  %152 = load i32, i32* @DDP_ECODE_CATASTROPHIC, align 4
  %153 = call i32 @siw_init_terminate(%struct.siw_qp* %149, i32 %150, i32 %151, i32 %152, i32 0)
  %154 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %155 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %156 = call i32 @siw_qp_event(%struct.siw_qp* %154, i32 %155)
  br label %270

157:                                              ; preds = %134
  %158 = load %struct.siw_mem**, %struct.siw_mem*** %11, align 8
  %159 = load %struct.siw_mem*, %struct.siw_mem** %158, align 8
  store %struct.siw_mem* %159, %struct.siw_mem** %12, align 8
  %160 = load %struct.siw_mem*, %struct.siw_mem** %12, align 8
  %161 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %176

164:                                              ; preds = %157
  %165 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %166 = load %struct.siw_sge*, %struct.siw_sge** %13, align 8
  %167 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %170 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %168, %171
  %173 = inttoptr i64 %172 to i8*
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @siw_rx_kva(%struct.siw_rx_stream* %165, i8* %173, i32 %174)
  store i32 %175, i32* %9, align 4
  br label %210

176:                                              ; preds = %157
  %177 = load %struct.siw_mem*, %struct.siw_mem** %12, align 8
  %178 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %176
  %182 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %183 = load %struct.siw_mem*, %struct.siw_mem** %12, align 8
  %184 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.siw_sge*, %struct.siw_sge** %13, align 8
  %187 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %190 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %188, %191
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @siw_rx_umem(%struct.siw_rx_stream* %182, i32 %185, i64 %192, i32 %193)
  store i32 %194, i32* %9, align 4
  br label %209

195:                                              ; preds = %176
  %196 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %197 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %198 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %197, i32 0, i32 2
  %199 = load %struct.siw_mem*, %struct.siw_mem** %12, align 8
  %200 = load %struct.siw_sge*, %struct.siw_sge** %13, align 8
  %201 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %204 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %202, %205
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @siw_rx_pbl(%struct.siw_rx_stream* %196, i64* %198, %struct.siw_mem* %199, i64 %206, i32 %207)
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %195, %181
  br label %210

210:                                              ; preds = %209, %164
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %210
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %220 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %224 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %225 = load i32, i32* @DDP_ETYPE_CATASTROPHIC, align 4
  %226 = load i32, i32* @DDP_ECODE_CATASTROPHIC, align 4
  %227 = call i32 @siw_init_terminate(%struct.siw_qp* %223, i32 %224, i32 %225, i32 %226, i32 0)
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %291

230:                                              ; preds = %210
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %234 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %238 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.siw_sge*, %struct.siw_sge** %13, align 8
  %241 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %239, %242
  br i1 %243, label %244, label %253

244:                                              ; preds = %230
  %245 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %246 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %246, align 8
  %249 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %250 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %249, i32 0, i32 1
  store i64 0, i64* %250, align 8
  %251 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %252 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %251, i32 0, i32 2
  store i64 0, i64* %252, align 8
  br label %253

253:                                              ; preds = %244, %230
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %7, align 4
  %256 = sub nsw i32 %255, %254
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %9, align 4
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %262 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = sub nsw i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %267 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %77

270:                                              ; preds = %148, %77
  %271 = load i32, i32* %8, align 4
  %272 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %273 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %277 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %270
  store i32 0, i32* %2, align 4
  br label %291

281:                                              ; preds = %270
  %282 = load i32, i32* %9, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32, i32* %9, align 4
  br label %289

286:                                              ; preds = %281
  %287 = load i32, i32* @EAGAIN, align 4
  %288 = sub nsw i32 0, %287
  br label %289

289:                                              ; preds = %286, %284
  %290 = phi i32 [ %285, %284 ], [ %288, %286 ]
  store i32 %290, i32* %2, align 4
  br label %291

291:                                              ; preds = %289, %280, %217, %67, %57, %32
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local %struct.siw_wqe* @siw_rqe_get(%struct.siw_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @siw_init_terminate(%struct.siw_qp*, i32, i32, i32, i32) #1

declare dso_local %struct.siw_wqe* @rx_wqe(%struct.siw_rx_fpdu*) #1

declare dso_local i32 @siw_send_check_ntoh(%struct.siw_rx_stream*, %struct.siw_rx_fpdu*) #1

declare dso_local i32 @siw_qp_event(%struct.siw_qp*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @siw_check_sge(%struct.ib_pd*, %struct.siw_sge*, %struct.siw_mem**, i32, i64, i32) #1

declare dso_local i32 @siw_rx_kva(%struct.siw_rx_stream*, i8*, i32) #1

declare dso_local i32 @siw_rx_umem(%struct.siw_rx_stream*, i32, i64, i32) #1

declare dso_local i32 @siw_rx_pbl(%struct.siw_rx_stream*, i64*, %struct.siw_mem*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
