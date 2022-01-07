; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mc13783_ts.c_mc13783_ts_report_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mc13783_ts.c_mc13783_ts_report_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13783_ts_priv = type { i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"x: (% 4d,% 4d,% 4d) y: (% 4d, % 4d,% 4d) cr: (% 4d, % 4d)\0A\00", align 1
@sample_tolerance = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"report (%d, %d, %d)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"report release\0A\00", align 1
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"discard event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mc13783_ts_priv*)* @mc13783_ts_report_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc13783_ts_report_sample(%struct.mc13783_ts_priv* %0) #0 {
  %2 = alloca %struct.mc13783_ts_priv*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mc13783_ts_priv* %0, %struct.mc13783_ts_priv** %2, align 8
  %12 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %12, i32 0, i32 2
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %3, align 8
  %15 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 4095
  store i32 %20, i32* %4, align 4
  %21 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 4095
  store i32 %26, i32* %5, align 4
  %27 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 4095
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %34 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 4095
  store i32 %38, i32* %7, align 4
  %39 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %40 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 12
  %45 = and i32 %44, 4095
  store i32 %45, i32* %8, align 4
  %46 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %47 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 12
  %52 = and i32 %51, 4095
  store i32 %52, i32* %9, align 4
  %53 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %54 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 4095
  store i32 %59, i32* %10, align 4
  %60 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %61 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 12
  %66 = and i32 %65, 4095
  store i32 %66, i32* %11, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @sort3(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @sort3(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %1
  %93 = load i32, i32* @sample_tolerance, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* @sample_tolerance, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %154

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* @sample_tolerance, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %154

107:                                              ; preds = %101, %92, %1
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %107
  %111 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %112 = load i32, i32* @ABS_X, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @input_report_abs(%struct.input_dev* %111, i32 %112, i32 %113)
  %115 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %116 = load i32, i32* @ABS_Y, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @input_report_abs(%struct.input_dev* %115, i32 %116, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 4096, %123
  %125 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %122, i32 %124)
  %126 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %2, align 8
  %127 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %126, i32 0, i32 1
  %128 = load i32, i32* @HZ, align 4
  %129 = sdiv i32 %128, 50
  %130 = call i32 @schedule_delayed_work(i32* %127, i32 %129)
  br label %135

131:                                              ; preds = %107
  %132 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 0
  %134 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %131, %110
  %136 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %137 = load i32, i32* @ABS_PRESSURE, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %10, align 4
  %142 = sub nsw i32 4096, %141
  br label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %10, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i32 [ %142, %140 ], [ %144, %143 ]
  %147 = call i32 @input_report_abs(%struct.input_dev* %136, i32 %137, i32 %146)
  %148 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %149 = load i32, i32* @BTN_TOUCH, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @input_report_key(%struct.input_dev* %148, i32 %149, i32 %150)
  %152 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %153 = call i32 @input_sync(%struct.input_dev* %152)
  br label %158

154:                                              ; preds = %101, %95
  %155 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %156 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %155, i32 0, i32 0
  %157 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %145
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @sort3(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
