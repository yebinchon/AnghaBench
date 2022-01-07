; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_raw_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_raw_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32 }

@SCA3000_REG_CTRL_SEL_OUT_CTRL = common dso_local global i32 0, align 4
@SCA3000_REG_OUT_CTRL_BUF_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*, i32*)* @sca3000_read_raw_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_raw_samp_freq(%struct.sca3000_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sca3000_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sca3000_state* %0, %struct.sca3000_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %8 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %9 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @__sca3000_get_base_freq(%struct.sca3000_state* %7, i32 %10, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %19 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %20 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %17
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* @SCA3000_REG_OUT_CTRL_BUF_DIV_MASK, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 128, label %38
  ]

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %35, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %29, %38, %34
  br label %43

43:                                               ; preds = %42, %25
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %23, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @__sca3000_get_base_freq(%struct.sca3000_state*, i32, i32*) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
