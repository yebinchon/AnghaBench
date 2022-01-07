; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_update_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_update_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_IH_CG = common dso_local global i32 0, align 4
@OSSSYS = common dso_local global i32 0, align 4
@mmIH_CLK_CTRL = common dso_local global i32 0, align 4
@IH_CLK_CTRL = common dso_local global i32 0, align 4
@DBUS_MUX_CLK_SOFT_OVERRIDE = common dso_local global i32 0, align 4
@OSSSYS_SHARE_CLK_SOFT_OVERRIDE = common dso_local global i32 0, align 4
@LIMIT_SMN_CLK_SOFT_OVERRIDE = common dso_local global i32 0, align 4
@DYN_CLK_SOFT_OVERRIDE = common dso_local global i32 0, align 4
@REG_CLK_SOFT_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @navi10_ih_update_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @navi10_ih_update_clockgating_state(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AMD_CG_SUPPORT_IH_CG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %2
  %15 = load i32, i32* @OSSSYS, align 4
  %16 = load i32, i32* @mmIH_CLK_CTRL, align 4
  %17 = call i64 @RREG32_SOC15(i32 %15, i32 0, i32 %16)
  store i64 %17, i64* %5, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @IH_CLK_CTRL, align 4
  %25 = load i32, i32* @DBUS_MUX_CLK_SOFT_OVERRIDE, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @REG_SET_FIELD(i64 %23, i32 %24, i32 %25, i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @IH_CLK_CTRL, align 4
  %30 = load i32, i32* @OSSSYS_SHARE_CLK_SOFT_OVERRIDE, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @REG_SET_FIELD(i64 %28, i32 %29, i32 %30, i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @IH_CLK_CTRL, align 4
  %35 = load i32, i32* @LIMIT_SMN_CLK_SOFT_OVERRIDE, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @REG_SET_FIELD(i64 %33, i32 %34, i32 %35, i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @IH_CLK_CTRL, align 4
  %40 = load i32, i32* @DYN_CLK_SOFT_OVERRIDE, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @REG_SET_FIELD(i64 %38, i32 %39, i32 %40, i64 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @IH_CLK_CTRL, align 4
  %45 = load i32, i32* @REG_CLK_SOFT_OVERRIDE, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @REG_SET_FIELD(i64 %43, i32 %44, i32 %45, i64 %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %14
  %52 = load i32, i32* @OSSSYS, align 4
  %53 = load i32, i32* @mmIH_CLK_CTRL, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @WREG32_SOC15(i32 %52, i32 0, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %14
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

declare dso_local i64 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i64) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
