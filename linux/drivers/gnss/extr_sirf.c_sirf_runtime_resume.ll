; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sirf_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sirf_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sirf_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.sirf_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.sirf_data* %7, %struct.sirf_data** %4, align 8
  %8 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %9 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @regulator_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %18 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %23 = call i32 @sirf_set_active(%struct.sirf_data* %22, i32 1)
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %16
  %25 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %26 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_enable(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %32
  %35 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %36 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @regulator_disable(i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %33, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.sirf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @sirf_set_active(%struct.sirf_data*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
