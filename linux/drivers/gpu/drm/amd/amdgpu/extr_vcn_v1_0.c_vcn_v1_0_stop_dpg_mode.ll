; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_stop_dpg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_stop_dpg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_POWER_STATUS = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RB_WPTR2 = common dso_local global i32 0, align 4
@mmUVD_RB_RPTR2 = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_RPTR = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_WPTR = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_RPTR = common dso_local global i32 0, align 4
@UVD_POWER_STATUS__UVD_PG_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vcn_v1_0_stop_dpg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v1_0_stop_dpg_mode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @UVD, align 4
  %6 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %7 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF, align 4
  %8 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @SOC15_WAIT_ON_RREG(i32 %5, i32 0, i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @UVD, align 4
  %12 = load i32, i32* @mmUVD_RB_WPTR, align 4
  %13 = call i32 @RREG32_SOC15(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @UVD, align 4
  %15 = load i32, i32* @mmUVD_RB_RPTR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @SOC15_WAIT_ON_RREG(i32 %14, i32 0, i32 %15, i32 %16, i32 -1, i32 %17)
  %19 = load i32, i32* @UVD, align 4
  %20 = load i32, i32* @mmUVD_RB_WPTR2, align 4
  %21 = call i32 @RREG32_SOC15(i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @UVD, align 4
  %23 = load i32, i32* @mmUVD_RB_RPTR2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @SOC15_WAIT_ON_RREG(i32 %22, i32 0, i32 %23, i32 %24, i32 -1, i32 %25)
  %27 = load i32, i32* @UVD, align 4
  %28 = load i32, i32* @mmUVD_JRBC_RB_WPTR, align 4
  %29 = call i32 @RREG32_SOC15(i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @UVD, align 4
  %31 = load i32, i32* @mmUVD_JRBC_RB_RPTR, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @SOC15_WAIT_ON_RREG(i32 %30, i32 0, i32 %31, i32 %32, i32 -1, i32 %33)
  %35 = load i32, i32* @UVD, align 4
  %36 = load i32, i32* @mmUVD_RBC_RB_WPTR, align 4
  %37 = call i32 @RREG32_SOC15(i32 %35, i32 0, i32 %36)
  %38 = and i32 %37, 2147483647
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @UVD, align 4
  %40 = load i32, i32* @mmUVD_RBC_RB_RPTR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @SOC15_WAIT_ON_RREG(i32 %39, i32 0, i32 %40, i32 %41, i32 -1, i32 %42)
  %44 = load i32, i32* @UVD, align 4
  %45 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %46 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF, align 4
  %47 = load i32, i32* @UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @SOC15_WAIT_ON_RREG(i32 %44, i32 0, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @UVD, align 4
  %51 = load i32, i32* @mmUVD_POWER_STATUS, align 4
  %52 = call i32 @SOC15_REG_OFFSET(i32 %50, i32 0, i32 %51)
  %53 = load i32, i32* @UVD_POWER_STATUS__UVD_PG_MODE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @WREG32_P(i32 %52, i32 0, i32 %54)
  ret i32 0
}

declare dso_local i32 @SOC15_WAIT_ON_RREG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
