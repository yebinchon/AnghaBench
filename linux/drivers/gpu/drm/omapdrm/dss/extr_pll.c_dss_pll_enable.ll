; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_pll.c_dss_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_pll_enable(%struct.dss_pll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dss_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.dss_pll* %0, %struct.dss_pll** %3, align 8
  %5 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %6 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %15 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %20 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @regulator_enable(i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %51

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %29 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.dss_pll*)**
  %33 = load i32 (%struct.dss_pll*)*, i32 (%struct.dss_pll*)** %32, align 8
  %34 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %35 = call i32 %33(%struct.dss_pll* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %57

40:                                               ; preds = %38
  %41 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %42 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %47 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @regulator_disable(i64 %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.dss_pll*, %struct.dss_pll** %3, align 8
  %53 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %39, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
