; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_common_get_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_common_get_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*, i32*)* }
%struct.TYPE_3__ = type { i32 (%struct.amdgpu_device*, i32*)* }

@HDP = common dso_local global i32 0, align 4
@mmHDP_MEM_POWER_LS = common dso_local global i32 0, align 4
@HDP_MEM_POWER_LS__LS_ENABLE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_LS = common dso_local global i32 0, align 4
@MP0 = common dso_local global i32 0, align 4
@mmMP0_MISC_CGTT_CTRL0 = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_DRM_MGCG = common dso_local global i32 0, align 4
@mmMP0_MISC_LIGHT_SLEEP_CTRL = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_DRM_LS = common dso_local global i32 0, align 4
@SMUIO = common dso_local global i32 0, align 4
@mmCGTT_ROM_CLK_CTRL0 = common dso_local global i32 0, align 4
@CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_ROM_MGCG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @soc15_common_get_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc15_common_get_clockgating_state(i8* %0, i32* %1) #0 {
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
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %18, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 %19(%struct.amdgpu_device* %20, i32* %21)
  %23 = load i32, i32* @HDP, align 4
  %24 = load i32, i32* @mmHDP_MEM_POWER_LS, align 4
  %25 = call i32 @SOC15_REG_OFFSET(i32 %23, i32 0, i32 %24)
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HDP_MEM_POWER_LS__LS_ENABLE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %14
  %32 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %14
  %37 = load i32, i32* @MP0, align 4
  %38 = load i32, i32* @mmMP0_MISC_CGTT_CTRL0, align 4
  %39 = call i32 @SOC15_REG_OFFSET(i32 %37, i32 0, i32 %38)
  %40 = call i32 @RREG32(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 16777216
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @AMD_CG_SUPPORT_DRM_MGCG, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32, i32* @MP0, align 4
  %51 = load i32, i32* @mmMP0_MISC_LIGHT_SLEEP_CTRL, align 4
  %52 = call i32 @SOC15_REG_OFFSET(i32 %50, i32 0, i32 %51)
  %53 = call i32 @RREG32(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i32, i32* @AMD_CG_SUPPORT_DRM_LS, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i32, i32* @SMUIO, align 4
  %64 = load i32, i32* @mmCGTT_ROM_CLK_CTRL0, align 4
  %65 = call i32 @SOC15_REG_OFFSET(i32 %63, i32 0, i32 %64)
  %66 = call i32 @RREG32(i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @AMD_CG_SUPPORT_ROM_MGCG, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %62
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %80, align 8
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 %81(%struct.amdgpu_device* %82, i32* %83)
  ret void
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
