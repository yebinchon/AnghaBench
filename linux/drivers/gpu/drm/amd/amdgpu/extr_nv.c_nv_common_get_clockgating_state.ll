; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_common_get_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_common_get_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_device*, i32*)* }

@HDP = common dso_local global i32 0, align 4
@mmHDP_CLK_CNTL = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_MGCG = common dso_local global i32 0, align 4
@mmHDP_MEM_POWER_CTRL = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_LS = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL__IPH_MEM_POWER_DS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_DS = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL__IPH_MEM_POWER_SD_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_SD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @nv_common_get_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_common_get_clockgating_state(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %18, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 %19(%struct.amdgpu_device* %20, i32* %21)
  %23 = load i32, i32* @HDP, align 4
  %24 = load i32, i32* @mmHDP_CLK_CNTL, align 4
  %25 = call i32 @RREG32_SOC15(i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @HDP_CLK_CNTL__IPH_MEM_CLK_SOFT_OVERRIDE_MASK, align 4
  %28 = load i32, i32* @HDP_CLK_CNTL__RC_MEM_CLK_SOFT_OVERRIDE_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HDP_CLK_CNTL__DBUS_CLK_SOFT_OVERRIDE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HDP_CLK_CNTL__DYN_CLK_SOFT_OVERRIDE_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HDP_CLK_CNTL__XDP_REG_CLK_SOFT_OVERRIDE_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HDP_CLK_CNTL__HDP_REG_CLK_SOFT_OVERRIDE_MASK, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %26, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %14
  %41 = load i32, i32* @AMD_CG_SUPPORT_HDP_MGCG, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %14
  %46 = load i32, i32* @HDP, align 4
  %47 = load i32, i32* @mmHDP_MEM_POWER_CTRL, align 4
  %48 = call i32 @RREG32_SOC15(i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @HDP_MEM_POWER_CTRL__IPH_MEM_POWER_LS_EN_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %80

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @HDP_MEM_POWER_CTRL__IPH_MEM_POWER_DS_EN_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @AMD_CG_SUPPORT_HDP_DS, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %79

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @HDP_MEM_POWER_CTRL__IPH_MEM_POWER_SD_EN_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @AMD_CG_SUPPORT_HDP_SD, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %53
  ret void
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
