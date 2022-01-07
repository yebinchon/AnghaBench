; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_stop_all_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_stop_all_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_INT_MASK_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_RING_THREE_QUARTER = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_RING_HALF = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_ALL_INTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*)* @sca3000_stop_all_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_stop_all_interrupts(%struct.sca3000_state* %0) #0 {
  %2 = alloca %struct.sca3000_state*, align 8
  %3 = alloca i32, align 4
  store %struct.sca3000_state* %0, %struct.sca3000_state** %2, align 8
  %4 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %5 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %8 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %9 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %7, i32 %8, i32 1)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %15 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %17 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SCA3000_REG_INT_MASK_RING_THREE_QUARTER, align 4
  %22 = load i32, i32* @SCA3000_REG_INT_MASK_RING_HALF, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SCA3000_REG_INT_MASK_ALL_INTS, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %20, %26
  %28 = call i32 @sca3000_write_reg(%struct.sca3000_state* %14, i32 %15, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %13, %12
  %30 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %31 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

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
