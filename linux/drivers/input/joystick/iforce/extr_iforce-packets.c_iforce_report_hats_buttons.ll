; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_report_hats_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_report_hats_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.iforce = type { %struct.TYPE_3__*, %struct.input_dev* }
%struct.TYPE_3__ = type { i64* }
%struct.input_dev = type { i32 }

@ABS_HAT0X = common dso_local global i32 0, align 4
@iforce_hat_to_axis = common dso_local global %struct.TYPE_4__* null, align 8
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT1Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iforce*, i32*)* @iforce_report_hats_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iforce_report_hats_buttons(%struct.iforce* %0, i32* %1) #0 {
  %3 = alloca %struct.iforce*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.iforce*, %struct.iforce** %3, align 8
  %9 = getelementptr inbounds %struct.iforce, %struct.iforce* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = load i32, i32* @ABS_HAT0X, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iforce_hat_to_axis, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 6
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @input_report_abs(%struct.input_dev* %11, i32 %12, i32 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = load i32, i32* @ABS_HAT0Y, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @iforce_hat_to_axis, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_report_abs(%struct.input_dev* %23, i32 %24, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %69, %2
  %36 = load %struct.iforce*, %struct.iforce** %3, align 8
  %37 = getelementptr inbounds %struct.iforce, %struct.iforce* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %35
  %47 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %48 = load %struct.iforce*, %struct.iforce** %3, align 8
  %49 = getelementptr inbounds %struct.iforce, %struct.iforce* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 3
  %60 = add nsw i32 %59, 5
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 7
  %66 = shl i32 1, %65
  %67 = and i32 %63, %66
  %68 = call i32 @input_report_key(%struct.input_dev* %47, i64 %56, i32 %67)
  br label %69

69:                                               ; preds = %46
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %35

72:                                               ; preds = %35
  %73 = load i32, i32* %6, align 4
  %74 = icmp sle i32 %73, 8
  br i1 %74, label %75, label %141

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @ABS_HAT1X, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @test_bit(i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @BIT(i32 3)
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %92 = load i32, i32* @ABS_HAT1X, align 4
  %93 = call i32 @input_report_abs(%struct.input_dev* %91, i32 %92, i32 -1)
  br label %108

94:                                               ; preds = %85
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @BIT(i32 1)
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = load i32, i32* @ABS_HAT1X, align 4
  %102 = call i32 @input_report_abs(%struct.input_dev* %100, i32 %101, i32 1)
  br label %107

103:                                              ; preds = %94
  %104 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %105 = load i32, i32* @ABS_HAT1X, align 4
  %106 = call i32 @input_report_abs(%struct.input_dev* %104, i32 %105, i32 0)
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %90
  br label %109

109:                                              ; preds = %108, %75
  %110 = load i32, i32* @ABS_HAT1Y, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @test_bit(i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %109
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @BIT(i32 0)
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %123 = load i32, i32* @ABS_HAT1Y, align 4
  %124 = call i32 @input_report_abs(%struct.input_dev* %122, i32 %123, i32 -1)
  br label %139

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @BIT(i32 2)
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %132 = load i32, i32* @ABS_HAT1Y, align 4
  %133 = call i32 @input_report_abs(%struct.input_dev* %131, i32 %132, i32 1)
  br label %138

134:                                              ; preds = %125
  %135 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %136 = load i32, i32* @ABS_HAT1Y, align 4
  %137 = call i32 @input_report_abs(%struct.input_dev* %135, i32 %136, i32 0)
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %121
  br label %140

140:                                              ; preds = %139, %109
  br label %141

141:                                              ; preds = %140, %72
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
