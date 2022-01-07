; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_update_hdp_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_update_hdp_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_HDP_MGCG = common dso_local global i32 0, align 4
@HDP = common dso_local global i32 0, align 4
@mmHDP_CLK_CNTL = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @nv_update_hdp_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_update_hdp_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AMD_CG_SUPPORT_HDP_MGCG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %53

13:                                               ; preds = %2
  %14 = load i32, i32* @HDP, align 4
  %15 = load i32, i32* @mmHDP_CLK_CNTL, align 4
  %16 = call i32 @RREG32_SOC15(i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load i32, i32* @HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK, align 4
  %21 = load i32, i32* @HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %48

34:                                               ; preds = %13
  %35 = load i32, i32* @HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK, align 4
  %36 = load i32, i32* @HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %34, %19
  %49 = load i32, i32* @HDP, align 4
  %50 = load i32, i32* @mmHDP_CLK_CNTL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @WREG32_SOC15(i32 %49, i32 0, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
