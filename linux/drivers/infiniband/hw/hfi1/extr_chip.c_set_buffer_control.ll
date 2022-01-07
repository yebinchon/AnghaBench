; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_buffer_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_buffer_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, i64, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.buffer_control = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@OPA_MAX_VLS = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL1_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL2_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL3_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL4_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL5_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL6_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL7_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS_VL15_RETURN_CREDIT_STATUS_SMASK = common dso_local global i32 0, align 4
@TXE_NUM_DATA_VL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@NUM_USABLE_VLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_buffer_control(%struct.hfi1_pportdata* %0, %struct.buffer_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca %struct.buffer_control*, align 8
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_control, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store %struct.buffer_control* %1, %struct.buffer_control** %5, align 8
  %25 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %26 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %25, i32 0, i32 3
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %26, align 8
  store %struct.hfi1_devdata* %27, %struct.hfi1_devdata** %6, align 8
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* @OPA_MAX_VLS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %18, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %32 = load i32, i32* @OPA_MAX_VLS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %20, align 8
  store i64 0, i64* %22, align 8
  %35 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK, align 4
  %36 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL1_RETURN_CREDIT_STATUS_SMASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL2_RETURN_CREDIT_STATUS_SMASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL3_RETURN_CREDIT_STATUS_SMASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL4_RETURN_CREDIT_STATUS_SMASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL5_RETURN_CREDIT_STATUS_SMASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL6_RETURN_CREDIT_STATUS_SMASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL7_RETURN_CREDIT_STATUS_SMASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL15_RETURN_CREDIT_STATUS_SMASK, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %23, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %114, %2
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @OPA_MAX_VLS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 15
  br i1 %62, label %63, label %75

63:                                               ; preds = %60, %56
  %64 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %65 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @be16_to_cpu(i64 %71)
  %73 = load i64, i64* %22, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %22, align 8
  br label %114

75:                                               ; preds = %60
  %76 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %79 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @be16_to_cpu(i64 %85)
  %87 = call i32 @nonzero_msg(%struct.hfi1_devdata* %76, i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %86)
  %88 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %91 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @be16_to_cpu(i64 %97)
  %99 = call i32 @nonzero_msg(%struct.hfi1_devdata* %88, i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  %100 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %101 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %108 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %75, %63
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %52

117:                                              ; preds = %52
  %118 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %119 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @be16_to_cpu(i64 %120)
  %122 = load i64, i64* %22, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %22, align 8
  %124 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %125 = call i32 @get_buffer_control(%struct.hfi1_devdata* %124, %struct.buffer_control* %17, i64* %21)
  %126 = mul nuw i64 4, %29
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memset(i32* %31, i32 0, i32 %127)
  %129 = mul nuw i64 4, %33
  %130 = trunc i64 %129 to i32
  %131 = call i32 @memset(i32* %34, i32 0, i32 %130)
  %132 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS_VL0_RETURN_CREDIT_STATUS_SMASK, align 4
  store i32 %132, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %221, %117
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 16
  br i1 %135, label %136, label %226

136:                                              ; preds = %133
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %141, 15
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  br label %221

144:                                              ; preds = %140, %136
  %145 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %146 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %152, %159
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %144
  store i32 1, i32* %16, align 4
  br label %165

165:                                              ; preds = %164, %144
  %166 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %167 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %173, %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %165
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %182, %165
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %31, i64 %187
  store i32 1, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %7, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %185, %182
  %195 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %196 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %195, i32 0, i32 1
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @be16_to_cpu(i64 %202)
  %204 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 1
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @be16_to_cpu(i64 %210)
  %212 = icmp slt i64 %203, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %194
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %34, i64 %215
  store i32 1, i32* %216, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %8, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %213, %194
  br label %221

221:                                              ; preds = %220, %143
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %9, align 4
  %225 = shl i32 %224, 1
  store i32 %225, i32* %9, align 4
  br label %133

226:                                              ; preds = %133
  %227 = load i64, i64* %22, align 8
  %228 = load i64, i64* %21, align 8
  %229 = icmp sgt i64 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %232 = load i64, i64* %22, align 8
  %233 = call i32 @set_global_limit(%struct.hfi1_devdata* %231, i64 %232)
  br label %234

234:                                              ; preds = %230, %226
  store i32 0, i32* %12, align 4
  %235 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %236 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i64 @be16_to_cpu(i64 %237)
  %239 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @be16_to_cpu(i64 %240)
  %242 = icmp slt i64 %238, %241
  br i1 %242, label %250, label %243

243:                                              ; preds = %234
  %244 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %245 = call i64 @is_ax(%struct.hfi1_devdata* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247, %234
  %251 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %252 = call i32 @set_global_shared(%struct.hfi1_devdata* %251, i64 0)
  %253 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 0
  store i64 0, i64* %253, align 8
  store i32 1, i32* %12, align 4
  br label %254

254:                                              ; preds = %250, %247, %243
  store i32 0, i32* %11, align 4
  br label %255

255:                                              ; preds = %283, %254
  %256 = load i32, i32* %11, align 4
  %257 = icmp slt i32 %256, 16
  br i1 %257, label %258, label %286

258:                                              ; preds = %255
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = load i32, i32* %11, align 4
  %264 = icmp eq i32 %263, 15
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  br label %283

266:                                              ; preds = %262, %258
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %31, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %266
  %273 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @set_vl_shared(%struct.hfi1_devdata* %273, i32 %274, i64 0)
  %276 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 1
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  store i64 0, i64* %281, align 8
  br label %282

282:                                              ; preds = %272, %266
  br label %283

283:                                              ; preds = %282, %265
  %284 = load i32, i32* %11, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %11, align 4
  br label %255

286:                                              ; preds = %255
  %287 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %288 = load i32, i32* %12, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = load i32, i32* %23, align 4
  br label %294

292:                                              ; preds = %286
  %293 = load i32, i32* %7, align 4
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi i32 [ %291, %290 ], [ %293, %292 ]
  %296 = call i32 @wait_for_vl_status_clear(%struct.hfi1_devdata* %287, i32 %295, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %297 = load i32, i32* %10, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %400

299:                                              ; preds = %294
  store i32 0, i32* %11, align 4
  br label %300

300:                                              ; preds = %345, %299
  %301 = load i32, i32* %11, align 4
  %302 = icmp slt i32 %301, 16
  br i1 %302, label %303, label %348

303:                                              ; preds = %300
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* %11, align 4
  %309 = icmp eq i32 %308, 15
  br i1 %309, label %311, label %310

310:                                              ; preds = %307
  br label %345

311:                                              ; preds = %307, %303
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %34, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %344

317:                                              ; preds = %311
  %318 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %319 = load i32, i32* %11, align 4
  %320 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %321 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %320, i32 0, i32 1
  %322 = load %struct.TYPE_2__*, %struct.TYPE_2__** %321, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = call i64 @be16_to_cpu(i64 %327)
  %329 = call i32 @set_vl_dedicated(%struct.hfi1_devdata* %318, i32 %319, i64 %328)
  %330 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %331 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %330, i32 0, i32 1
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** %331, align 8
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 1
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 0
  store i64 %337, i64* %343, align 8
  br label %344

344:                                              ; preds = %317, %311
  br label %345

345:                                              ; preds = %344, %310
  %346 = load i32, i32* %11, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %11, align 4
  br label %300

348:                                              ; preds = %300
  %349 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %350 = load i32, i32* %8, align 4
  %351 = call i32 @wait_for_vl_status_clear(%struct.hfi1_devdata* %349, i32 %350, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %352

352:                                              ; preds = %396, %348
  %353 = load i32, i32* %11, align 4
  %354 = icmp slt i32 %353, 16
  br i1 %354, label %355, label %399

355:                                              ; preds = %352
  %356 = load i32, i32* %11, align 4
  %357 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %363, label %359

359:                                              ; preds = %355
  %360 = load i32, i32* %11, align 4
  %361 = icmp eq i32 %360, 15
  br i1 %361, label %363, label %362

362:                                              ; preds = %359
  br label %396

363:                                              ; preds = %359, %355
  %364 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %365 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %364, i32 0, i32 1
  %366 = load %struct.TYPE_2__*, %struct.TYPE_2__** %365, align 8
  %367 = load i32, i32* %11, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = call i64 @be16_to_cpu(i64 %371)
  %373 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 1
  %374 = load %struct.TYPE_2__*, %struct.TYPE_2__** %373, align 8
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = call i64 @be16_to_cpu(i64 %379)
  %381 = icmp sgt i64 %372, %380
  br i1 %381, label %382, label %395

382:                                              ; preds = %363
  %383 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %384 = load i32, i32* %11, align 4
  %385 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %386 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %385, i32 0, i32 1
  %387 = load %struct.TYPE_2__*, %struct.TYPE_2__** %386, align 8
  %388 = load i32, i32* %11, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = call i64 @be16_to_cpu(i64 %392)
  %394 = call i32 @set_vl_dedicated(%struct.hfi1_devdata* %383, i32 %384, i64 %393)
  br label %395

395:                                              ; preds = %382, %363
  br label %396

396:                                              ; preds = %395, %362
  %397 = load i32, i32* %11, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %11, align 4
  br label %352

399:                                              ; preds = %352
  br label %400

400:                                              ; preds = %399, %294
  store i32 0, i32* %11, align 4
  br label %401

401:                                              ; preds = %445, %400
  %402 = load i32, i32* %11, align 4
  %403 = icmp slt i32 %402, 16
  br i1 %403, label %404, label %448

404:                                              ; preds = %401
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %412, label %408

408:                                              ; preds = %404
  %409 = load i32, i32* %11, align 4
  %410 = icmp eq i32 %409, 15
  br i1 %410, label %412, label %411

411:                                              ; preds = %408
  br label %445

412:                                              ; preds = %408, %404
  %413 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %414 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %413, i32 0, i32 1
  %415 = load %struct.TYPE_2__*, %struct.TYPE_2__** %414, align 8
  %416 = load i32, i32* %11, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = call i64 @be16_to_cpu(i64 %420)
  %422 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 1
  %423 = load %struct.TYPE_2__*, %struct.TYPE_2__** %422, align 8
  %424 = load i32, i32* %11, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = call i64 @be16_to_cpu(i64 %428)
  %430 = icmp sgt i64 %421, %429
  br i1 %430, label %431, label %444

431:                                              ; preds = %412
  %432 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %433 = load i32, i32* %11, align 4
  %434 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %435 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %434, i32 0, i32 1
  %436 = load %struct.TYPE_2__*, %struct.TYPE_2__** %435, align 8
  %437 = load i32, i32* %11, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = call i64 @be16_to_cpu(i64 %441)
  %443 = call i32 @set_vl_shared(%struct.hfi1_devdata* %432, i32 %433, i64 %442)
  br label %444

444:                                              ; preds = %431, %412
  br label %445

445:                                              ; preds = %444, %411
  %446 = load i32, i32* %11, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %11, align 4
  br label %401

448:                                              ; preds = %401
  %449 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %450 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = call i64 @be16_to_cpu(i64 %451)
  %453 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %17, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = call i64 @be16_to_cpu(i64 %454)
  %456 = icmp sgt i64 %452, %455
  br i1 %456, label %457, label %464

457:                                              ; preds = %448
  %458 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %459 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %460 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = call i64 @be16_to_cpu(i64 %461)
  %463 = call i32 @set_global_shared(%struct.hfi1_devdata* %458, i64 %462)
  br label %464

464:                                              ; preds = %457, %448
  %465 = load i64, i64* %22, align 8
  %466 = load i64, i64* %21, align 8
  %467 = icmp slt i64 %465, %466
  br i1 %467, label %468, label %472

468:                                              ; preds = %464
  %469 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %470 = load i64, i64* %22, align 8
  %471 = call i32 @set_global_limit(%struct.hfi1_devdata* %469, i64 %470)
  br label %472

472:                                              ; preds = %468, %464
  %473 = load i32, i32* %10, align 4
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %558

475:                                              ; preds = %472
  store i32 0, i32* %11, align 4
  br label %476

476:                                              ; preds = %506, %475
  %477 = load i32, i32* %11, align 4
  %478 = load i32, i32* @TXE_NUM_DATA_VL, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %509

480:                                              ; preds = %476
  %481 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %482 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %481, i32 0, i32 1
  %483 = load %struct.TYPE_2__*, %struct.TYPE_2__** %482, align 8
  %484 = load i32, i32* %11, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = call i64 @be16_to_cpu(i64 %488)
  %490 = icmp sgt i64 %489, 0
  br i1 %490, label %502, label %491

491:                                              ; preds = %480
  %492 = load %struct.buffer_control*, %struct.buffer_control** %5, align 8
  %493 = getelementptr inbounds %struct.buffer_control, %struct.buffer_control* %492, i32 0, i32 1
  %494 = load %struct.TYPE_2__*, %struct.TYPE_2__** %493, align 8
  %495 = load i32, i32* %11, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %494, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = call i64 @be16_to_cpu(i64 %499)
  %501 = icmp sgt i64 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %491, %480
  %503 = load i32, i32* %14, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %14, align 4
  br label %505

505:                                              ; preds = %502, %491
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %11, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %11, align 4
  br label %476

509:                                              ; preds = %476
  %510 = load i32, i32* %14, align 4
  %511 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %512 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %511, i32 0, i32 0
  store i32 %510, i32* %512, align 8
  %513 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %514 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %515 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %514, i32 0, i32 2
  %516 = load i64, i64* %515, align 8
  %517 = sub nsw i64 %516, 1
  %518 = load i32, i32* %14, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %524

520:                                              ; preds = %509
  %521 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %522 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  br label %528

524:                                              ; preds = %509
  %525 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %526 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  br label %528

528:                                              ; preds = %524, %520
  %529 = phi i32 [ %523, %520 ], [ %527, %524 ]
  %530 = call i32 @sdma_map_init(%struct.hfi1_devdata* %513, i64 %517, i32 %529, i32* null)
  store i32 %530, i32* %15, align 4
  %531 = load i32, i32* %15, align 4
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %552

533:                                              ; preds = %528
  %534 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %535 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %536 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = sub nsw i64 %537, 1
  %539 = load i32, i32* %14, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %545

541:                                              ; preds = %533
  %542 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %543 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  br label %549

545:                                              ; preds = %533
  %546 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %547 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  br label %549

549:                                              ; preds = %545, %541
  %550 = phi i32 [ %544, %541 ], [ %548, %545 ]
  %551 = call i32 @pio_map_init(%struct.hfi1_devdata* %534, i64 %538, i32 %550, i32* null)
  store i32 %551, i32* %15, align 4
  br label %552

552:                                              ; preds = %549, %528
  %553 = load i32, i32* %15, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %557

555:                                              ; preds = %552
  %556 = load i32, i32* %15, align 4
  store i32 %556, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %559

557:                                              ; preds = %552
  br label %558

558:                                              ; preds = %557, %472
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %559

559:                                              ; preds = %558, %555
  %560 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %560)
  %561 = load i32, i32* %3, align 4
  ret i32 %561
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @be16_to_cpu(i64) #2

declare dso_local i32 @nonzero_msg(%struct.hfi1_devdata*, i32, i8*, i64) #2

declare dso_local i32 @get_buffer_control(%struct.hfi1_devdata*, %struct.buffer_control*, i64*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @set_global_limit(%struct.hfi1_devdata*, i64) #2

declare dso_local i64 @is_ax(%struct.hfi1_devdata*) #2

declare dso_local i32 @set_global_shared(%struct.hfi1_devdata*, i64) #2

declare dso_local i32 @set_vl_shared(%struct.hfi1_devdata*, i32, i64) #2

declare dso_local i32 @wait_for_vl_status_clear(%struct.hfi1_devdata*, i32, i8*) #2

declare dso_local i32 @set_vl_dedicated(%struct.hfi1_devdata*, i32, i64) #2

declare dso_local i32 @sdma_map_init(%struct.hfi1_devdata*, i64, i32, i32*) #2

declare dso_local i32 @pio_map_init(%struct.hfi1_devdata*, i64, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
