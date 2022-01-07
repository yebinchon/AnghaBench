; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_show_master_mode_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_show_master_mode_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_trigger = type { i32 }

@MASTER_MODE2_MAX = common dso_local global i32 0, align 4
@MASTER_MODE_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@master_mode_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @stm32_tt_show_master_mode_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stm32_tt_show_master_mode_avail(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iio_trigger*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.iio_trigger* @to_iio_trigger(%struct.device* %11)
  store %struct.iio_trigger* %12, %struct.iio_trigger** %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.iio_trigger*, %struct.iio_trigger** %7, align 8
  %14 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @stm32_timer_is_trgo2_name(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MASTER_MODE2_MAX, align 4
  store i32 %19, i32* %9, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MASTER_MODE_MAX, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %18
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %31, %32
  %34 = load i32*, i32** @master_mode_table, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @scnprintf(i8* %30, i64 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 10, i8* %49, align 1
  %50 = load i64, i64* %10, align 8
  ret i64 %50
}

declare dso_local %struct.iio_trigger* @to_iio_trigger(%struct.device*) #1

declare dso_local i64 @stm32_timer_is_trgo2_name(i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
