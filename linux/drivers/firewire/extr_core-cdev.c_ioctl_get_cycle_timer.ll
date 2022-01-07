; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_get_cycle_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_get_cycle_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%union.ioctl_arg = type { %struct.fw_cdev_get_cycle_timer }
%struct.fw_cdev_get_cycle_timer = type { i32, i32 }
%struct.fw_cdev_get_cycle_timer2 = type { i32, i32, i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_get_cycle_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_get_cycle_timer(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca %union.ioctl_arg*, align 8
  %5 = alloca %struct.fw_cdev_get_cycle_timer*, align 8
  %6 = alloca %struct.fw_cdev_get_cycle_timer2, align 4
  store %struct.client* %0, %struct.client** %3, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %4, align 8
  %7 = load %union.ioctl_arg*, %union.ioctl_arg** %4, align 8
  %8 = bitcast %union.ioctl_arg* %7 to %struct.fw_cdev_get_cycle_timer*
  store %struct.fw_cdev_get_cycle_timer* %8, %struct.fw_cdev_get_cycle_timer** %5, align 8
  %9 = load i32, i32* @CLOCK_REALTIME, align 4
  %10 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %6, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = load %struct.client*, %struct.client** %3, align 8
  %12 = bitcast %struct.fw_cdev_get_cycle_timer2* %6 to %union.ioctl_arg*
  %13 = call i32 @ioctl_get_cycle_timer2(%struct.client* %11, %union.ioctl_arg* %12)
  %14 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %6, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @USEC_PER_SEC, align 4
  %17 = mul nsw i32 %15, %16
  %18 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NSEC_PER_USEC, align 4
  %21 = sdiv i32 %19, %20
  %22 = add nsw i32 %17, %21
  %23 = load %struct.fw_cdev_get_cycle_timer*, %struct.fw_cdev_get_cycle_timer** %5, align 8
  %24 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer, %struct.fw_cdev_get_cycle_timer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, %struct.fw_cdev_get_cycle_timer2* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fw_cdev_get_cycle_timer*, %struct.fw_cdev_get_cycle_timer** %5, align 8
  %28 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer, %struct.fw_cdev_get_cycle_timer* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @ioctl_get_cycle_timer2(%struct.client*, %union.ioctl_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
