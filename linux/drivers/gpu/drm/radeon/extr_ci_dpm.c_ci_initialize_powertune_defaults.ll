; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_initialize_powertune_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_initialize_powertune_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ci_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32* }

@defaults_bonaire_xt = common dso_local global i32 0, align 4
@defaults_saturn_xt = common dso_local global i32 0, align 4
@defaults_hawaii_xt = common dso_local global i32 0, align 4
@defaults_hawaii_pro = common dso_local global i32 0, align 4
@CHIP_HAWAII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ci_initialize_powertune_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_initialize_powertune_defaults(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %4)
  store %struct.ci_power_info* %5, %struct.ci_power_info** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %12 [
    i32 26185, label %11
    i32 26192, label %11
    i32 26193, label %11
    i32 26200, label %11
    i32 26204, label %11
    i32 26205, label %11
    i32 26176, label %15
    i32 26177, label %15
    i32 26182, label %15
    i32 26183, label %15
    i32 26552, label %18
    i32 26544, label %18
    i32 26554, label %21
    i32 26545, label %21
    i32 26528, label %24
    i32 26529, label %24
    i32 26530, label %24
    i32 26536, label %24
    i32 26537, label %24
    i32 26538, label %24
    i32 26553, label %24
    i32 26558, label %24
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 10
  store i32* @defaults_bonaire_xt, i32** %14, align 8
  br label %27

15:                                               ; preds = %1, %1, %1, %1
  %16 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %17 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %16, i32 0, i32 10
  store i32* @defaults_saturn_xt, i32** %17, align 8
  br label %27

18:                                               ; preds = %1, %1
  %19 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %19, i32 0, i32 10
  store i32* @defaults_hawaii_xt, i32** %20, align 8
  br label %27

21:                                               ; preds = %1, %1
  %22 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %22, i32 0, i32 10
  store i32* @defaults_hawaii_pro, i32** %23, align 8
  br label %27

24:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 10
  store i32* @defaults_bonaire_xt, i32** %26, align 8
  br label %27

27:                                               ; preds = %24, %21, %18, %15, %12
  %28 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %29 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %33 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %35 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %37 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %39 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %38, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %41 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %40, i32 0, i32 5
  store i32 0, i32* %41, align 4
  %42 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %43 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %27
  %47 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %48 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CHIP_HAWAII, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %56 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %55, i32 0, i32 6
  store i32 0, i32* %56, align 8
  br label %60

57:                                               ; preds = %46
  %58 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %59 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %58, i32 0, i32 6
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %62 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %61, i32 0, i32 7
  store i32 1, i32* %62, align 4
  %63 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %64 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %63, i32 0, i32 8
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %27
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
