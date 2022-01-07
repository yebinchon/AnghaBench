; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_set_thresh_hi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_set_thresh_hi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds9300_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@APDS9300_THRESH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@APDS9300_THRESHHIGHLOW = common dso_local global i32 0, align 4
@APDS9300_CMD = common dso_local global i32 0, align 4
@APDS9300_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to set thresh_hi\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds9300_data*, i32)* @apds9300_set_thresh_hi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9300_set_thresh_hi(%struct.apds9300_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apds9300_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.apds9300_data* %0, %struct.apds9300_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %8 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @APDS9300_THRESH_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %14
  %22 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %23 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @APDS9300_THRESHHIGHLOW, align 4
  %26 = load i32, i32* @APDS9300_CMD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @APDS9300_WORD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @i2c_smbus_write_word_data(%struct.TYPE_2__* %24, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %21
  %35 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %36 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %21
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.apds9300_data*, %struct.apds9300_data** %4, align 8
  %44 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %34, %18, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_smbus_write_word_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
