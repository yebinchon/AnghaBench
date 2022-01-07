; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_set_cycle_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_set_cycle_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rm3100_data = type { i32, i32 }

@RM3100_REG_CC_X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rm3100_data*, i32)* @rm3100_set_cycle_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm3100_set_cycle_count(%struct.rm3100_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rm3100_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rm3100_data* %0, %struct.rm3100_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load %struct.rm3100_data*, %struct.rm3100_data** %4, align 8
  %13 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @RM3100_REG_CC_X, align 8
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 2, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @regmap_write(i32 %14, i64 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %38 [
    i32 50, label %32
    i32 100, label %35
  ]

32:                                               ; preds = %30
  %33 = load %struct.rm3100_data*, %struct.rm3100_data** %4, align 8
  %34 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %33, i32 0, i32 0
  store i32 500, i32* %34, align 4
  br label %41

35:                                               ; preds = %30
  %36 = load %struct.rm3100_data*, %struct.rm3100_data** %4, align 8
  %37 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %36, i32 0, i32 0
  store i32 263, i32* %37, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.rm3100_data*, %struct.rm3100_data** %4, align 8
  %40 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %39, i32 0, i32 0
  store i32 133, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35, %32
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
