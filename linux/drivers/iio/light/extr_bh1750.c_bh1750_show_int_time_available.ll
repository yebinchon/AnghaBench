; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_show_int_time_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_show_int_time_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bh1750_data = type { %struct.bh1750_chip_info* }
%struct.bh1750_chip_info = type { i32, i32, i32, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"0.%06d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @bh1750_show_int_time_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bh1750_show_int_time_available(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bh1750_data*, align 8
  %10 = alloca %struct.bh1750_chip_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_to_iio_dev(%struct.device* %11)
  %13 = call %struct.bh1750_data* @iio_priv(i32 %12)
  store %struct.bh1750_data* %13, %struct.bh1750_data** %9, align 8
  %14 = load %struct.bh1750_data*, %struct.bh1750_data** %9, align 8
  %15 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %14, i32 0, i32 0
  %16 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %15, align 8
  store %struct.bh1750_chip_info* %16, %struct.bh1750_chip_info** %10, align 8
  %17 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %10, align 8
  %18 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %41, %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %10, align 8
  %23 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %30, %31
  %33 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %10, align 8
  %34 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i64 @scnprintf(i8* %29, i64 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %26
  %42 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %10, align 8
  %43 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %20

49:                                               ; preds = %20
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 10, i8* %53, align 1
  %54 = load i64, i64* %8, align 8
  ret i64 %54
}

declare dso_local %struct.bh1750_data* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
