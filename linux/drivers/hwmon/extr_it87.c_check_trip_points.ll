; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_check_trip_points.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_check_trip_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.it87_data = type { i64**, i64** }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Inconsistent trip points, not switching to automatic mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Adjust the trip points and try again\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @check_trip_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_trip_points(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.it87_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.it87_data* %9, %struct.it87_data** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %11 = call i64 @has_old_autopwm(%struct.it87_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %86

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %19 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %18, i32 0, i32 0
  %20 = load i64**, i64*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64*, i64** %20, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %30 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %28, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %17
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %14

49:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %55 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %54, i32 0, i32 1
  %56 = load i64**, i64*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %66 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %65, i32 0, i32 1
  %67 = load i64**, i64*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %64, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %53
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %53
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %50

85:                                               ; preds = %50
  br label %128

86:                                               ; preds = %2
  %87 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %88 = call i64 @has_newer_autopwm(%struct.it87_data* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %127

90:                                               ; preds = %86
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %123, %90
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %126

94:                                               ; preds = %91
  %95 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %96 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %95, i32 0, i32 0
  %97 = load i64**, i64*** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64*, i64** %97, i64 %99
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.it87_data*, %struct.it87_data** %5, align 8
  %107 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %106, i32 0, i32 0
  %108 = load i64**, i64*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64*, i64** %108, i64 %110
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %105, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %94
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %119, %94
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %91

126:                                              ; preds = %91
  br label %127

127:                                              ; preds = %126, %86
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.device*, %struct.device** %3, align 8
  %133 = call i32 @dev_err(%struct.device* %132, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.device*, %struct.device** %3, align 8
  %135 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %131, %128
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @has_old_autopwm(%struct.it87_data*) #1

declare dso_local i64 @has_newer_autopwm(%struct.it87_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
