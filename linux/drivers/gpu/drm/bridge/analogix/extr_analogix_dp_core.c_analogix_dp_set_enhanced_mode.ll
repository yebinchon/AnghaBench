; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_set_enhanced_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_set_enhanced_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_set_enhanced_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_set_enhanced_mode(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %7 = call i32 @analogix_dp_is_enhanced_mode_available(%struct.analogix_dp_device* %6, i32* %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @analogix_dp_enable_rx_to_enhanced_mode(%struct.analogix_dp_device* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @analogix_dp_enable_enhanced_mode(%struct.analogix_dp_device* %21, i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @analogix_dp_is_enhanced_mode_available(%struct.analogix_dp_device*, i32*) #1

declare dso_local i32 @analogix_dp_enable_rx_to_enhanced_mode(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_enable_enhanced_mode(%struct.analogix_dp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
