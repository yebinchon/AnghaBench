; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-arb-gpio-challenge.c_i2c_arbitrator_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-arb-gpio-challenge.c_i2c_arbitrator_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.i2c_arbitrator_data = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not claim bus, timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @i2c_arbitrator_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_arbitrator_select(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_arbitrator_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %11 = call %struct.i2c_arbitrator_data* @i2c_mux_priv(%struct.i2c_mux_core* %10)
  store %struct.i2c_arbitrator_data* %11, %struct.i2c_arbitrator_data** %6, align 8
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usecs_to_jiffies(i32 %15)
  %17 = add nsw i32 %12, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %65, %2
  %21 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_set_value(i32 %23, i32 1)
  %25 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @udelay(i32 %27)
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usecs_to_jiffies(i32 %32)
  %34 = add nsw i32 %29, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %50, %20
  %38 = load i32, i32* @jiffies, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @time_before(i32 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpiod_get_value(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %85

50:                                               ; preds = %42
  %51 = call i32 @usleep_range(i32 50, i32 200)
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %54 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpiod_set_value(i32 %55, i32 0)
  %57 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %58 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 2
  %64 = call i32 @usleep_range(i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* @jiffies, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @time_before(i32 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %20, label %70

70:                                               ; preds = %65
  %71 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %72 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @gpiod_set_value(i32 %73, i32 0)
  %75 = load %struct.i2c_arbitrator_data*, %struct.i2c_arbitrator_data** %6, align 8
  %76 = getelementptr inbounds %struct.i2c_arbitrator_data, %struct.i2c_arbitrator_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @udelay(i32 %77)
  %79 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %70, %49
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.i2c_arbitrator_data* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
