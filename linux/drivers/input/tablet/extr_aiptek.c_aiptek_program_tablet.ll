; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_program_tablet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_program_tablet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiptek = type { i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@AIPTEK_COORDINATE_ABSOLUTE_MODE = common dso_local global i64 0, align 8
@AIPTEK_DIAGNOSTIC_NA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiptek*)* @aiptek_program_tablet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiptek_program_tablet(%struct.aiptek* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aiptek*, align 8
  %4 = alloca i32, align 4
  store %struct.aiptek* %0, %struct.aiptek** %3, align 8
  %5 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %6 = call i32 @aiptek_command(%struct.aiptek* %5, i32 24, i32 4)
  store i32 %6, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %119

10:                                               ; preds = %1
  %11 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %12 = call i32 @aiptek_query(%struct.aiptek* %11, i32 2, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %119

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 255
  %19 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %20 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %23 = call i32 @aiptek_query(%struct.aiptek* %22, i32 3, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %119

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %30 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %33 = call i32 @aiptek_query(%struct.aiptek* %32, i32 4, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %119

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %40 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %43 = call i32 @aiptek_query(%struct.aiptek* %42, i32 1, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %119

47:                                               ; preds = %37
  %48 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %49 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ABS_X, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @input_set_abs_params(i32 %50, i32 %51, i32 0, i32 %53, i32 0, i32 0)
  %55 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %56 = call i32 @aiptek_query(%struct.aiptek* %55, i32 1, i32 1)
  store i32 %56, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %119

60:                                               ; preds = %47
  %61 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %62 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ABS_Y, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @input_set_abs_params(i32 %63, i32 %64, i32 0, i32 %66, i32 0, i32 0)
  %68 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %69 = call i32 @aiptek_query(%struct.aiptek* %68, i32 8, i32 0)
  store i32 %69, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %119

73:                                               ; preds = %60
  %74 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %75 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ABS_PRESSURE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @input_set_abs_params(i32 %76, i32 %77, i32 0, i32 %79, i32 0, i32 0)
  %81 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %82 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AIPTEK_COORDINATE_ABSOLUTE_MODE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %73
  %88 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %89 = call i32 @aiptek_command(%struct.aiptek* %88, i32 16, i32 1)
  store i32 %89, i32* %4, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %119

93:                                               ; preds = %87
  br label %101

94:                                               ; preds = %73
  %95 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %96 = call i32 @aiptek_command(%struct.aiptek* %95, i32 16, i32 0)
  store i32 %96, i32* %4, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %119

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %93
  %102 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %103 = call i32 @aiptek_command(%struct.aiptek* %102, i32 17, i32 2)
  store i32 %103, i32* %4, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %119

107:                                              ; preds = %101
  %108 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %109 = call i32 @aiptek_command(%struct.aiptek* %108, i32 18, i32 255)
  store i32 %109, i32* %4, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %119

113:                                              ; preds = %107
  %114 = load i32, i32* @AIPTEK_DIAGNOSTIC_NA, align 4
  %115 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %116 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.aiptek*, %struct.aiptek** %3, align 8
  %118 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %113, %111, %105, %98, %91, %71, %58, %45, %35, %25, %14, %8
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @aiptek_command(%struct.aiptek*, i32, i32) #1

declare dso_local i32 @aiptek_query(%struct.aiptek*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
