; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.c_octeon_i2c_hlc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i32, i32, i64, {}*, %struct.TYPE_2__, i32, {}* }
%struct.TYPE_2__ = type { i64 }

@I2C_OCTEON_EVENT_WAIT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"broken irq connection detected, switching to polling mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*)* @octeon_i2c_hlc_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_hlc_wait(%struct.octeon_i2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %3, align 8
  %6 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  %11 = call i64 (...) @get_jiffies_64()
  %12 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %11, %15
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %28, %10
  %18 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %19 = call i64 @octeon_i2c_hlc_test_valid(%struct.octeon_i2c* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = call i64 (...) @get_jiffies_64()
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @time_before64(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load i32, i32* @I2C_OCTEON_EVENT_WAIT, align 4
  %30 = sdiv i32 %29, 2
  %31 = load i32, i32* @I2C_OCTEON_EVENT_WAIT, align 4
  %32 = call i32 @usleep_range(i32 %30, i32 %31)
  br label %17

33:                                               ; preds = %26
  %34 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %35 = call i64 @octeon_i2c_hlc_test_valid(%struct.octeon_i2c* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  store i32 %42, i32* %2, align 4
  br label %97

43:                                               ; preds = %1
  %44 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %45 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %44, i32 0, i32 6
  %46 = bitcast {}** %45 to i32 (%struct.octeon_i2c*)**
  %47 = load i32 (%struct.octeon_i2c*)*, i32 (%struct.octeon_i2c*)** %46, align 8
  %48 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %49 = call i32 %47(%struct.octeon_i2c* %48)
  %50 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %51 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %54 = call i64 @octeon_i2c_hlc_test_valid(%struct.octeon_i2c* %53)
  %55 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %56 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @wait_event_timeout(i32 %52, i64 %54, i64 %58)
  store i32 %59, i32* %4, align 4
  %60 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %61 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %60, i32 0, i32 3
  %62 = bitcast {}** %61 to i32 (%struct.octeon_i2c*)**
  %63 = load i32 (%struct.octeon_i2c*)*, i32 (%struct.octeon_i2c*)** %62, align 8
  %64 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %65 = call i32 %63(%struct.octeon_i2c* %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %43
  %69 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %70 = call i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c* %69)
  br label %71

71:                                               ; preds = %68, %43
  %72 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %73 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %81 = call i64 @octeon_i2c_hlc_test_valid(%struct.octeon_i2c* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %85 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.octeon_i2c*, %struct.octeon_i2c** %3, align 8
  %89 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  store i32 0, i32* %2, align 4
  br label %97

90:                                               ; preds = %79, %76, %71
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @ETIMEDOUT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %93, %83, %41
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i64 @octeon_i2c_hlc_test_valid(%struct.octeon_i2c*) #1

declare dso_local i64 @time_before64(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i64) #1

declare dso_local i32 @octeon_i2c_hlc_int_clear(%struct.octeon_i2c*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
