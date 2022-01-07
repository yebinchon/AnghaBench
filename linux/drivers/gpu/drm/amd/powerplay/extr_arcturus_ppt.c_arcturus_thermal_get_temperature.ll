; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_thermal_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_thermal_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid sensor for retrieving temp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32*)* @arcturus_thermal_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_thermal_get_temperature(%struct.smu_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %17 = call i32 @arcturus_get_metrics_table(%struct.smu_context* %16, %struct.TYPE_3__* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %42 [
    i32 129, label %24
    i32 130, label %30
    i32 128, label %36
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %46

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %46

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %46

42:                                               ; preds = %22
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %36, %30, %24
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %42, %20, %12
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @arcturus_get_metrics_table(%struct.smu_context*, %struct.TYPE_3__*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
