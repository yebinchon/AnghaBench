; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_match_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_match_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1363_mode = type { i32 }
%struct.max1363_chip_info = type { i32, i64* }

@max1363_mode_table = common dso_local global %struct.max1363_mode* null, align 8
@MAX1363_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max1363_mode* (i64*, %struct.max1363_chip_info*)* @max1363_match_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max1363_mode* @max1363_match_mode(i64* %0, %struct.max1363_chip_info* %1) #0 {
  %3 = alloca %struct.max1363_mode*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.max1363_chip_info*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.max1363_chip_info* %1, %struct.max1363_chip_info** %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %43, %9
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.max1363_chip_info*, %struct.max1363_chip_info** %5, align 8
  %13 = getelementptr inbounds %struct.max1363_chip_info, %struct.max1363_chip_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load i64*, i64** %4, align 8
  %18 = load %struct.max1363_mode*, %struct.max1363_mode** @max1363_mode_table, align 8
  %19 = load %struct.max1363_chip_info*, %struct.max1363_chip_info** %5, align 8
  %20 = getelementptr inbounds %struct.max1363_chip_info, %struct.max1363_chip_info* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.max1363_mode, %struct.max1363_mode* %18, i64 %25
  %27 = getelementptr inbounds %struct.max1363_mode, %struct.max1363_mode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX1363_MAX_CHANNELS, align 4
  %30 = call i64 @bitmap_subset(i64* %17, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %16
  %33 = load %struct.max1363_mode*, %struct.max1363_mode** @max1363_mode_table, align 8
  %34 = load %struct.max1363_chip_info*, %struct.max1363_chip_info** %5, align 8
  %35 = getelementptr inbounds %struct.max1363_chip_info, %struct.max1363_chip_info* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.max1363_mode, %struct.max1363_mode* %33, i64 %40
  store %struct.max1363_mode* %41, %struct.max1363_mode** %3, align 8
  br label %48

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %10

46:                                               ; preds = %10
  br label %47

47:                                               ; preds = %46, %2
  store %struct.max1363_mode* null, %struct.max1363_mode** %3, align 8
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.max1363_mode*, %struct.max1363_mode** %3, align 8
  ret %struct.max1363_mode* %49
}

declare dso_local i64 @bitmap_subset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
