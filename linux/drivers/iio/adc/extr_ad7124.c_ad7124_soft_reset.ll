; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7124.c_ad7124_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7124_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AD7124_STATUS = common dso_local global i32 0, align 4
@AD7124_STATUS_POR_FLAG_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Soft reset failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7124_state*)* @ad7124_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7124_soft_reset(%struct.ad7124_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad7124_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad7124_state* %0, %struct.ad7124_state** %3, align 8
  %7 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %8 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %7, i32 0, i32 0
  %9 = call i32 @ad_sd_reset(%struct.TYPE_5__* %8, i32 64)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  store i32 100, i32* %5, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %17 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %16, i32 0, i32 0
  %18 = load i32, i32* @AD7124_STATUS, align 4
  %19 = call i32 @ad_sd_read_reg(%struct.TYPE_5__* %17, i32 %18, i32 1, i32* %4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @AD7124_STATUS_POR_FLAG_MSK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %45

30:                                               ; preds = %24
  %31 = call i32 @usleep_range(i32 100, i32 2000)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %15, label %36

36:                                               ; preds = %32
  %37 = load %struct.ad7124_state*, %struct.ad7124_state** %3, align 8
  %38 = getelementptr inbounds %struct.ad7124_state, %struct.ad7124_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %36, %29, %22, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ad_sd_reset(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ad_sd_read_reg(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
