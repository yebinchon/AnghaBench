; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clk_set_parents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clk_set_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.TYPE_4__*, %struct.clk**, %struct.device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.clk = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Cannot set clock parent of '%s' to '%s', %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*, i32)* @hdmi_clk_set_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_clk_set_parents(%struct.hdmi_context* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk**, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %10 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %67, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %15 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %12
  %22 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %23 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %22, i32 0, i32 1
  %24 = load %struct.clk**, %struct.clk*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.clk*, %struct.clk** %24, i64 %26
  store %struct.clk** %27, %struct.clk*** %8, align 8
  %28 = load %struct.clk**, %struct.clk*** %8, align 8
  %29 = getelementptr inbounds %struct.clk*, %struct.clk** %28, i64 2
  %30 = load %struct.clk*, %struct.clk** %29, align 8
  %31 = load %struct.clk**, %struct.clk*** %8, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.clk*, %struct.clk** %31, i64 %33
  %35 = load %struct.clk*, %struct.clk** %34, align 8
  %36 = call i32 @clk_set_parent(%struct.clk* %30, %struct.clk* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %21
  br label %67

40:                                               ; preds = %21
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %43 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %54 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %40, %39
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 3
  store i32 %69, i32* %7, align 4
  br label %12

70:                                               ; preds = %12
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @clk_set_parent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
