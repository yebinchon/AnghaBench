; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clk_enable_gates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clk_enable_gates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Cannot enable clock '%s', %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*)* @hdmi_clk_enable_gates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_clk_enable_gates(%struct.hdmi_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %9 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %6
  %16 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %17 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %58

27:                                               ; preds = %15
  %28 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %29 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %32 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %47, %27
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %4, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %49 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  br label %43

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %26
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %6

61:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
