; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_hw_ring_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_hw_ring_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_INT_MASK_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_RING_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @sca3000_hw_ring_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_hw_ring_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sca3000_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %6)
  store %struct.sca3000_state* %7, %struct.sca3000_state** %5, align 8
  %8 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %9 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %12 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %13 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %11, i32 %12, i32 1)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %19 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %20 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %21 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCA3000_REG_INT_MASK_RING_HALF, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @sca3000_write_reg(%struct.sca3000_state* %18, i32 %19, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %37

31:                                               ; preds = %17
  %32 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %33 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %36 = call i32 @__sca3000_hw_ring_state_set(%struct.iio_dev* %35, i32 1)
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %30, %16
  %38 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %39 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__sca3000_hw_ring_state_set(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
