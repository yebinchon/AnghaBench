; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_init_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_init_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_init_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_init_dp(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %5 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %6 = call i32 @analogix_dp_reset(%struct.analogix_dp_device* %5)
  %7 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %8 = call i32 @analogix_dp_swreset(%struct.analogix_dp_device* %7)
  %9 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %10 = call i32 @analogix_dp_init_analog_param(%struct.analogix_dp_device* %9)
  %11 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %12 = call i32 @analogix_dp_init_interrupt(%struct.analogix_dp_device* %11)
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %14 = call i32 @analogix_dp_enable_sw_function(%struct.analogix_dp_device* %13)
  %15 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %16 = call i32 @analogix_dp_config_interrupt(%struct.analogix_dp_device* %15)
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %18 = call i32 @analogix_dp_init_analog_func(%struct.analogix_dp_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %25 = call i32 @analogix_dp_init_hpd(%struct.analogix_dp_device* %24)
  %26 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %27 = call i32 @analogix_dp_init_aux(%struct.analogix_dp_device* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @analogix_dp_reset(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_swreset(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_init_analog_param(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_init_interrupt(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_enable_sw_function(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_config_interrupt(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_init_analog_func(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_init_hpd(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_init_aux(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
