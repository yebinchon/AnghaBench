; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_compute_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_cp_compute_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CP_MEC_ME1_UCODE_ADDR = common dso_local global i32 0, align 4
@CP_MEC_ME1_UCODE_DATA = common dso_local global i32 0, align 4
@CHIP_KAVERI = common dso_local global i64 0, align 8
@CP_MEC_ME2_UCODE_ADDR = common dso_local global i32 0, align 4
@CP_MEC_ME2_UCODE_DATA = common dso_local global i32 0, align 4
@CIK_MEC_UCODE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_cp_compute_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_cp_compute_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %9 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %192

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @cik_cp_compute_enable(%struct.radeon_device* %18, i32 0)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %133

24:                                               ; preds = %17
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %30, %struct.gfx_firmware_header_v1_0** %5, align 8
  %31 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %32 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %31, i32 0, i32 0
  %33 = call i32 @radeon_ucode_print_gfx_hdr(%struct.TYPE_6__* %32)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %40 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %38, %44
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %6, align 8
  %47 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %48 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = sdiv i32 %51, 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @CP_MEC_ME1_UCODE_ADDR, align 4
  %54 = call i32 @WREG32(i32 %53, i32 0)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %66, %24
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* @CP_MEC_ME1_UCODE_DATA, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %6, align 8
  %63 = ptrtoint i32* %61 to i32
  %64 = call i32 @le32_to_cpup(i32 %63)
  %65 = call i32 @WREG32(i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load i32, i32* @CP_MEC_ME1_UCODE_ADDR, align 4
  %71 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %72 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = call i32 @WREG32(i32 %70, i32 %75)
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CHIP_KAVERI, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %69
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %88, %struct.gfx_firmware_header_v1_0** %8, align 8
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %95 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %93, %99
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %6, align 8
  %102 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %103 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = sdiv i32 %106, 4
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @CP_MEC_ME2_UCODE_ADDR, align 4
  %109 = call i32 @WREG32(i32 %108, i32 0)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %121, %82
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i32, i32* @CP_MEC_ME2_UCODE_DATA, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %6, align 8
  %118 = ptrtoint i32* %116 to i32
  %119 = call i32 @le32_to_cpup(i32 %118)
  %120 = call i32 @WREG32(i32 %115, i32 %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %110

124:                                              ; preds = %110
  %125 = load i32, i32* @CP_MEC_ME2_UCODE_ADDR, align 4
  %126 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %127 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = call i32 @WREG32(i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %124, %69
  br label %191

133:                                              ; preds = %17
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %9, align 8
  %140 = load i32, i32* @CP_MEC_ME1_UCODE_ADDR, align 4
  %141 = call i32 @WREG32(i32 %140, i32 0)
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %153, %133
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @CIK_MEC_UCODE_SIZE, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load i32, i32* @CP_MEC_ME1_UCODE_DATA, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %9, align 8
  %150 = ptrtoint i32* %148 to i32
  %151 = call i32 @be32_to_cpup(i32 %150)
  %152 = call i32 @WREG32(i32 %147, i32 %151)
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %142

156:                                              ; preds = %142
  %157 = load i32, i32* @CP_MEC_ME1_UCODE_ADDR, align 4
  %158 = call i32 @WREG32(i32 %157, i32 0)
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @CHIP_KAVERI, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %156
  %165 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  store i32* %170, i32** %9, align 8
  %171 = load i32, i32* @CP_MEC_ME2_UCODE_ADDR, align 4
  %172 = call i32 @WREG32(i32 %171, i32 0)
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %184, %164
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @CIK_MEC_UCODE_SIZE, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load i32, i32* @CP_MEC_ME2_UCODE_DATA, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %9, align 8
  %181 = ptrtoint i32* %179 to i32
  %182 = call i32 @be32_to_cpup(i32 %181)
  %183 = call i32 @WREG32(i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %173

187:                                              ; preds = %173
  %188 = load i32, i32* @CP_MEC_ME2_UCODE_ADDR, align 4
  %189 = call i32 @WREG32(i32 %188, i32 0)
  br label %190

190:                                              ; preds = %187, %156
  br label %191

191:                                              ; preds = %190, %132
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %14
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @cik_cp_compute_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ucode_print_gfx_hdr(%struct.TYPE_6__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
