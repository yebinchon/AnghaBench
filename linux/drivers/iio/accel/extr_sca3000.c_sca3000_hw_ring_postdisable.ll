; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_hw_ring_postdisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_hw_ring_postdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_INT_MASK_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_RING_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @sca3000_hw_ring_postdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_hw_ring_postdisable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sca3000_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %6)
  store %struct.sca3000_state* %7, %struct.sca3000_state** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call i32 @__sca3000_hw_ring_state_set(%struct.iio_dev* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %16 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %19 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %20 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %18, i32 %19, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %36

24:                                               ; preds = %14
  %25 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %26 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %27 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %28 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SCA3000_REG_INT_MASK_RING_HALF, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @sca3000_write_reg(%struct.sca3000_state* %25, i32 %26, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %23
  %37 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %38 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @__sca3000_hw_ring_state_set(%struct.iio_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
