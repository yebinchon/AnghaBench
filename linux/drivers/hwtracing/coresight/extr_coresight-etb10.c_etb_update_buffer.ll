; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_update_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_update_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.perf_output_handle = type { i64, i64 }
%struct.cs_buffers = type { i32, i64, i32, i64, i32** }
%struct.etb_drvdata = type { i32, i32, i64 }

@ETB_FRAME_SIZE_WORDS = common dso_local global i32 0, align 4
@ETB_RAM_READ_POINTER = common dso_local global i64 0, align 8
@ETB_RAM_WRITE_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"write_ptr: %lu not aligned to formatter frame size\0A\00", align 1
@ETB_STATUS_REG = common dso_local global i64 0, align 8
@ETB_STATUS_RAM_FULL = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@barrier_pkt = common dso_local global i32* null, align 8
@ETB_RAM_READ_DATA_REG = common dso_local global i64 0, align 8
@CORESIGHT_BARRIER_PKT_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.coresight_device*, %struct.perf_output_handle*, i8*)* @etb_update_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etb_update_buffer(%struct.coresight_device* %0, %struct.perf_output_handle* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca %struct.perf_output_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.cs_buffers*, align 8
  %22 = alloca %struct.etb_drvdata*, align 8
  %23 = alloca i32, align 4
  store %struct.coresight_device* %0, %struct.coresight_device** %5, align 8
  store %struct.perf_output_handle* %1, %struct.perf_output_handle** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %19, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.cs_buffers*
  store %struct.cs_buffers* %25, %struct.cs_buffers** %21, align 8
  %26 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %27 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.etb_drvdata* @dev_get_drvdata(i32 %29)
  store %struct.etb_drvdata* %30, %struct.etb_drvdata** %22, align 8
  %31 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %32 = icmp ne %struct.cs_buffers* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %274

34:                                               ; preds = %3
  %35 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %36 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %41 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %40, i32 0, i32 1
  %42 = load i64, i64* %20, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %45 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @atomic_read(i32 %46)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %268

50:                                               ; preds = %34
  %51 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %52 = call i32 @__etb_disable_hw(%struct.etb_drvdata* %51)
  %53 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %54 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @CS_UNLOCK(i64 %55)
  %57 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %58 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl_relaxed(i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %64 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ETB_RAM_WRITE_POINTER, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl_relaxed(i64 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %71 = srem i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %50
  %74 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %75 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %74, i32 0, i32 0
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = call i32 @dev_err(%struct.TYPE_2__* %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %80 = sub nsw i32 %79, 1
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %14, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %14, align 4
  store i32 1, i32* %8, align 4
  br label %84

84:                                               ; preds = %73, %50
  %85 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %86 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ETB_STATUS_REG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl_relaxed(i64 %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @ETB_STATUS_RAM_FULL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %19, align 8
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %13, align 4
  br label %110

99:                                               ; preds = %84
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %103 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @CIRC_CNT(i32 %100, i32 %101, i32 %104)
  store i64 %105, i64* %19, align 8
  %106 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %19, align 8
  %109 = mul i64 %108, %107
  store i64 %109, i64* %19, align 8
  br label %110

110:                                              ; preds = %99, %95
  %111 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %112 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %156, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %19, align 8
  %117 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %118 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ugt i64 %116, %119
  br i1 %120, label %121, label %156

121:                                              ; preds = %115
  %122 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %123 = sub nsw i32 %122, 1
  %124 = xor i32 %123, -1
  store i32 %124, i32* %23, align 4
  %125 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %126 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %23, align 4
  %129 = sext i32 %128 to i64
  %130 = and i64 %127, %129
  store i64 %130, i64* %19, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %133 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %131, %134
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %19, align 8
  %138 = load i32, i32* @ETB_FRAME_SIZE_WORDS, align 4
  %139 = sext i32 %138 to i64
  %140 = udiv i64 %137, %139
  %141 = sub i64 %136, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %145 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = icmp sgt i32 %143, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %121
  %150 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %151 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %149, %121
  store i32 1, i32* %8, align 4
  br label %156

156:                                              ; preds = %155, %115, %110
  %157 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %158 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %166 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %167 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %161, %156
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %171 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel_relaxed(i32 %169, i64 %174)
  %176 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %177 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %10, align 4
  %179 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %180 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %18, align 8
  %182 = load i32*, i32** @barrier_pkt, align 8
  store i32* %182, i32** %12, align 8
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %235, %168
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %19, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %238

188:                                              ; preds = %183
  %189 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %190 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %189, i32 0, i32 4
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %18, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %11, align 8
  %198 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %199 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @ETB_RAM_READ_DATA_REG, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @readl_relaxed(i64 %202)
  store i32 %203, i32* %17, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %188
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @CORESIGHT_BARRIER_PKT_SIZE, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %17, align 4
  %213 = load i32*, i32** %12, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %12, align 8
  br label %215

215:                                              ; preds = %210, %206, %188
  %216 = load i32, i32* %17, align 4
  %217 = load i32*, i32** %11, align 8
  store i32 %216, i32* %217, align 4
  %218 = load i32*, i32** %11, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 4
  store i32* %219, i32** %11, align 8
  %220 = load i64, i64* %18, align 8
  %221 = add i64 %220, 4
  store i64 %221, i64* %18, align 8
  %222 = load i64, i64* %18, align 8
  %223 = load i64, i64* @PAGE_SIZE, align 8
  %224 = icmp uge i64 %222, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %215
  store i64 0, i64* %18, align 8
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  %228 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %229 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sub nsw i32 %230, 1
  %232 = load i32, i32* %10, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %10, align 4
  br label %234

234:                                              ; preds = %225, %215
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 4
  store i32 %237, i32* %9, align 4
  br label %183

238:                                              ; preds = %183
  %239 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %240 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @ETB_RAM_READ_POINTER, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writel_relaxed(i32 0, i64 %243)
  %245 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %246 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @ETB_RAM_WRITE_POINTER, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @writel_relaxed(i32 0, i64 %249)
  %251 = load %struct.cs_buffers*, %struct.cs_buffers** %21, align 8
  %252 = getelementptr inbounds %struct.cs_buffers, %struct.cs_buffers* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %238
  %256 = load i64, i64* %19, align 8
  %257 = load %struct.perf_output_handle*, %struct.perf_output_handle** %6, align 8
  %258 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %259, %256
  store i64 %260, i64* %258, align 8
  br label %261

261:                                              ; preds = %255, %238
  %262 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %263 = call i32 @__etb_enable_hw(%struct.etb_drvdata* %262)
  %264 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %265 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @CS_LOCK(i64 %266)
  br label %268

268:                                              ; preds = %261, %49
  %269 = load %struct.etb_drvdata*, %struct.etb_drvdata** %22, align 8
  %270 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %269, i32 0, i32 1
  %271 = load i64, i64* %20, align 8
  %272 = call i32 @spin_unlock_irqrestore(i32* %270, i64 %271)
  %273 = load i64, i64* %19, align 8
  store i64 %273, i64* %4, align 8
  br label %274

274:                                              ; preds = %268, %33
  %275 = load i64, i64* %4, align 8
  ret i64 %275
}

declare dso_local %struct.etb_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32) #1

declare dso_local i32 @__etb_disable_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i64) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @perf_aux_output_flag(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @__etb_enable_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @CS_LOCK(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
