; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu9_baco.c_smu9_baco_get_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu9_baco.c_smu9_baco_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_device = type { i32 }

@PHM_PlatformCaps_BACO = common dso_local global i32 0, align 4
@NBIF = common dso_local global i32 0, align 4
@mmRCC_BIF_STRAP0 = common dso_local global i32 0, align 4
@RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu9_baco_get_capability(%struct.pp_hwmgr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PHM_PlatformCaps_BACO, align 4
  %19 = call i32 @phm_cap_enabled(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = call i32 @WREG32(i32 73844, i32 -1048517)
  %24 = call i32 @RREG32(i32 73845)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* @NBIF, align 4
  %29 = load i32, i32* @mmRCC_BIF_STRAP0, align 4
  %30 = call i32 @RREG32_SOC15(i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %27
  br label %38

38:                                               ; preds = %37, %22
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
