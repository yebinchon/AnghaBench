; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}*, {}*, {}* }
%struct.TYPE_6__ = type { i64 }
%struct.rlc_firmware_header_v1_0 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmRLC_RL_BASE = common dso_local global i32 0, align 4
@mmRLC_RL_SIZE = common dso_local global i32 0, align 4
@mmRLC_LB_CNTL = common dso_local global i32 0, align 4
@mmRLC_LB_CNTR_MAX = common dso_local global i32 0, align 4
@mmRLC_LB_CNTR_INIT = common dso_local global i32 0, align 4
@mmRLC_LB_INIT_CU_MASK = common dso_local global i32 0, align 4
@mmRLC_MC_CNTL = common dso_local global i32 0, align 4
@mmRLC_UCODE_CNTL = common dso_local global i32 0, align 4
@mmRLC_UCODE_ADDR = common dso_local global i32 0, align 4
@mmRLC_UCODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v6_0_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_rlc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rlc_firmware_header_v1_0*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %121

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = bitcast {}** %22 to i32 (%struct.amdgpu_device*)**
  %24 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %23, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = call i32 %24(%struct.amdgpu_device* %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to i32 (%struct.amdgpu_device*)**
  %34 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %33, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = call i32 %34(%struct.amdgpu_device* %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = call i32 @gfx_v6_0_init_pg(%struct.amdgpu_device* %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = call i32 @gfx_v6_0_init_cg(%struct.amdgpu_device* %39)
  %41 = load i32, i32* @mmRLC_RL_BASE, align 4
  %42 = call i32 @WREG32(i32 %41, i32 0)
  %43 = load i32, i32* @mmRLC_RL_SIZE, align 4
  %44 = call i32 @WREG32(i32 %43, i32 0)
  %45 = load i32, i32* @mmRLC_LB_CNTL, align 4
  %46 = call i32 @WREG32(i32 %45, i32 0)
  %47 = load i32, i32* @mmRLC_LB_CNTR_MAX, align 4
  %48 = call i32 @WREG32(i32 %47, i32 -1)
  %49 = load i32, i32* @mmRLC_LB_CNTR_INIT, align 4
  %50 = call i32 @WREG32(i32 %49, i32 0)
  %51 = load i32, i32* @mmRLC_LB_INIT_CU_MASK, align 4
  %52 = call i32 @WREG32(i32 %51, i32 -1)
  %53 = load i32, i32* @mmRLC_MC_CNTL, align 4
  %54 = call i32 @WREG32(i32 %53, i32 0)
  %55 = load i32, i32* @mmRLC_UCODE_CNTL, align 4
  %56 = call i32 @WREG32(i32 %55, i32 0)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.rlc_firmware_header_v1_0*
  store %struct.rlc_firmware_header_v1_0* %63, %struct.rlc_firmware_header_v1_0** %5, align 8
  %64 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %5, align 8
  %65 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = sdiv i32 %68, 4
  store i32 %69, i32* %7, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %5, align 8
  %77 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %75, %81
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %6, align 8
  %84 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %5, align 8
  %85 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %84, i32 0, i32 0
  %86 = call i32 @amdgpu_ucode_print_rlc_hdr(%struct.TYPE_10__* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %101, %16
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* @mmRLC_UCODE_ADDR, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @WREG32(i32 %92, i32 %93)
  %95 = load i32, i32* @mmRLC_UCODE_DATA, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %6, align 8
  %98 = ptrtoint i32* %96 to i32
  %99 = call i32 @le32_to_cpup(i32 %98)
  %100 = call i32 @WREG32(i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %87

104:                                              ; preds = %87
  %105 = load i32, i32* @mmRLC_UCODE_ADDR, align 4
  %106 = call i32 @WREG32(i32 %105, i32 0)
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = call i32 @gfx_v6_0_lbpw_supported(%struct.amdgpu_device* %108)
  %110 = call i32 @gfx_v6_0_enable_lbpw(%struct.amdgpu_device* %107, i32 %109)
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = bitcast {}** %116 to i32 (%struct.amdgpu_device*)**
  %118 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %117, align 8
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %120 = call i32 %118(%struct.amdgpu_device* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %104, %13
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @gfx_v6_0_init_pg(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v6_0_init_cg(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @amdgpu_ucode_print_rlc_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @gfx_v6_0_enable_lbpw(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v6_0_lbpw_supported(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
