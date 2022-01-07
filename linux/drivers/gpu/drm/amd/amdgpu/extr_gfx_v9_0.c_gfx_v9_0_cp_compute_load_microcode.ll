; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_compute_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_compute_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CP_CPC_IC_BASE_CNTL = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@CACHE_POLICY = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_CNTL = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_LO = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_HI = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_cp_compute_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_cp_compute_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = call i32 @gfx_v9_0_cp_compute_enable(%struct.amdgpu_device* %17, i32 0)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %25, %struct.gfx_firmware_header_v1_0** %4, align 8
  %26 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %27 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %26, i32 0, i32 2
  %28 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_8__* %27)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %36 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = add nsw i64 %34, %39
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %44 = load i32, i32* @VMID, align 4
  %45 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %48 = load i32, i32* @CACHE_POLICY, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @GC, align 4
  %51 = load i32, i32* @mmCP_CPC_IC_BASE_CNTL, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @WREG32_SOC15(i32 %50, i32 0, i32 %51, i32 %52)
  %54 = load i32, i32* @GC, align 4
  %55 = load i32, i32* @mmCP_CPC_IC_BASE_LO, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -4096
  %62 = call i32 @WREG32_SOC15(i32 %54, i32 0, i32 %55, i32 %61)
  %63 = load i32, i32* @GC, align 4
  %64 = load i32, i32* @mmCP_CPC_IC_BASE_HI, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @upper_32_bits(i32 %69)
  %71 = call i32 @WREG32_SOC15(i32 %63, i32 0, i32 %64, i32 %70)
  %72 = load i32, i32* @GC, align 4
  %73 = load i32, i32* @mmCP_MEC_ME1_UCODE_ADDR, align 4
  %74 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %75 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WREG32_SOC15(i32 %72, i32 0, i32 %73, i32 %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %98, %16
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %81 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load i32, i32* @GC, align 4
  %86 = load i32, i32* @mmCP_MEC_ME1_UCODE_DATA, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %89 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @le32_to_cpup(i32* %95)
  %97 = call i32 @WREG32_SOC15(i32 %85, i32 0, i32 %86, i32 %96)
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %78

101:                                              ; preds = %78
  %102 = load i32, i32* @GC, align 4
  %103 = load i32, i32* @mmCP_MEC_ME1_UCODE_ADDR, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @WREG32_SOC15(i32 %102, i32 0, i32 %103, i32 %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %101, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @gfx_v9_0_cp_compute_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_8__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
