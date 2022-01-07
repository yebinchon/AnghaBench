; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_convert_to_custom_float.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_convert_to_custom_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwl_result_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.curve_points = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.custom_float_format = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwl_result_data*, %struct.curve_points*, i64)* @convert_to_custom_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_custom_float(%struct.pwl_result_data* %0, %struct.curve_points* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwl_result_data*, align 8
  %6 = alloca %struct.curve_points*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.custom_float_format, align 4
  %9 = alloca %struct.pwl_result_data*, align 8
  %10 = alloca i64, align 8
  store %struct.pwl_result_data* %0, %struct.pwl_result_data** %5, align 8
  store %struct.curve_points* %1, %struct.curve_points** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.pwl_result_data*, %struct.pwl_result_data** %5, align 8
  store %struct.pwl_result_data* %11, %struct.pwl_result_data** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %8, i32 0, i32 0
  store i32 6, i32* %12, align 4
  %13 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %8, i32 0, i32 1
  store i32 12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %8, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %16 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %15, i64 0
  %17 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %20 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %19, i64 0
  %21 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %20, i32 0, i32 4
  %22 = call i32 @convert_to_custom_float_format(i32 %18, %struct.custom_float_format* %8, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

26:                                               ; preds = %3
  %27 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %28 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %27, i64 0
  %29 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %32 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %31, i64 0
  %33 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %32, i32 0, i32 6
  %34 = call i32 @convert_to_custom_float_format(i32 %30, %struct.custom_float_format* %8, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

38:                                               ; preds = %26
  %39 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %40 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %39, i64 0
  %41 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %44 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %43, i64 0
  %45 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %44, i32 0, i32 0
  %46 = call i32 @convert_to_custom_float_format(i32 %42, %struct.custom_float_format* %8, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %8, i32 0, i32 1
  store i32 10, i32* %51, align 4
  %52 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %8, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %54 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %53, i64 1
  %55 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %58 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %57, i64 1
  %59 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %58, i32 0, i32 4
  %60 = call i32 @convert_to_custom_float_format(i32 %56, %struct.custom_float_format* %8, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %50
  %63 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

64:                                               ; preds = %50
  %65 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %66 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %65, i64 1
  %67 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %70 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %69, i64 1
  %71 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %70, i32 0, i32 2
  %72 = call i32 @convert_to_custom_float_format(i32 %68, %struct.custom_float_format* %8, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %64
  %75 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

76:                                               ; preds = %64
  %77 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %78 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %77, i64 1
  %79 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.curve_points*, %struct.curve_points** %6, align 8
  %82 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %81, i64 1
  %83 = getelementptr inbounds %struct.curve_points, %struct.curve_points* %82, i32 0, i32 0
  %84 = call i32 @convert_to_custom_float_format(i32 %80, %struct.custom_float_format* %8, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %8, i32 0, i32 1
  store i32 12, i32* %89, align 4
  %90 = getelementptr inbounds %struct.custom_float_format, %struct.custom_float_format* %8, i32 0, i32 2
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %155, %88
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %160

95:                                               ; preds = %91
  %96 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %97 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %100 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %99, i32 0, i32 10
  %101 = call i32 @convert_to_custom_float_format(i32 %98, %struct.custom_float_format* %8, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

105:                                              ; preds = %95
  %106 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %107 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %110 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %109, i32 0, i32 8
  %111 = call i32 @convert_to_custom_float_format(i32 %108, %struct.custom_float_format* %8, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %105
  %114 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

115:                                              ; preds = %105
  %116 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %117 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %120 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %119, i32 0, i32 6
  %121 = call i32 @convert_to_custom_float_format(i32 %118, %struct.custom_float_format* %8, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %115
  %124 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

125:                                              ; preds = %115
  %126 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %127 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %130 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %129, i32 0, i32 4
  %131 = call i32 @convert_to_custom_float_format(i32 %128, %struct.custom_float_format* %8, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

135:                                              ; preds = %125
  %136 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %137 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %140 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %139, i32 0, i32 2
  %141 = call i32 @convert_to_custom_float_format(i32 %138, %struct.custom_float_format* %8, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

145:                                              ; preds = %135
  %146 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %147 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %150 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %149, i32 0, i32 0
  %151 = call i32 @convert_to_custom_float_format(i32 %148, %struct.custom_float_format* %8, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %145
  %154 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %161

155:                                              ; preds = %145
  %156 = load %struct.pwl_result_data*, %struct.pwl_result_data** %9, align 8
  %157 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %156, i32 1
  store %struct.pwl_result_data* %157, %struct.pwl_result_data** %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %91

160:                                              ; preds = %91
  store i32 1, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %153, %143, %133, %123, %113, %103, %86, %74, %62, %48, %36, %24
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @convert_to_custom_float_format(i32, %struct.custom_float_format*, i32*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
