; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_proc_rresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_proc_rresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32, i32, %struct.TYPE_3__, %struct.siw_rx_fpdu, %struct.siw_rx_stream }
%struct.TYPE_3__ = type { i32 }
%struct.siw_rx_fpdu = type { i32, i64 }
%struct.siw_rx_stream = type { i64, i32, i64, i32 }
%struct.siw_wqe = type { i32, i64, i32, i32, %struct.siw_mem**, %struct.TYPE_4__ }
%struct.siw_mem = type { i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.siw_sge*, i32 }
%struct.siw_sge = type { i64 }

@SIW_WR_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"siw: [QP %u]: proc RRESP: status %d, op %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"siw: [QP %u]: ORQ empty at idx %d\0A\00", align 1
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@SIW_WR_INPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"siw: [QP %u]: resume RRESP: status %d\0A\00", align 1
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"target mem check: %d\0A\00", align 1
@SIW_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@TERM_ERROR_LAYER_DDP = common dso_local global i32 0, align 4
@DDP_ETYPE_TAGGED_BUF = common dso_local global i32 0, align 4
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIW_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DDP_ETYPE_CATASTROPHIC = common dso_local global i32 0, align 4
@DDP_ECODE_CATASTROPHIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_proc_rresp(%struct.siw_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_rx_stream*, align 8
  %5 = alloca %struct.siw_rx_fpdu*, align 8
  %6 = alloca %struct.siw_wqe*, align 8
  %7 = alloca %struct.siw_mem**, align 8
  %8 = alloca %struct.siw_mem*, align 8
  %9 = alloca %struct.siw_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  %12 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %13 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %12, i32 0, i32 4
  store %struct.siw_rx_stream* %13, %struct.siw_rx_stream** %4, align 8
  %14 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %15 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %14, i32 0, i32 3
  store %struct.siw_rx_fpdu* %15, %struct.siw_rx_fpdu** %5, align 8
  %16 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %17 = call %struct.siw_wqe* @rx_wqe(%struct.siw_rx_fpdu* %16)
  store %struct.siw_wqe* %17, %struct.siw_wqe** %6, align 8
  %18 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %19 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %1
  %23 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %24 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SIW_WR_IDLE, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %33 = call i32 @qp_id(%struct.siw_qp* %32)
  %34 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %35 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %38 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %40)
  %42 = load i32, i32* @EPROTO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %251

44:                                               ; preds = %22
  %45 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %46 = call i32 @siw_orqe_start_rx(%struct.siw_qp* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %51 = call i32 @qp_id(%struct.siw_qp* %50)
  %52 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %53 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %56 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = srem i32 %54, %58
  %60 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %59)
  br label %251

