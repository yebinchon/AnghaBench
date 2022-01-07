; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_print_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_print_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_REVID_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sca3000 revision major=%lu, minor=%lu\0A\00", align 1
@SCA3000_REG_REVID_MAJOR_MASK = common dso_local global i32 0, align 4
@SCA3000_REG_REVID_MINOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @sca3000_print_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_print_rev(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sca3000_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %5)
  store %struct.sca3000_state* %6, %struct.sca3000_state** %4, align 8
  %7 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %8 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %11 = load i32, i32* @SCA3000_REG_REVID_ADDR, align 4
  %12 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %10, i32 %11, i32 1)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %20 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SCA3000_REG_REVID_MAJOR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %27 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SCA3000_REG_REVID_MINOR_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %16, %15
  %35 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %36 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
