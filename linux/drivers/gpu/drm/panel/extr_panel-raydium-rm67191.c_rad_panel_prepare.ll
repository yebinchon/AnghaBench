; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.rad_panel = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @rad_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rad_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.rad_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.rad_panel* @to_rad_panel(%struct.drm_panel* %6)
  store %struct.rad_panel* %7, %struct.rad_panel** %4, align 8
  %8 = load %struct.rad_panel*, %struct.rad_panel** %4, align 8
  %9 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.rad_panel*, %struct.rad_panel** %4, align 8
  %15 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rad_panel*, %struct.rad_panel** %4, align 8
  %18 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regulator_bulk_enable(i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %13
  %26 = load %struct.rad_panel*, %struct.rad_panel** %4, align 8
  %27 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.rad_panel*, %struct.rad_panel** %4, align 8
  %32 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @gpiod_set_value_cansleep(i64 %33, i32 1)
  %35 = call i32 @usleep_range(i32 3000, i32 5000)
  %36 = load %struct.rad_panel*, %struct.rad_panel** %4, align 8
  %37 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gpiod_set_value_cansleep(i64 %38, i32 0)
  %40 = call i32 @usleep_range(i32 18000, i32 20000)
  br label %41

41:                                               ; preds = %30, %25
  %42 = load %struct.rad_panel*, %struct.rad_panel** %4, align 8
  %43 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %23, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.rad_panel* @to_rad_panel(%struct.drm_panel*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
