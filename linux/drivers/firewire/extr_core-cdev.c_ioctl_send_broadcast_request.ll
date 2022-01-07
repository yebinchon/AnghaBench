; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_broadcast_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_broadcast_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%union.ioctl_arg = type { %struct.fw_cdev_send_request }
%struct.fw_cdev_send_request = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_CONFIG_ROM_END = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@LOCAL_BUS = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_send_broadcast_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_send_broadcast_request(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_send_request*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %7 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %8 = bitcast %union.ioctl_arg* %7 to %struct.fw_cdev_send_request*
  store %struct.fw_cdev_send_request* %8, %struct.fw_cdev_send_request** %6, align 8
  %9 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %6, align 8
  %10 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %13 [
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %2, %2
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %12
  %17 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %6, align 8
  %18 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %21 = load i64, i64* @CSR_CONFIG_ROM_END, align 8
  %22 = add nsw i64 %20, %21
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.client*, %struct.client** %4, align 8
  %29 = load %struct.fw_cdev_send_request*, %struct.fw_cdev_send_request** %6, align 8
  %30 = load i32, i32* @LOCAL_BUS, align 4
  %31 = or i32 %30, 63
  %32 = load i32, i32* @SCODE_100, align 4
  %33 = call i32 @init_request(%struct.client* %28, %struct.fw_cdev_send_request* %29, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %24, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @init_request(%struct.client*, %struct.fw_cdev_send_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
