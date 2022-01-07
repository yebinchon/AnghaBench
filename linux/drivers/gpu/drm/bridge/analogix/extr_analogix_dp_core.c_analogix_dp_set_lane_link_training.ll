; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_set_lane_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_set_lane_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.analogix_dp_device*, i32, i32)* @analogix_dp_set_lane_link_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analogix_dp_set_lane_link_training(%struct.analogix_dp_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %24 [
    i32 0, label %8
    i32 1, label %12
    i32 2, label %16
    i32 3, label %20
  ]

8:                                                ; preds = %3
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @analogix_dp_set_lane0_link_training(%struct.analogix_dp_device* %9, i32 %10)
  br label %24

12:                                               ; preds = %3
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @analogix_dp_set_lane1_link_training(%struct.analogix_dp_device* %13, i32 %14)
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @analogix_dp_set_lane2_link_training(%struct.analogix_dp_device* %17, i32 %18)
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @analogix_dp_set_lane3_link_training(%struct.analogix_dp_device* %21, i32 %22)
  br label %24

24:                                               ; preds = %3, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @analogix_dp_set_lane0_link_training(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_set_lane1_link_training(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_set_lane2_link_training(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_set_lane3_link_training(%struct.analogix_dp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
