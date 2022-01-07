; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_report_acceleration_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_report_acceleration_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxtj9_data = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@XOUT_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"accelerometer data read failed\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kxtj9_data*)* @kxtj9_report_acceleration_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kxtj9_report_acceleration_data(%struct.kxtj9_data* %0) #0 {
  %2 = alloca %struct.kxtj9_data*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kxtj9_data* %0, %struct.kxtj9_data** %2, align 8
  %8 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %9 = load i32, i32* @XOUT_L, align 4
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %11 = call i32 @kxtj9_i2c_read(%struct.kxtj9_data* %8, i32 %9, i32* %10, i32 6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %16 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %22 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %29 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %36 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %43 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %48 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %53 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %58 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ABS_X, align 4
  %61 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %62 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %20
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 0, %67
  br label %71

69:                                               ; preds = %20
  %70 = load i32, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %68, %66 ], [ %70, %69 ]
  %73 = call i32 @input_report_abs(i32 %59, i32 %60, i32 %72)
  %74 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %75 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ABS_Y, align 4
  %78 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %79 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 0, %84
  br label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i32 [ %85, %83 ], [ %87, %86 ]
  %90 = call i32 @input_report_abs(i32 %76, i32 %77, i32 %89)
  %91 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %92 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ABS_Z, align 4
  %95 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %96 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 0, %101
  br label %105

103:                                              ; preds = %88
  %104 = load i32, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi i32 [ %102, %100 ], [ %104, %103 ]
  %107 = call i32 @input_report_abs(i32 %93, i32 %94, i32 %106)
  %108 = load %struct.kxtj9_data*, %struct.kxtj9_data** %2, align 8
  %109 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @input_sync(i32 %110)
  ret void
}

declare dso_local i32 @kxtj9_i2c_read(%struct.kxtj9_data*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
