; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_set_iso_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_set_iso_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.fw_iso_context* }
%struct.fw_iso_context = type { i32 }
%union.ioctl_arg = type { %struct.fw_cdev_set_iso_channels }
%struct.fw_cdev_set_iso_channels = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_set_iso_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_set_iso_channels(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_set_iso_channels*, align 8
  %7 = alloca %struct.fw_iso_context*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %8 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %9 = bitcast %union.ioctl_arg* %8 to %struct.fw_cdev_set_iso_channels*
  store %struct.fw_cdev_set_iso_channels* %9, %struct.fw_cdev_set_iso_channels** %6, align 8
  %10 = load %struct.client*, %struct.client** %4, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 0
  %12 = load %struct.fw_iso_context*, %struct.fw_iso_context** %11, align 8
  store %struct.fw_iso_context* %12, %struct.fw_iso_context** %7, align 8
  %13 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %14 = icmp eq %struct.fw_iso_context* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.fw_cdev_set_iso_channels*, %struct.fw_cdev_set_iso_channels** %6, align 8
  %17 = getelementptr inbounds %struct.fw_cdev_set_iso_channels, %struct.fw_cdev_set_iso_channels* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load %struct.fw_iso_context*, %struct.fw_iso_context** %7, align 8
  %25 = load %struct.fw_cdev_set_iso_channels*, %struct.fw_cdev_set_iso_channels** %6, align 8
  %26 = getelementptr inbounds %struct.fw_cdev_set_iso_channels, %struct.fw_cdev_set_iso_channels* %25, i32 0, i32 1
  %27 = call i32 @fw_iso_context_set_channels(%struct.fw_iso_context* %24, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @fw_iso_context_set_channels(%struct.fw_iso_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
