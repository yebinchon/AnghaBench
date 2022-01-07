; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_initial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_initial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1363_state = type { i32, i32, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i64 }

@MAX1363_SETUP_INT_CLOCK = common dso_local global i32 0, align 4
@MAX1363_SETUP_UNIPOLAR = common dso_local global i32 0, align 4
@MAX1363_SETUP_NORESET = common dso_local global i32 0, align 4
@MAX1363_SETUP_AIN3_IS_REF_EXT_TO_REF = common dso_local global i32 0, align 4
@MAX1363_SETUP_POWER_UP_INT_REF = common dso_local global i32 0, align 4
@MAX1363_SETUP_AIN3_IS_AIN3_REF_IS_INT = common dso_local global i32 0, align 4
@max1363_mode_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max1363_state*)* @max1363_initial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_initial_setup(%struct.max1363_state* %0) #0 {
  %2 = alloca %struct.max1363_state*, align 8
  store %struct.max1363_state* %0, %struct.max1363_state** %2, align 8
  %3 = load i32, i32* @MAX1363_SETUP_INT_CLOCK, align 4
  %4 = load i32, i32* @MAX1363_SETUP_UNIPOLAR, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MAX1363_SETUP_NORESET, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %9 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %11 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @MAX1363_SETUP_AIN3_IS_REF_EXT_TO_REF, align 4
  %16 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %17 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @MAX1363_SETUP_POWER_UP_INT_REF, align 4
  %22 = load i32, i32* @MAX1363_SETUP_AIN3_IS_AIN3_REF_IS_INT, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %25 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %20, %14
  %29 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %30 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MAX1363_SETUP_BYTE(i32 %31)
  %33 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %34 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** @max1363_mode_table, align 8
  %36 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %37 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %43 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %45 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MAX1363_CONFIG_BYTE(i32 %46)
  %48 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %49 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %51 = call i32 @max1363_set_scan_mode(%struct.max1363_state* %50)
  ret i32 %51
}

declare dso_local i32 @MAX1363_SETUP_BYTE(i32) #1

declare dso_local i32 @MAX1363_CONFIG_BYTE(i32) #1

declare dso_local i32 @max1363_set_scan_mode(%struct.max1363_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
