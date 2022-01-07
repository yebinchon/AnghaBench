; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_get_current_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_get_current_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_ps = type { %struct.rv7xx_pl, %struct.rv7xx_pl, %struct.rv7xx_pl }
%struct.rv7xx_pl = type { i32 }

@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURRENT_PROFILE_INDEX_MASK = common dso_local global i32 0, align 4
@CURRENT_PROFILE_INDEX_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_dpm_get_current_mclk(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_ps*, align 8
  %6 = alloca %struct.rv7xx_pl*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %11, align 8
  store %struct.radeon_ps* %12, %struct.radeon_ps** %4, align 8
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %14 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %13)
  store %struct.rv7xx_ps* %14, %struct.rv7xx_ps** %5, align 8
  %15 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %16 = call i32 @RREG32(i32 %15)
  %17 = load i32, i32* @CURRENT_PROFILE_INDEX_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @CURRENT_PROFILE_INDEX_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %29 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %28, i32 0, i32 2
  store %struct.rv7xx_pl* %29, %struct.rv7xx_pl** %6, align 8
  br label %40

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %35 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %34, i32 0, i32 1
  store %struct.rv7xx_pl* %35, %struct.rv7xx_pl** %6, align 8
  br label %39

36:                                               ; preds = %30
  %37 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %5, align 8
  %38 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %37, i32 0, i32 0
  store %struct.rv7xx_pl* %38, %struct.rv7xx_pl** %6, align 8
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %42 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
