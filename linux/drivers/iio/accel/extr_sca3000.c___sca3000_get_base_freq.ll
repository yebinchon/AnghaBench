; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c___sca3000_get_base_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c___sca3000_get_base_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32* }
%struct.sca3000_chip_info = type { i32, i32, i32 }

@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*, %struct.sca3000_chip_info*, i32*)* @__sca3000_get_base_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sca3000_get_base_freq(%struct.sca3000_state* %0, %struct.sca3000_chip_info* %1, i32* %2) #0 {
  %4 = alloca %struct.sca3000_state*, align 8
  %5 = alloca %struct.sca3000_chip_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sca3000_state* %0, %struct.sca3000_state** %4, align 8
  store %struct.sca3000_chip_info* %1, %struct.sca3000_chip_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %9 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %10 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %8, i32 %9, i32 1)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %17 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %15, %20
  switch i32 %21, label %37 [
    i32 130, label %22
    i32 129, label %27
    i32 128, label %32
  ]

22:                                               ; preds = %14
  %23 = load %struct.sca3000_chip_info*, %struct.sca3000_chip_info** %5, align 8
  %24 = getelementptr inbounds %struct.sca3000_chip_info, %struct.sca3000_chip_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %40

27:                                               ; preds = %14
  %28 = load %struct.sca3000_chip_info*, %struct.sca3000_chip_info** %5, align 8
  %29 = getelementptr inbounds %struct.sca3000_chip_info, %struct.sca3000_chip_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %40

32:                                               ; preds = %14
  %33 = load %struct.sca3000_chip_info*, %struct.sca3000_chip_info** %5, align 8
  %34 = getelementptr inbounds %struct.sca3000_chip_info, %struct.sca3000_chip_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %40

37:                                               ; preds = %14
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %32, %27, %22
  br label %41

41:                                               ; preds = %40, %13
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
