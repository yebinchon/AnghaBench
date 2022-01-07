; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kv_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call i32 @kv_force_dpm_highest(%struct.radeon_device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %10
  br label %44

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = call i32 @kv_force_dpm_lowest(%struct.radeon_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %22
  br label %43

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_AUTO, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = call i32 @kv_unforce_levels(%struct.radeon_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %39, %27, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @kv_force_dpm_highest(%struct.radeon_device*) #1

declare dso_local i32 @kv_force_dpm_lowest(%struct.radeon_device*) #1

declare dso_local i32 @kv_unforce_levels(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
