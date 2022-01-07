; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.sharp_nt_panel = type { i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to init panel: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set panel on: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @sharp_nt_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_nt_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.sharp_nt_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.sharp_nt_panel* @to_sharp_nt_panel(%struct.drm_panel* %6)
  store %struct.sharp_nt_panel* %7, %struct.sharp_nt_panel** %4, align 8
  %8 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %9 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %15 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regulator_enable(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %85

22:                                               ; preds = %13
  %23 = call i32 @msleep(i32 20)
  %24 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %25 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %30 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpiod_set_value(i64 %31, i32 1)
  %33 = call i32 @msleep(i32 1)
  %34 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %35 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gpiod_set_value(i64 %36, i32 0)
  %38 = call i32 @msleep(i32 1)
  %39 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %40 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpiod_set_value(i64 %41, i32 1)
  %43 = call i32 @msleep(i32 10)
  br label %44

44:                                               ; preds = %28, %22
  %45 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %46 = call i32 @sharp_nt_panel_init(%struct.sharp_nt_panel* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %51 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %69

55:                                               ; preds = %44
  %56 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %57 = call i32 @sharp_nt_panel_on(%struct.sharp_nt_panel* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %62 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %69

66:                                               ; preds = %55
  %67 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %68 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %85

69:                                               ; preds = %60, %49
  %70 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %71 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @regulator_disable(i32 %72)
  %74 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %75 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %80 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @gpiod_set_value(i64 %81, i32 0)
  br label %83

83:                                               ; preds = %78, %69
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %66, %20, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.sharp_nt_panel* @to_sharp_nt_panel(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @sharp_nt_panel_init(%struct.sharp_nt_panel*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sharp_nt_panel_on(%struct.sharp_nt_panel*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
