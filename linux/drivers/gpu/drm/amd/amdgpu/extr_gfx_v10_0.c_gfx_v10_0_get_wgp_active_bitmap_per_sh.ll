; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_wgp_active_bitmap_per_sh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_wgp_active_bitmap_per_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCC_GC_SHADER_ARRAY_CONFIG = common dso_local global i32 0, align 4
@mmGC_USER_SHADER_ARRAY_CONFIG = common dso_local global i32 0, align 4
@CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_WGPS_MASK = common dso_local global i32 0, align 4
@CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_WGPS__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_get_wgp_active_bitmap_per_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_get_wgp_active_bitmap_per_sh(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @GC, align 4
  %6 = load i32, i32* @mmCC_GC_SHADER_ARRAY_CONFIG, align 4
  %7 = call i32 @RREG32_SOC15(i32 %5, i32 0, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @GC, align 4
  %9 = load i32, i32* @mmGC_USER_SHADER_ARRAY_CONFIG, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_WGPS_MASK, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CC_GC_SHADER_ARRAY_CONFIG__INACTIVE_WGPS__SHIFT, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 1
  %25 = call i32 @amdgpu_gfx_create_bitmask(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %27, %28
  ret i32 %29
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @amdgpu_gfx_create_bitmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
