; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_pwrdwn_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ti-dac5571.c_dac5571_pwrdwn_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dac5571_data = type { i32*, i32 }

@DAC5571_SINGLE_PWRDWN_BITS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dac5571_data*, i32, i32)* @dac5571_pwrdwn_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac5571_pwrdwn_single(%struct.dac5571_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dac5571_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dac5571_data* %0, %struct.dac5571_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %9 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DAC5571_SINGLE_PWRDWN_BITS, align 4
  %14 = shl i32 %12, %13
  %15 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %16 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %20 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dac5571_data*, %struct.dac5571_data** %5, align 8
  %23 = getelementptr inbounds %struct.dac5571_data, %struct.dac5571_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @i2c_master_send(i32 %21, i32* %24, i32 2)
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
