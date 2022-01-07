; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_ci_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_ci_mc_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.mc_firmware_header_v1_0 = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@bonaire_io_mc_regs = common dso_local global i32 0, align 4
@BONAIRE_IO_MC_REGS_SIZE = common dso_local global i32 0, align 4
@hawaii_io_mc_regs = common dso_local global i32 0, align 4
@HAWAII_IO_MC_REGS_SIZE = common dso_local global i32 0, align 4
@MC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@RUN_MASK = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@MC_SEQ_MISC0 = common dso_local global i32 0, align 4
@MC_SEQ_SUP_PGM = common dso_local global i32 0, align 4
@MC_SEQ_TRAIN_WAKEUP_CNTL = common dso_local global i32 0, align 4
@TRAIN_DONE_D0 = common dso_local global i32 0, align 4
@TRAIN_DONE_D1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ci_mc_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mc_firmware_header_v1_0*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %248

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %21
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.mc_firmware_header_v1_0*
  store %struct.mc_firmware_header_v1_0* %32, %struct.mc_firmware_header_v1_0** %13, align 8
  %33 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %13, align 8
  %34 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %33, i32 0, i32 0
  %35 = call i32 @radeon_ucode_print_mc_hdr(%struct.TYPE_6__* %34)
  %36 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %13, align 8
  %37 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = sdiv i32 %39, 8
  store i32 %40, i32* %11, align 4
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %13, align 8
  %47 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %45, %50
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %9, align 8
  %53 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %13, align 8
  %54 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = sdiv i32 %57, 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %13, align 8
  %65 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %63, %69
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %5, align 8
  br label %96

72:                                               ; preds = %21
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %77, 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %86 [
    i32 129, label %82
    i32 128, label %84
  ]

82:                                               ; preds = %72
  store i32* @bonaire_io_mc_regs, i32** %8, align 8
  %83 = load i32, i32* @BONAIRE_IO_MC_REGS_SIZE, align 4
  store i32 %83, i32* %11, align 4
  br label %89

84:                                               ; preds = %72
  store i32* @hawaii_io_mc_regs, i32** %8, align 8
  %85 = load i32, i32* @HAWAII_IO_MC_REGS_SIZE, align 4
  store i32 %85, i32* %11, align 4
  br label %89

86:                                               ; preds = %72
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %248

89:                                               ; preds = %84, %82
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %89, %26
  %97 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %98 = call i32 @RREG32(i32 %97)
  %99 = load i32, i32* @RUN_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %247

103:                                              ; preds = %96
  %104 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %105 = call i32 @WREG32(i32 %104, i32 8)
  %106 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %107 = call i32 @WREG32(i32 %106, i32 16)
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %149, %103
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %152

112:                                              ; preds = %108
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %9, align 8
  %121 = ptrtoint i32* %119 to i32
  %122 = call i32 @le32_to_cpup(i32 %121)
  %123 = call i32 @WREG32(i32 %118, i32 %122)
  %124 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %9, align 8
  %127 = ptrtoint i32* %125 to i32
  %128 = call i32 @le32_to_cpup(i32 %127)
  %129 = call i32 @WREG32(i32 %124, i32 %128)
  br label %148

130:                                              ; preds = %112
  %131 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %10, align 4
  %134 = shl i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @WREG32(i32 %131, i32 %137)
  %139 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %10, align 4
  %142 = shl i32 %141, 1
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @WREG32(i32 %139, i32 %146)
  br label %148

148:                                              ; preds = %130, %117
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %108

152:                                              ; preds = %108
  %153 = load i32, i32* @MC_SEQ_MISC0, align 4
  %154 = call i32 @RREG32(i32 %153)
  store i32 %154, i32* %7, align 4
  %155 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 3
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 26185
  br i1 %160, label %161, label %174

161:                                              ; preds = %152
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, 65280
  %164 = icmp eq i32 %163, 22016
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %167 = call i32 @WREG32(i32 %166, i32 5)
  %168 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %169 = call i32 @WREG32(i32 %168, i32 35)
  %170 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %171 = call i32 @WREG32(i32 %170, i32 9)
  %172 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %173 = call i32 @WREG32(i32 %172, i32 496)
  br label %174

174:                                              ; preds = %165, %161, %152
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %199, %174
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %202

179:                                              ; preds = %175
  %180 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %181 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load i32, i32* @MC_SEQ_SUP_PGM, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %5, align 8
  %188 = ptrtoint i32* %186 to i32
  %189 = call i32 @le32_to_cpup(i32 %188)
  %190 = call i32 @WREG32(i32 %185, i32 %189)
  br label %198

191:                                              ; preds = %179
  %192 = load i32, i32* @MC_SEQ_SUP_PGM, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %4, align 8
  %195 = ptrtoint i32* %193 to i32
  %196 = call i32 @be32_to_cpup(i32 %195)
  %197 = call i32 @WREG32(i32 %192, i32 %196)
  br label %198

198:                                              ; preds = %191, %184
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %175

202:                                              ; preds = %175
  %203 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %204 = call i32 @WREG32(i32 %203, i32 8)
  %205 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %206 = call i32 @WREG32(i32 %205, i32 4)
  %207 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %208 = call i32 @WREG32(i32 %207, i32 1)
  store i32 0, i32* %10, align 4
  br label %209

209:                                              ; preds = %224, %202
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %209
  %216 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %217 = call i32 @RREG32(i32 %216)
  %218 = load i32, i32* @TRAIN_DONE_D0, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %227

222:                                              ; preds = %215
  %223 = call i32 @udelay(i32 1)
  br label %224

224:                                              ; preds = %222
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %209

227:                                              ; preds = %221, %209
  store i32 0, i32* %10, align 4
  br label %228

228:                                              ; preds = %243, %227
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %228
  %235 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %236 = call i32 @RREG32(i32 %235)
  %237 = load i32, i32* @TRAIN_DONE_D1, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %246

241:                                              ; preds = %234
  %242 = call i32 @udelay(i32 1)
  br label %243

243:                                              ; preds = %241
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  br label %228

246:                                              ; preds = %240, %228
  br label %247

247:                                              ; preds = %246, %96
  store i32 0, i32* %2, align 4
  br label %248

248:                                              ; preds = %247, %86, %18
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @radeon_ucode_print_mc_hdr(%struct.TYPE_6__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
