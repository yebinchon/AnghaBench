; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_rqe_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_rqe_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32**, %struct.TYPE_10__, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.siw_wqe = type { i32 }
%struct.siw_qp = type { i64, i32, %struct.TYPE_7__, %struct.siw_rqe*, %struct.siw_srq* }
%struct.TYPE_7__ = type { i64 }
%struct.siw_rqe = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.siw_srq = type { i64, i64, i64, i32, i64, %struct.siw_rqe* }

@SIW_WQE_VALID = common dso_local global i32 0, align 4
@SIW_MAX_SGE = common dso_local global i32 0, align 4
@SIW_OP_RECEIVE = common dso_local global %struct.TYPE_11__* null, align 8
@SIW_WR_INPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"too many sge's: %d\0A\00", align 1
@IB_EVENT_SRQ_LIMIT_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.siw_wqe* (%struct.siw_qp*)* @siw_rqe_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.siw_wqe* @siw_rqe_get(%struct.siw_qp* %0) #0 {
  %2 = alloca %struct.siw_wqe*, align 8
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_rqe*, align 8
  %5 = alloca %struct.siw_srq*, align 8
  %6 = alloca %struct.siw_wqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.siw_rqe*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store %struct.siw_wqe* null, %struct.siw_wqe** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %15 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %14, i32 0, i32 4
  %16 = load %struct.siw_srq*, %struct.siw_srq** %15, align 8
  store %struct.siw_srq* %16, %struct.siw_srq** %5, align 8
  %17 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %18 = icmp ne %struct.siw_srq* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %1
  %20 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %21 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %20, i32 0, i32 3
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %25 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %249

33:                                               ; preds = %19
  %34 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %35 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %34, i32 0, i32 5
  %36 = load %struct.siw_rqe*, %struct.siw_rqe** %35, align 8
  %37 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %38 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %41 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = urem i64 %39, %42
  %44 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %36, i64 %43
  store %struct.siw_rqe* %44, %struct.siw_rqe** %4, align 8
  br label %68

45:                                               ; preds = %1
  %46 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %47 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %46, i32 0, i32 3
  %48 = load %struct.siw_rqe*, %struct.siw_rqe** %47, align 8
  %49 = icmp ne %struct.siw_rqe* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %249

55:                                               ; preds = %45
  %56 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %57 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %56, i32 0, i32 3
  %58 = load %struct.siw_rqe*, %struct.siw_rqe** %57, align 8
  %59 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %60 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %63 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = urem i64 %61, %65
  %67 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %58, i64 %66
  store %struct.siw_rqe* %67, %struct.siw_rqe** %4, align 8
  br label %68

68:                                               ; preds = %55, %33
  %69 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %70 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SIW_WQE_VALID, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %248

77:                                               ; preds = %68
  %78 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %79 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SIW_MAX_SGE, align 4
  %83 = icmp sle i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @likely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %188

87:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  %88 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %89 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %88, i32 0, i32 1
  %90 = call %struct.siw_wqe* @rx_wqe(i32* %89)
  store %struct.siw_wqe* %90, %struct.siw_wqe** %6, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SIW_OP_RECEIVE, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %11, align 8
  %92 = load i32, i32* @SIW_WR_INPROGRESS, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %100 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %109

109:                                              ; preds = %113, %87
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %183

113:                                              ; preds = %109
  %114 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %115 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i32 %121, i32* %129, align 4
  %130 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %131 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %130, i32 0, i32 2
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  store i32 %137, i32* %145, align 8
  %146 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %147 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  store i64 %153, i64* %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  store i32* null, i32** %180, align 8
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %109

183:                                              ; preds = %109
  %184 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %185 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @smp_store_mb(i32 %186, i32 0)
  br label %202

188:                                              ; preds = %77
  %189 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %190 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %191 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @siw_dbg_qp(%struct.siw_qp* %189, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %192)
  %194 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %195 = icmp ne %struct.siw_srq* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %198 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %197, i32 0, i32 3
  %199 = load i64, i64* %8, align 8
  %200 = call i32 @spin_unlock_irqrestore(i32* %198, i64 %199)
  br label %201

201:                                              ; preds = %196, %188
  store %struct.siw_wqe* null, %struct.siw_wqe** %2, align 8
  br label %266

202:                                              ; preds = %183
  %203 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %204 = icmp ne %struct.siw_srq* %203, null
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %207 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %207, align 8
  br label %247

210:                                              ; preds = %202
  %211 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %212 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %242

215:                                              ; preds = %210
  %216 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %217 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %220 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %218, %221
  %223 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %224 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = urem i64 %222, %225
  store i64 %226, i64* %12, align 8
  %227 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %228 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %227, i32 0, i32 5
  %229 = load %struct.siw_rqe*, %struct.siw_rqe** %228, align 8
  %230 = load i64, i64* %12, align 8
  %231 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %229, i64 %230
  store %struct.siw_rqe* %231, %struct.siw_rqe** %13, align 8
  %232 = load %struct.siw_rqe*, %struct.siw_rqe** %13, align 8
  %233 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @SIW_WQE_VALID, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %215
  %239 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %240 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %239, i32 0, i32 4
  store i64 0, i64* %240, align 8
  store i32 1, i32* %7, align 4
  br label %241

241:                                              ; preds = %238, %215
  br label %242

242:                                              ; preds = %241, %210
  %243 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %244 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %244, align 8
  br label %247

247:                                              ; preds = %242, %205
  br label %248

248:                                              ; preds = %247, %68
  br label %249

249:                                              ; preds = %248, %54, %32
  %250 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %251 = icmp ne %struct.siw_srq* %250, null
  br i1 %251, label %252, label %264

252:                                              ; preds = %249
  %253 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %254 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %253, i32 0, i32 3
  %255 = load i64, i64* %8, align 8
  %256 = call i32 @spin_unlock_irqrestore(i32* %254, i64 %255)
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %252
  %260 = load %struct.siw_srq*, %struct.siw_srq** %5, align 8
  %261 = load i32, i32* @IB_EVENT_SRQ_LIMIT_REACHED, align 4
  %262 = call i32 @siw_srq_event(%struct.siw_srq* %260, i32 %261)
  br label %263

263:                                              ; preds = %259, %252
  br label %264

264:                                              ; preds = %263, %249
  %265 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  store %struct.siw_wqe* %265, %struct.siw_wqe** %2, align 8
  br label %266

266:                                              ; preds = %264, %201
  %267 = load %struct.siw_wqe*, %struct.siw_wqe** %2, align 8
  ret %struct.siw_wqe* %267
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.siw_wqe* @rx_wqe(i32*) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @siw_srq_event(%struct.siw_srq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
