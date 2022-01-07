; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c_tsc200x_selftest_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c_tsc200x_selftest_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tsc200x = type { i32, i32 }

@TSC200X_REG_TEMP_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"selftest failed: read error %d\0A\00", align 1
@MAX_12BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"selftest failed: write error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"selftest failed: read error %d after write\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"selftest failed: %d != %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"selftest failed: read error %d after reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"selftest failed after reset: %d != %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tsc200x_selftest_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc200x_selftest_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tsc200x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.tsc200x* @dev_get_drvdata(%struct.device* %13)
  store %struct.tsc200x* %14, %struct.tsc200x** %7, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %16 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %19 = call i32 @__tsc200x_disable(%struct.tsc200x* %18)
  %20 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %21 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TSC200X_REG_TEMP_HIGH, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %9)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %11, align 4
  br label %97

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = sub i32 %32, 1
  %34 = load i32, i32* @MAX_12BIT, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %37 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TSC200X_REG_TEMP_HIGH, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %11, align 4
  br label %97

48:                                               ; preds = %31
  %49 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %50 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TSC200X_REG_TEMP_HIGH, align 4
  %53 = call i32 @regmap_read(i32 %51, i32 %52, i32* %8)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 0, i32* %11, align 4
  br label %97

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %71 = call i32 @tsc200x_reset(%struct.tsc200x* %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %97

75:                                               ; preds = %69
  %76 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %77 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TSC200X_REG_TEMP_HIGH, align 4
  %80 = call i32 @regmap_read(i32 %78, i32 %79, i32* %8)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  store i32 0, i32* %11, align 4
  br label %97

87:                                               ; preds = %75
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %94)
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %87
  br label %97

97:                                               ; preds = %96, %83, %74, %56, %44, %27
  %98 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %99 = call i32 @__tsc200x_enable(%struct.tsc200x* %98)
  %100 = load %struct.tsc200x*, %struct.tsc200x** %7, align 8
  %101 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  ret i32 %105
}

declare dso_local %struct.tsc200x* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__tsc200x_disable(%struct.tsc200x*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tsc200x_reset(%struct.tsc200x*) #1

declare dso_local i32 @__tsc200x_enable(%struct.tsc200x*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
