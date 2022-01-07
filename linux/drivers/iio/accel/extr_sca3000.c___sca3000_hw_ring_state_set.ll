; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c___sca3000_hw_ring_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c___sca3000_hw_ring_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"supposedly enabling ring buffer\0A\00", align 1
@SCA3000_REG_MODE_RING_BUF_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @__sca3000_hw_ring_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sca3000_hw_ring_state_set(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sca3000_state*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.sca3000_state* %8, %struct.sca3000_state** %5, align 8
  %9 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %10 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %13 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %14 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %12, i32 %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %48

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %26 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %27 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %28 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCA3000_REG_MODE_RING_BUF_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @sca3000_write_reg(%struct.sca3000_state* %25, i32 %26, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %47

35:                                               ; preds = %18
  %36 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %37 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %38 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %39 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SCA3000_REG_MODE_RING_BUF_ENABLE, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @sca3000_write_reg(%struct.sca3000_state* %36, i32 %37, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %35, %21
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %50 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
