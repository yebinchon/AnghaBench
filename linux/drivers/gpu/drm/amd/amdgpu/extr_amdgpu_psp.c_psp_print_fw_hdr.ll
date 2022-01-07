; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_print_fw_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_psp.c_psp_print_fw_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_13__, %struct.TYPE_22__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.amdgpu_firmware_info = type { i64 }
%struct.sdma_firmware_header_v1_0 = type { i32 }
%struct.gfx_firmware_header_v1_0 = type { i32 }
%struct.rlc_firmware_header_v2_0 = type { i32 }
%struct.smc_firmware_header_v1_0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psp_context*, %struct.amdgpu_firmware_info*)* @psp_print_fw_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psp_print_fw_hdr(%struct.psp_context* %0, %struct.amdgpu_firmware_info* %1) #0 {
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca %struct.amdgpu_firmware_info*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.sdma_firmware_header_v1_0*, align 8
  %7 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %8 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %9 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %10 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %11 = alloca %struct.rlc_firmware_header_v2_0*, align 8
  %12 = alloca %struct.smc_firmware_header_v1_0*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  store %struct.amdgpu_firmware_info* %1, %struct.amdgpu_firmware_info** %4, align 8
  %13 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %14 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %5, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 136
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.sdma_firmware_header_v1_0*
  store %struct.sdma_firmware_header_v1_0* %29, %struct.sdma_firmware_header_v1_0** %6, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %36, %struct.gfx_firmware_header_v1_0** %7, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %43, %struct.gfx_firmware_header_v1_0** %8, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %50, %struct.gfx_firmware_header_v1_0** %9, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %57, %struct.gfx_firmware_header_v1_0** %10, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.rlc_firmware_header_v2_0*
  store %struct.rlc_firmware_header_v2_0* %64, %struct.rlc_firmware_header_v2_0** %11, align 8
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.smc_firmware_header_v1_0*
  store %struct.smc_firmware_header_v1_0* %71, %struct.smc_firmware_header_v1_0** %12, align 8
  %72 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %4, align 8
  %73 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  switch i64 %74, label %103 [
    i64 136, label %75
    i64 135, label %75
    i64 134, label %75
    i64 133, label %75
    i64 132, label %75
    i64 131, label %75
    i64 130, label %75
    i64 129, label %75
    i64 141, label %79
    i64 138, label %83
    i64 140, label %87
    i64 139, label %91
    i64 137, label %95
    i64 128, label %99
  ]

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %76 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %6, align 8
  %77 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %76, i32 0, i32 0
  %78 = call i32 @amdgpu_ucode_print_sdma_hdr(i32* %77)
  br label %104

79:                                               ; preds = %2
  %80 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %81 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %80, i32 0, i32 0
  %82 = call i32 @amdgpu_ucode_print_gfx_hdr(i32* %81)
  br label %104

83:                                               ; preds = %2
  %84 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %8, align 8
  %85 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %84, i32 0, i32 0
  %86 = call i32 @amdgpu_ucode_print_gfx_hdr(i32* %85)
  br label %104

87:                                               ; preds = %2
  %88 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %9, align 8
  %89 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %88, i32 0, i32 0
  %90 = call i32 @amdgpu_ucode_print_gfx_hdr(i32* %89)
  br label %104

91:                                               ; preds = %2
  %92 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %93 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %92, i32 0, i32 0
  %94 = call i32 @amdgpu_ucode_print_gfx_hdr(i32* %93)
  br label %104

95:                                               ; preds = %2
  %96 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %11, align 8
  %97 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %96, i32 0, i32 0
  %98 = call i32 @amdgpu_ucode_print_rlc_hdr(i32* %97)
  br label %104

99:                                               ; preds = %2
  %100 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %12, align 8
  %101 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %100, i32 0, i32 0
  %102 = call i32 @amdgpu_ucode_print_smc_hdr(i32* %101)
  br label %104

103:                                              ; preds = %2
  br label %104

104:                                              ; preds = %103, %99, %95, %91, %87, %83, %79, %75
  ret void
}

declare dso_local i32 @amdgpu_ucode_print_sdma_hdr(i32*) #1

declare dso_local i32 @amdgpu_ucode_print_gfx_hdr(i32*) #1

declare dso_local i32 @amdgpu_ucode_print_rlc_hdr(i32*) #1

declare dso_local i32 @amdgpu_ucode_print_smc_hdr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
