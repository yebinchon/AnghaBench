; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tmp421_data = type { i32, i32* }

@TMP421_CONFIG_RANGE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, i64*)* @tmp421_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp421_read(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.tmp421_data*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.tmp421_data* @tmp421_update_device(%struct.device* %13)
  store %struct.tmp421_data* %14, %struct.tmp421_data** %12, align 8
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %55 [
    i32 128, label %16
    i32 129, label %44
  ]

16:                                               ; preds = %5
  %17 = load %struct.tmp421_data*, %struct.tmp421_data** %12, align 8
  %18 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TMP421_CONFIG_RANGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.tmp421_data*, %struct.tmp421_data** %12, align 8
  %25 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @temp_from_u16(i32 %30)
  %32 = load i64*, i64** %11, align 8
  store i64 %31, i64* %32, align 8
  br label %43

33:                                               ; preds = %16
  %34 = load %struct.tmp421_data*, %struct.tmp421_data** %12, align 8
  %35 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @temp_from_s16(i32 %40)
  %42 = load i64*, i64** %11, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %23
  store i32 0, i32* %6, align 4
  br label %58

44:                                               ; preds = %5
  %45 = load %struct.tmp421_data*, %struct.tmp421_data** %12, align 8
  %46 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %11, align 8
  store i64 %53, i64* %54, align 8
  store i32 0, i32* %6, align 4
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %44, %43
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.tmp421_data* @tmp421_update_device(%struct.device*) #1

declare dso_local i64 @temp_from_u16(i32) #1

declare dso_local i64 @temp_from_s16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
