; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_polaris_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_polaris_mc_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mc_firmware_header_v1_0 = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmMC_SEQ_MISC0 = common dso_local global i32 0, align 4
@mmMC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@mmMC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@mmMC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@mmMC_SEQ_SUP_PGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v8_0_polaris_mc_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_polaris_mc_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.mc_firmware_header_v1_0*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i64 @amdgpu_sriov_bios(%struct.amdgpu_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %153

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %153

24:                                               ; preds = %15
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mc_firmware_header_v1_0*
  store %struct.mc_firmware_header_v1_0* %31, %struct.mc_firmware_header_v1_0** %4, align 8
  %32 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %33 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %32, i32 0, i32 0
  %34 = call i32 @amdgpu_ucode_print_mc_hdr(%struct.TYPE_6__* %33)
  %35 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %36 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %44 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = sdiv i32 %46, 8
  store i32 %47, i32* %10, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %55 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %53, %58
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %6, align 8
  %61 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %62 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = sdiv i32 %65, 4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %74 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %72, %78
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %5, align 8
  %81 = load i32, i32* @mmMC_SEQ_MISC0, align 4
  %82 = call i32 @RREG32(i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, -65
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @mmMC_SEQ_MISC0, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @WREG32(i32 %85, i32 %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %105, %24
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* @mmMC_SEQ_IO_DEBUG_INDEX, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  %96 = ptrtoint i32* %94 to i32
  %97 = call i32 @le32_to_cpup(i32 %96)
  %98 = call i32 @WREG32(i32 %93, i32 %97)
  %99 = load i32, i32* @mmMC_SEQ_IO_DEBUG_DATA, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %6, align 8
  %102 = ptrtoint i32* %100 to i32
  %103 = call i32 @le32_to_cpup(i32 %102)
  %104 = call i32 @WREG32(i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %88

108:                                              ; preds = %88
  %109 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %110 = call i32 @WREG32(i32 %109, i32 8)
  %111 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %112 = call i32 @WREG32(i32 %111, i32 16)
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %124, %108
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* @mmMC_SEQ_SUP_PGM, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %5, align 8
  %121 = ptrtoint i32* %119 to i32
  %122 = call i32 @le32_to_cpup(i32 %121)
  %123 = call i32 @WREG32(i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %113

127:                                              ; preds = %113
  %128 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %129 = call i32 @WREG32(i32 %128, i32 8)
  %130 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %131 = call i32 @WREG32(i32 %130, i32 4)
  %132 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %133 = call i32 @WREG32(i32 %132, i32 1)
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %149, %127
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load i32, i32* @mmMC_SEQ_MISC0, align 4
  %142 = call i32 @RREG32(i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, 128
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %152

147:                                              ; preds = %140
  %148 = call i32 @udelay(i32 1)
  br label %149

149:                                              ; preds = %147
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %134

152:                                              ; preds = %146, %134
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %21, %14
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @amdgpu_sriov_bios(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ucode_print_mc_hdr(%struct.TYPE_6__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
