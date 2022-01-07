; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_receive_phy_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_receive_phy_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.fw_card* }
%struct.fw_card = type { i32, i32 }
%union.ioctl_arg = type { %struct.fw_cdev_receive_phy_packets }
%struct.fw_cdev_receive_phy_packets = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_receive_phy_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_receive_phy_packets(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_receive_phy_packets*, align 8
  %7 = alloca %struct.fw_card*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %8 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %9 = bitcast %union.ioctl_arg* %8 to %struct.fw_cdev_receive_phy_packets*
  store %struct.fw_cdev_receive_phy_packets* %9, %struct.fw_cdev_receive_phy_packets** %6, align 8
  %10 = load %struct.client*, %struct.client** %4, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.fw_card*, %struct.fw_card** %13, align 8
  store %struct.fw_card* %14, %struct.fw_card** %7, align 8
  %15 = load %struct.client*, %struct.client** %4, align 8
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %26 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.client*, %struct.client** %4, align 8
  %29 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 1
  %30 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %31 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %30, i32 0, i32 1
  %32 = call i32 @list_move_tail(i32* %29, i32* %31)
  %33 = load %struct.fw_cdev_receive_phy_packets*, %struct.fw_cdev_receive_phy_packets** %6, align 8
  %34 = getelementptr inbounds %struct.fw_cdev_receive_phy_packets, %struct.fw_cdev_receive_phy_packets* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.client*, %struct.client** %4, align 8
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %39 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_irq(i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %24, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
