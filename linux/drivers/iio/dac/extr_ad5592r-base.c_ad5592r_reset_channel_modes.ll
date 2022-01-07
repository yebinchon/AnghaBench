; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_reset_channel_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_reset_channel_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5592r_state = type { i32* }

@CH_MODE_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5592r_state*)* @ad5592r_reset_channel_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5592r_reset_channel_modes(%struct.ad5592r_state* %0) #0 {
  %2 = alloca %struct.ad5592r_state*, align 8
  %3 = alloca i32, align 4
  store %struct.ad5592r_state* %0, %struct.ad5592r_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %7 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load i32, i32* @CH_MODE_UNUSED, align 4
  %13 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %14 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %12, i32* %18, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %24 = call i32 @ad5592r_set_channel_modes(%struct.ad5592r_state* %23)
  ret i32 %24
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ad5592r_set_channel_modes(%struct.ad5592r_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
