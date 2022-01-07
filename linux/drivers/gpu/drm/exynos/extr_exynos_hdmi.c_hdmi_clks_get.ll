; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clks_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_clks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.device* }
%struct.device = type { i32 }
%struct.string_array_spec = type { i32, i32* }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Cannot get clock %s, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*, %struct.string_array_spec*, %struct.clk**)* @hdmi_clks_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_clks_get(%struct.hdmi_context* %0, %struct.string_array_spec* %1, %struct.clk** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_context*, align 8
  %6 = alloca %struct.string_array_spec*, align 8
  %7 = alloca %struct.clk**, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %5, align 8
  store %struct.string_array_spec* %1, %struct.string_array_spec** %6, align 8
  store %struct.clk** %2, %struct.clk*** %7, align 8
  %12 = load %struct.hdmi_context*, %struct.hdmi_context** %5, align 8
  %13 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %54, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.string_array_spec*, %struct.string_array_spec** %6, align 8
  %18 = getelementptr inbounds %struct.string_array_spec, %struct.string_array_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = load %struct.string_array_spec*, %struct.string_array_spec** %6, align 8
  %24 = getelementptr inbounds %struct.string_array_spec, %struct.string_array_spec* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.clk* @devm_clk_get(%struct.device* %22, i32 %29)
  store %struct.clk* %30, %struct.clk** %10, align 8
  %31 = load %struct.clk*, %struct.clk** %10, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %21
  %35 = load %struct.clk*, %struct.clk** %10, align 8
  %36 = call i32 @PTR_ERR(%struct.clk* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = load %struct.string_array_spec*, %struct.string_array_spec** %6, align 8
  %39 = getelementptr inbounds %struct.string_array_spec, %struct.string_array_spec* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %21
  %49 = load %struct.clk*, %struct.clk** %10, align 8
  %50 = load %struct.clk**, %struct.clk*** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.clk*, %struct.clk** %50, i64 %52
  store %struct.clk* %49, %struct.clk** %53, align 8
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %15

57:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %34
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