61:                                               ; preds = %44
  %62 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %63 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %64 = call i32 @siw_rresp_check_ntoh(%struct.siw_rx_stream* %62, %struct.siw_rx_fpdu* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %70 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %71 = call i32 @siw_qp_event(%struct.siw_qp* %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %2, align 4
  br label %258

73:                                               ; preds = %61
  br label %93

74:                                               ; preds = %1
  %75 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %76 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SIW_WR_INPROGRESS, align 4
  %79 = icmp ne i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %85 = call i32 @qp_id(%struct.siw_qp* %84)
  %86 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %87 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load i32, i32* @EPROTO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %251

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %95 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %258

99:                                               ; preds = %93
  %100 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %101 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.siw_sge*, %struct.siw_sge** %102, align 8
  store %struct.siw_sge* %103, %struct.siw_sge** %9, align 8
  %104 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %105 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %104, i32 0, i32 4
  %106 = load %struct.siw_mem**, %struct.siw_mem*** %105, align 8
  %107 = getelementptr inbounds %struct.siw_mem*, %struct.siw_mem** %106, i64 0
  store %struct.siw_mem** %107, %struct.siw_mem*** %7, align 8
  %108 = load %struct.siw_mem**, %struct.siw_mem*** %7, align 8
  %109 = load %struct.siw_mem*, %struct.siw_mem** %108, align 8
  %110 = icmp ne %struct.siw_mem* %109, null
  br i1 %110, label %145, label %111

111:                                              ; preds = %99
  %112 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %113 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %116 = load %struct.siw_mem**, %struct.siw_mem*** %7, align 8
  %117 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %118 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %119 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @siw_check_sge(i32 %114, %struct.siw_sge* %115, %struct.siw_mem** %116, i32 %117, i32 0, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %111
  %126 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @siw_dbg_qp(%struct.siw_qp* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @SIW_WC_LOC_PROT_ERR, align 4
  %130 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %131 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %133 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %134 = load i32, i32* @DDP_ETYPE_TAGGED_BUF, align 4
  %135 = load i32, i32* %11, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @siw_tagged_error(i32 %136)
  %138 = call i32 @siw_init_terminate(%struct.siw_qp* %132, i32 %133, i32 %134, i32 %137, i32 0)
  %139 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %140 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %141 = call i32 @siw_qp_event(%struct.siw_qp* %139, i32 %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %258

144:                                              ; preds = %111
  br label %145

145:                                              ; preds = %144, %99
  %146 = load %struct.siw_mem**, %struct.siw_mem*** %7, align 8
  %147 = load %struct.siw_mem*, %struct.siw_mem** %146, align 8
  store %struct.siw_mem* %147, %struct.siw_mem** %8, align 8
  %148 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %149 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %152 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @min(i64 %150, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %156 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %171

159:                                              ; preds = %145
  %160 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %161 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %162 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %165 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = inttoptr i64 %167 to i8*
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @siw_rx_kva(%struct.siw_rx_stream* %160, i8* %168, i32 %169)
  store i32 %170, i32* %11, align 4
  br label %205

171:                                              ; preds = %145
  %172 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %173 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %171
  %177 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %178 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %179 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %182 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %185 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %183, %186
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @siw_rx_umem(%struct.siw_rx_stream* %177, i32 %180, i64 %187, i32 %188)
  store i32 %189, i32* %11, align 4
  br label %204

190:                                              ; preds = %171
  %191 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %192 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %193 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %192, i32 0, i32 0
  %194 = load %struct.siw_mem*, %struct.siw_mem** %8, align 8
  %195 = load %struct.siw_sge*, %struct.siw_sge** %9, align 8
  %196 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %199 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @siw_rx_pbl(%struct.siw_rx_stream* %191, i32* %193, %struct.siw_mem* %194, i64 %201, i32 %202)
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %190, %176
  br label %205

205:                                              ; preds = %204, %159
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32, i32* @SIW_WC_GENERAL_ERR, align 4
  %211 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %212 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %11, align 4
  br label %251

215:                                              ; preds = %205
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %219 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %220, %217
  store i64 %221, i64* %219, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %225 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, %223
  store i64 %227, i64* %225, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %231 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, %229
  store i64 %233, i64* %231, align 8
  %234 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %235 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %215
  %239 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %240 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %243 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %241
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %243, align 8
  store i32 0, i32* %2, align 4
  br label %258

248:                                              ; preds = %215
  %249 = load i32, i32* @EAGAIN, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %2, align 4
  br label %258

251:                                              ; preds = %209, %83, %49, %31
  %252 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %253 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %254 = load i32, i32* @DDP_ETYPE_CATASTROPHIC, align 4
  %255 = load i32, i32* @DDP_ECODE_CATASTROPHIC, align 4
  %256 = call i32 @siw_init_terminate(%struct.siw_qp* %252, i32 %253, i32 %254, i32 %255, i32 0)
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %251, %248, %238, %125, %98, %68
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.siw_wqe* @rx_wqe(%struct.siw_rx_fpdu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @qp_id(%struct.siw_qp*) #1

declare dso_local i32 @siw_orqe_start_rx(%struct.siw_qp*) #1

declare dso_local i32 @siw_rresp_check_ntoh(%struct.siw_rx_stream*, %struct.siw_rx_fpdu*) #1

declare dso_local i32 @siw_qp_event(%struct.siw_qp*, i32) #1

declare dso_local i32 @siw_check_sge(i32, %struct.siw_sge*, %struct.siw_mem**, i32, i32, i32) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32) #1

declare dso_local i32 @siw_init_terminate(%struct.siw_qp*, i32, i32, i32, i32) #1

declare dso_local i32 @siw_tagged_error(i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @siw_rx_kva(%struct.siw_rx_stream*, i8*, i32) #1

declare dso_local i32 @siw_rx_umem(%struct.siw_rx_stream*, i32, i64, i32) #1

declare dso_local i32 @siw_rx_pbl(%struct.siw_rx_stream*, i32*, %struct.siw_mem*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
