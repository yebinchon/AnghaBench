; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.wuxga_nt_panel = type { i32, i32, i32 }

@MIN_POFF_MS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to set panel on: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @wuxga_nt_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wuxga_nt_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.wuxga_nt_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.wuxga_nt_panel* @to_wuxga_nt_panel(%struct.drm_panel* %7)
  store %struct.wuxga_nt_panel* %8, %struct.wuxga_nt_panel** %4, align 8
  %9 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %10 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %16 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (...) @ktime_get_real()
  %19 = call i64 @ktime_ms_delta(i32 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MIN_POFF_MS, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* @MIN_POFF_MS, align 8
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %23, %14
  %26 = load i64, i64* %6, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @msleep(i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %34 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_enable(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %32
  %42 = call i32 @msleep(i32 250)
  %43 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %44 = call i32 @wuxga_nt_panel_on(%struct.wuxga_nt_panel* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %49 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %41
  %54 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %55 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %62

56:                                               ; preds = %47
  %57 = load %struct.wuxga_nt_panel*, %struct.wuxga_nt_panel** %4, align 8
  %58 = getelementptr inbounds %struct.wuxga_nt_panel, %struct.wuxga_nt_panel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regulator_disable(i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %53, %39, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.wuxga_nt_panel* @to_wuxga_nt_panel(%struct.drm_panel*) #1

declare dso_local i64 @ktime_ms_delta(i32, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @wuxga_nt_panel_on(%struct.wuxga_nt_panel*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
