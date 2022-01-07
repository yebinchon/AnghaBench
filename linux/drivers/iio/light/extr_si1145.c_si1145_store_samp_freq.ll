; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_store_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_store_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1145_data = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1145_data*, i32)* @si1145_store_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_store_samp_freq(%struct.si1145_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si1145_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.si1145_data* %0, %struct.si1145_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 32000
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 32000, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %20 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %23 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @si1145_set_meas_rate(%struct.si1145_data* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %51

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %36 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %44 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %50

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @si1145_compress(i32 %46)
  %48 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %49 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %53 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si1145_set_meas_rate(%struct.si1145_data*, i32) #1

declare dso_local i32 @si1145_compress(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
