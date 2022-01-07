; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sirf_data = type { i32, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to reenable power on failed suspend: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sirf_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sirf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sirf_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.sirf_data* %8, %struct.sirf_data** %4, align 8
  %9 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %10 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %15 = call i32 @sirf_set_active(%struct.sirf_data* %14, i32 0)
  store i32 %15, i32* %6, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %18 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regulator_disable(i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %21
  %27 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %28 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regulator_disable(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %57

35:                                               ; preds = %33
  %36 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %37 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %42 = call i32 @sirf_set_active(%struct.sirf_data* %41, i32 1)
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %45 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regulator_enable(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %34, %24
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.sirf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sirf_set_active(%struct.sirf_data*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
