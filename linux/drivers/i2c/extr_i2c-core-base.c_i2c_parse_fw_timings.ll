; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_parse_fw_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_parse_fw_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"i2c-scl-rising-time-ns\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"i2c-scl-falling-time-ns\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"i2c-scl-internal-delay-ns\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"i2c-sda-falling-time-ns\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"i2c-sda-hold-time-ns\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_parse_fw_timings(%struct.device* %0, %struct.i2c_timings* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_timings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.i2c_timings* %1, %struct.i2c_timings** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %9 = call i32 @memset(%struct.i2c_timings* %8, i32 0, i32 24)
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %11, i32 0, i32 0
  %13 = call i32 @device_property_read_u32(%struct.device* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %20, i32 0, i32 0
  store i32 100000, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16, %3
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %24, i32 0, i32 1
  %26 = call i32 @device_property_read_u32(%struct.device* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 100000
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %38, i32 0, i32 1
  store i32 1000, i32* %39, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %42 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 400000
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %46, i32 0, i32 1
  store i32 300, i32* %47, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %49, i32 0, i32 1
  store i32 120, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %29, %22
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %55, i32 0, i32 2
  %57 = call i32 @device_property_read_u32(%struct.device* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 400000
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %70 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %69, i32 0, i32 2
  store i32 300, i32* %70, align 4
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %72, i32 0, i32 2
  store i32 120, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %60, %53
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %77, i32 0, i32 3
  %79 = call i32 @device_property_read_u32(%struct.device* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %82 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %81, i32 0, i32 4
  %83 = call i32 @device_property_read_u32(%struct.device* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %94 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %86, %75
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load %struct.i2c_timings*, %struct.i2c_timings** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %97, i32 0, i32 5
  %99 = call i32 @device_property_read_u32(%struct.device* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %98)
  ret void
}

declare dso_local i32 @memset(%struct.i2c_timings*, i32, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
