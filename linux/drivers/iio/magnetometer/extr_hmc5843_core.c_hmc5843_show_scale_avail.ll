; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_show_scale_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_core.c_hmc5843_show_scale_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hmc5843_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"0.%09d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @hmc5843_show_scale_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hmc5843_show_scale_avail(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hmc5843_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_to_iio_dev(%struct.device* %10)
  %12 = call %struct.hmc5843_data* @iio_priv(i32 %11)
  store %struct.hmc5843_data* %12, %struct.hmc5843_data** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %40, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %16 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %25, %26
  %28 = load %struct.hmc5843_data*, %struct.hmc5843_data** %7, align 8
  %29 = getelementptr inbounds %struct.hmc5843_data, %struct.hmc5843_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @scnprintf(i8* %24, i64 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 10, i8* %47, align 1
  %48 = load i64, i64* %8, align 8
  ret i64 %48
}

declare dso_local %struct.hmc5843_data* @iio_priv(i32) #1

declare dso_local i32 @dev_to_iio_dev(%struct.device*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
