; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.sharp_nt_panel = type { i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to set panel off: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @sharp_nt_panel_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_nt_panel_unprepare(%struct.drm_panel* %0) #0 {
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
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %15 = call i32 @sharp_nt_panel_off(%struct.sharp_nt_panel* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %20 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %13
  %26 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %27 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @regulator_disable(i32 %28)
  %30 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %31 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %36 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @gpiod_set_value(i64 %37, i32 0)
  br label %39

39:                                               ; preds = %34, %25
  %40 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %4, align 8
  %41 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %18, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.sharp_nt_panel* @to_sharp_nt_panel(%struct.drm_panel*) #1

declare dso_local i32 @sharp_nt_panel_off(%struct.sharp_nt_panel*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
