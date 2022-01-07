; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_cleaning_period_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_cleaning_period_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.sps30_state = type { i32 }

@SPS30_READ_AUTO_CLEANING_PERIOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cleaning_period_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleaning_period_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.sps30_state*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %8, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %15 = call %struct.sps30_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.sps30_state* %15, %struct.sps30_state** %9, align 8
  %16 = load %struct.sps30_state*, %struct.sps30_state** %9, align 8
  %17 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.sps30_state*, %struct.sps30_state** %9, align 8
  %20 = load i32, i32* @SPS30_READ_AUTO_CLEANING_PERIOD, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %22 = call i32 @sps30_do_cmd(%struct.sps30_state* %19, i32 %20, i32* %21, i32 4)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.sps30_state*, %struct.sps30_state** %9, align 8
  %24 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %33 = call i32 @get_unaligned_be32(i32* %32)
  %34 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.sps30_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sps30_do_cmd(%struct.sps30_state*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
