; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @sun8i_phy_clk_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_phy_clk_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %14 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %15 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %84, %2
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %20 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %17
  %23 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %23, i32 %24)
  store %struct.clk_hw* %25, %struct.clk_hw** %8, align 8
  %26 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %27 = icmp ne %struct.clk_hw* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %84

29:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %72, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp sle i32 %31, 16
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  store i64 %37, i64* %12, align 8
  %38 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @clk_hw_round_rate(%struct.clk_hw* %38, i64 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %6, align 8
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  store %struct.clk_hw* %47, %struct.clk_hw** %7, align 8
  br label %75

48:                                               ; preds = %33
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %53, %55
  %57 = sub i64 %52, %56
  %58 = call i64 @abs(i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %60, %62
  %64 = sub i64 %59, %63
  %65 = call i64 @abs(i64 %64)
  %66 = icmp slt i64 %58, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %51, %48
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %6, align 8
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  store %struct.clk_hw* %70, %struct.clk_hw** %7, align 8
  br label %71

71:                                               ; preds = %67, %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %30

75:                                               ; preds = %44, %30
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %76, %78
  %80 = load i64, i64* %5, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %87

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %28
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %17

87:                                               ; preds = %82, %17
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = udiv i64 %88, %90
  %92 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %93 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %96 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %98 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %99 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %98, i32 0, i32 2
  store %struct.clk_hw* %97, %struct.clk_hw** %99, align 8
  ret i32 0
}

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
