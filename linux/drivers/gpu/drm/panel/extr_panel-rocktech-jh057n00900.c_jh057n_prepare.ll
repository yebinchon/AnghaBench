; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.jh057n = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Resetting the panel\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to enable vcc supply: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to enable iovcc supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @jh057n_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jh057n_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.jh057n*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.jh057n* @panel_to_jh057n(%struct.drm_panel* %6)
  store %struct.jh057n* %7, %struct.jh057n** %4, align 8
  %8 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %9 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %15 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %19 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regulator_enable(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %26 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @DRM_DEV_ERROR(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %13
  %32 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %33 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regulator_enable(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %40 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @DRM_DEV_ERROR(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %57

44:                                               ; preds = %31
  %45 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %46 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpiod_set_value_cansleep(i32 %47, i32 1)
  %49 = call i32 @usleep_range(i32 20, i32 40)
  %50 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %51 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gpiod_set_value_cansleep(i32 %52, i32 0)
  %54 = call i32 @msleep(i32 20)
  %55 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %56 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  store i32 0, i32* %2, align 4
  br label %63

57:                                               ; preds = %38
  %58 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %59 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regulator_disable(i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %44, %24, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.jh057n* @panel_to_jh057n(%struct.drm_panel*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
