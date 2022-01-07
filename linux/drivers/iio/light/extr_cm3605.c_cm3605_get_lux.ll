; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3605.c_cm3605_get_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3605.c_cm3605_get_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm3605 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"read %d mV from ADC\0A\00", align 1
@CM3605_AOUT_MAX_MV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"device out of range\0A\00", align 1
@CM3605_AOUT_TYP_MAX_MV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm3605*)* @cm3605_get_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3605_get_lux(%struct.cm3605* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm3605*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cm3605* %0, %struct.cm3605** %3, align 8
  %7 = load %struct.cm3605*, %struct.cm3605** %3, align 8
  %8 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @iio_read_channel_processed(i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.cm3605*, %struct.cm3605** %3, align 8
  %17 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 30
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %45

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CM3605_AOUT_MAX_MV, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.cm3605*, %struct.cm3605** %3, align 8
  %30 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 30
  store i32 %35, i32* %6, align 4
  %36 = load %struct.cm3605*, %struct.cm3605** %3, align 8
  %37 = getelementptr inbounds %struct.cm3605, %struct.cm3605* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CM3605_AOUT_TYP_MAX_MV, align 4
  %43 = call i32 @div64_s64(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %33, %23, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @iio_read_channel_processed(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @div64_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
