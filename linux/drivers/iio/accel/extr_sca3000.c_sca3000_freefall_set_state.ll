; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_freefall_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_freefall_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32* }

@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_FREE_FALL_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @sca3000_freefall_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_freefall_set_state(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sca3000_state*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.sca3000_state* %9, %struct.sca3000_state** %6, align 8
  %10 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %11 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %12 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %10, i32 %11, i32 1)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %22 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SCA3000_REG_MODE_FREE_FALL_DETECT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %20
  %30 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %31 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %32 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %33 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SCA3000_REG_MODE_FREE_FALL_DETECT, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @sca3000_write_reg(%struct.sca3000_state* %30, i32 %31, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %20, %17
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %40
  %44 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %45 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SCA3000_REG_MODE_FREE_FALL_DETECT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %43
  %53 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %54 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %55 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %56 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SCA3000_REG_MODE_FREE_FALL_DETECT, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 @sca3000_write_reg(%struct.sca3000_state* %53, i32 %54, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %52, %29, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
