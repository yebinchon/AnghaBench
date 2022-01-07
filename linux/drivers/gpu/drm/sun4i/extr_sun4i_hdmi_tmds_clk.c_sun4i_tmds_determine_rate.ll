; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.sun4i_tmds = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @sun4i_tmds_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tmds_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.sun4i_tmds*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = call %struct.sun4i_tmds* @hw_to_tmds(%struct.clk_hw* %17)
  store %struct.sun4i_tmds* %18, %struct.sun4i_tmds** %6, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %7, align 8
  store i64 0, i64* %8, align 8
  %19 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %20 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %110, %2
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %25 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %113

27:                                               ; preds = %22
  %28 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %28, i32 %29)
  store %struct.clk_hw* %30, %struct.clk_hw** %7, align 8
  %31 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %32 = icmp ne %struct.clk_hw* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %110

34:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %106, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %109

38:                                               ; preds = %35
  %39 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %6, align 8
  %40 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi i32 [ %41, %43 ], [ 1, %44 ]
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %102, %45
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.sun4i_tmds*, %struct.sun4i_tmds** %6, align 8
  %50 = getelementptr inbounds %struct.sun4i_tmds, %struct.sun4i_tmds* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 16, %51
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %55, %57
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %58, %60
  store i64 %61, i64* %15, align 8
  %62 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @clk_hw_round_rate(%struct.clk_hw* %62, i64 %63)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %15, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load i64, i64* %16, align 8
  store i64 %69, i64* %8, align 8
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %10, align 4
  br label %120

72:                                               ; preds = %54
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %77, %79
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %80, %82
  %84 = sub i64 %76, %83
  %85 = call i64 @abs(i64 %84)
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %87, %89
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = udiv i64 %90, %92
  %94 = sub i64 %86, %93
  %95 = call i64 @abs(i64 %94)
  %96 = icmp slt i64 %85, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %75, %72
  %98 = load i64, i64* %16, align 8
  store i64 %98, i64* %8, align 8
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %97, %75
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %47

105:                                              ; preds = %47
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %35

109:                                              ; preds = %35
  br label %110

110:                                              ; preds = %109, %33
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %22

113:                                              ; preds = %22
  %114 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %115 = icmp ne %struct.clk_hw* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %136

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %68
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = udiv i64 %121, %123
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = udiv i64 %124, %126
  %128 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %129 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %132 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %134 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %135 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %134, i32 0, i32 2
  store %struct.clk_hw* %133, %struct.clk_hw** %135, align 8
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %120, %116
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.sun4i_tmds* @hw_to_tmds(%struct.clk_hw*) #1

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
