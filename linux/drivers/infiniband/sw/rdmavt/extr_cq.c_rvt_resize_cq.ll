; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_resize_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rvt_cq = type { i32, %struct.rvt_mmap_info*, %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc*, %struct.TYPE_6__, %struct.rvt_dev_info* }
%struct.rvt_mmap_info = type { i32, i32 }
%struct.rvt_k_cq_wc = type { i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.rvt_dev_info = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_cq_wc = type { i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_resize_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.rvt_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rvt_dev_info*, align 8
  %15 = alloca %struct.rvt_cq_wc*, align 8
  %16 = alloca %struct.rvt_cq_wc*, align 8
  %17 = alloca %struct.rvt_k_cq_wc*, align 8
  %18 = alloca %struct.rvt_k_cq_wc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.rvt_mmap_info*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %21 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %22 = call %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq* %21)
  store %struct.rvt_cq* %22, %struct.rvt_cq** %8, align 8
  %23 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %23, i32 0, i32 5
  %25 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %24, align 8
  store %struct.rvt_dev_info* %25, %struct.rvt_dev_info** %14, align 8
  store %struct.rvt_cq_wc* null, %struct.rvt_cq_wc** %15, align 8
  store %struct.rvt_cq_wc* null, %struct.rvt_cq_wc** %16, align 8
  store %struct.rvt_k_cq_wc* null, %struct.rvt_k_cq_wc** %17, align 8
  store %struct.rvt_k_cq_wc* null, %struct.rvt_k_cq_wc** %18, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %14, align 8
  %31 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %343

39:                                               ; preds = %28
  %40 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %41 = icmp ne %struct.ib_udata* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %44 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 4
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 24
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call %struct.rvt_k_cq_wc* @vmalloc_user(i32 %58)
  %60 = bitcast %struct.rvt_k_cq_wc* %59 to %struct.rvt_cq_wc*
  store %struct.rvt_cq_wc* %60, %struct.rvt_cq_wc** %15, align 8
  %61 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %62 = icmp ne %struct.rvt_cq_wc* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %343

66:                                               ; preds = %48
  br label %89

67:                                               ; preds = %42, %39
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 24
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %14, align 8
  %79 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.rvt_k_cq_wc* @vzalloc_node(i32 %77, i32 %81)
  store %struct.rvt_k_cq_wc* %82, %struct.rvt_k_cq_wc** %17, align 8
  %83 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %17, align 8
  %84 = icmp ne %struct.rvt_k_cq_wc* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %67
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %343

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %66
  %90 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %91 = icmp ne %struct.ib_udata* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %94 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp uge i64 %96, 4
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  store i32 0, i32* %19, align 4
  %99 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %100 = call i32 @ib_copy_to_udata(%struct.ib_udata* %99, i32* %19, i32 4)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %336

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %92, %89
  %106 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %107 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %106, i32 0, i32 0
  %108 = call i32 @spin_lock_irq(i32* %107)
  %109 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %110 = icmp ne %struct.rvt_cq_wc* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %113 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %112, i32 0, i32 3
  %114 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %113, align 8
  %115 = bitcast %struct.rvt_k_cq_wc* %114 to %struct.rvt_cq_wc*
  store %struct.rvt_cq_wc* %115, %struct.rvt_cq_wc** %16, align 8
  %116 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %16, align 8
  %117 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @RDMA_READ_UAPI_ATOMIC(i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %16, align 8
  %121 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @RDMA_READ_UAPI_ATOMIC(i32 %122)
  store i32 %123, i32* %10, align 4
  br label %134

124:                                              ; preds = %105
  %125 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %126 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %125, i32 0, i32 2
  %127 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %126, align 8
  store %struct.rvt_k_cq_wc* %127, %struct.rvt_k_cq_wc** %18, align 8
  %128 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %18, align 8
  %129 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %9, align 4
  %131 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %18, align 8
  %132 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %124, %111
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %137 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %135, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %143 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %141, %134
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %149 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %147, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %155 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %153, %146
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %164 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %10, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %11, align 4
  br label %176

172:                                              ; preds = %158
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %172, %162
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp slt i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %12, align 4
  br label %332

186:                                              ; preds = %176
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %234, %186
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %237

191:                                              ; preds = %187
  %192 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %193 = icmp ne %struct.rvt_cq_wc* %192, null
  br i1 %193, label %194, label %208

194:                                              ; preds = %191
  %195 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %16, align 8
  %196 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %203 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %201, i32* %207, align 4
  br label %222

208:                                              ; preds = %191
  %209 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %18, align 8
  %210 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %17, align 8
  %217 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %215, i32* %221, align 4
  br label %222

222:                                              ; preds = %208, %194
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %225 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %223, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  store i32 0, i32* %10, align 4
  br label %233

230:                                              ; preds = %222
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %230, %229
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %187

237:                                              ; preds = %187
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %240 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  %242 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %243 = icmp ne %struct.rvt_cq_wc* %242, null
  br i1 %243, label %244, label %258

244:                                              ; preds = %237
  %245 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %246 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @RDMA_WRITE_UAPI_ATOMIC(i32 %247, i32 %248)
  %250 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %251 = getelementptr inbounds %struct.rvt_cq_wc, %struct.rvt_cq_wc* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @RDMA_WRITE_UAPI_ATOMIC(i32 %252, i32 0)
  %254 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %255 = bitcast %struct.rvt_cq_wc* %254 to %struct.rvt_k_cq_wc*
  %256 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %257 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %256, i32 0, i32 3
  store %struct.rvt_k_cq_wc* %255, %struct.rvt_k_cq_wc** %257, align 8
  br label %267

258:                                              ; preds = %237
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %17, align 8
  %261 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 8
  %262 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %17, align 8
  %263 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %262, i32 0, i32 1
  store i32 0, i32* %263, align 4
  %264 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %17, align 8
  %265 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %266 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %265, i32 0, i32 2
  store %struct.rvt_k_cq_wc* %264, %struct.rvt_k_cq_wc** %266, align 8
  br label %267

267:                                              ; preds = %258, %244
  %268 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %269 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %268, i32 0, i32 0
  %270 = call i32 @spin_unlock_irq(i32* %269)
  %271 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %272 = icmp ne %struct.rvt_cq_wc* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %16, align 8
  %275 = bitcast %struct.rvt_cq_wc* %274 to %struct.rvt_k_cq_wc*
  %276 = call i32 @vfree(%struct.rvt_k_cq_wc* %275)
  br label %280

277:                                              ; preds = %267
  %278 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %18, align 8
  %279 = call i32 @vfree(%struct.rvt_k_cq_wc* %278)
  br label %280

280:                                              ; preds = %277, %273
  %281 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %282 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %281, i32 0, i32 1
  %283 = load %struct.rvt_mmap_info*, %struct.rvt_mmap_info** %282, align 8
  %284 = icmp ne %struct.rvt_mmap_info* %283, null
  br i1 %284, label %285, label %331

285:                                              ; preds = %280
  %286 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %287 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %286, i32 0, i32 1
  %288 = load %struct.rvt_mmap_info*, %struct.rvt_mmap_info** %287, align 8
  store %struct.rvt_mmap_info* %288, %struct.rvt_mmap_info** %20, align 8
  %289 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %14, align 8
  %290 = load %struct.rvt_mmap_info*, %struct.rvt_mmap_info** %20, align 8
  %291 = load i32, i32* %13, align 4
  %292 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %293 = bitcast %struct.rvt_cq_wc* %292 to %struct.rvt_k_cq_wc*
  %294 = call i32 @rvt_update_mmap_info(%struct.rvt_dev_info* %289, %struct.rvt_mmap_info* %290, i32 %291, %struct.rvt_k_cq_wc* %293)
  %295 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %296 = icmp ne %struct.ib_udata* %295, null
  br i1 %296, label %297, label %313

297:                                              ; preds = %285
  %298 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %299 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = icmp uge i64 %301, 4
  br i1 %302, label %303, label %313

303:                                              ; preds = %297
  %304 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %305 = load %struct.rvt_mmap_info*, %struct.rvt_mmap_info** %20, align 8
  %306 = getelementptr inbounds %struct.rvt_mmap_info, %struct.rvt_mmap_info* %305, i32 0, i32 1
  %307 = call i32 @ib_copy_to_udata(%struct.ib_udata* %304, i32* %306, i32 4)
  store i32 %307, i32* %12, align 4
  %308 = load i32, i32* %12, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = load i32, i32* %12, align 4
  store i32 %311, i32* %4, align 4
  br label %343

312:                                              ; preds = %303
  br label %313

313:                                              ; preds = %312, %297, %285
  %314 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %14, align 8
  %315 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %314, i32 0, i32 0
  %316 = call i32 @spin_lock_irq(i32* %315)
  %317 = load %struct.rvt_mmap_info*, %struct.rvt_mmap_info** %20, align 8
  %318 = getelementptr inbounds %struct.rvt_mmap_info, %struct.rvt_mmap_info* %317, i32 0, i32 0
  %319 = call i64 @list_empty(i32* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %313
  %322 = load %struct.rvt_mmap_info*, %struct.rvt_mmap_info** %20, align 8
  %323 = getelementptr inbounds %struct.rvt_mmap_info, %struct.rvt_mmap_info* %322, i32 0, i32 0
  %324 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %14, align 8
  %325 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %324, i32 0, i32 1
  %326 = call i32 @list_add(i32* %323, i32* %325)
  br label %327

327:                                              ; preds = %321, %313
  %328 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %14, align 8
  %329 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %328, i32 0, i32 0
  %330 = call i32 @spin_unlock_irq(i32* %329)
  br label %331

331:                                              ; preds = %327, %280
  store i32 0, i32* %4, align 4
  br label %343

332:                                              ; preds = %183
  %333 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %334 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %333, i32 0, i32 0
  %335 = call i32 @spin_unlock_irq(i32* %334)
  br label %336

336:                                              ; preds = %332, %103
  %337 = load %struct.rvt_cq_wc*, %struct.rvt_cq_wc** %15, align 8
  %338 = bitcast %struct.rvt_cq_wc* %337 to %struct.rvt_k_cq_wc*
  %339 = call i32 @vfree(%struct.rvt_k_cq_wc* %338)
  %340 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %17, align 8
  %341 = call i32 @vfree(%struct.rvt_k_cq_wc* %340)
  %342 = load i32, i32* %12, align 4
  store i32 %342, i32* %4, align 4
  br label %343

343:                                              ; preds = %336, %331, %310, %85, %63, %36
  %344 = load i32, i32* %4, align 4
  ret i32 %344
}

declare dso_local %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq*) #1

declare dso_local %struct.rvt_k_cq_wc* @vmalloc_user(i32) #1

declare dso_local %struct.rvt_k_cq_wc* @vzalloc_node(i32, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @RDMA_READ_UAPI_ATOMIC(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RDMA_WRITE_UAPI_ATOMIC(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @vfree(%struct.rvt_k_cq_wc*) #1

declare dso_local i32 @rvt_update_mmap_info(%struct.rvt_dev_info*, %struct.rvt_mmap_info*, i32, %struct.rvt_k_cq_wc*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
