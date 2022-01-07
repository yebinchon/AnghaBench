; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_phy_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_phy_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.fw_card* }
%struct.fw_card = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.fw_card*, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32 }
%union.ioctl_arg = type { %struct.fw_cdev_send_phy_packet }
%struct.fw_cdev_send_phy_packet = type { i32*, i32, i32 }
%struct.outbound_phy_packet_event = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.client* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@TCODE_LINK_INTERNAL = common dso_local global i32 0, align 4
@outbound_phy_packet_callback = common dso_local global i32 0, align 4
@FW_CDEV_EVENT_PHY_PACKET_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_send_phy_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_send_phy_packet(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_send_phy_packet*, align 8
  %7 = alloca %struct.fw_card*, align 8
  %8 = alloca %struct.outbound_phy_packet_event*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %9 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %10 = bitcast %union.ioctl_arg* %9 to %struct.fw_cdev_send_phy_packet*
  store %struct.fw_cdev_send_phy_packet* %10, %struct.fw_cdev_send_phy_packet** %6, align 8
  %11 = load %struct.client*, %struct.client** %4, align 8
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.fw_card*, %struct.fw_card** %14, align 8
  store %struct.fw_card* %15, %struct.fw_card** %7, align 8
  %16 = load %struct.client*, %struct.client** %4, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %112

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.outbound_phy_packet_event* @kzalloc(i32 52, i32 %26)
  store %struct.outbound_phy_packet_event* %27, %struct.outbound_phy_packet_event** %8, align 8
  %28 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %29 = icmp eq %struct.outbound_phy_packet_event* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %112

33:                                               ; preds = %25
  %34 = load %struct.client*, %struct.client** %4, align 8
  %35 = call i32 @client_get(%struct.client* %34)
  %36 = load %struct.client*, %struct.client** %4, align 8
  %37 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %38 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %37, i32 0, i32 2
  store %struct.client* %36, %struct.client** %38, align 8
  %39 = load i32, i32* @SCODE_100, align 4
  %40 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %41 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load %struct.fw_cdev_send_phy_packet*, %struct.fw_cdev_send_phy_packet** %6, align 8
  %44 = getelementptr inbounds %struct.fw_cdev_send_phy_packet, %struct.fw_cdev_send_phy_packet* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %47 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @TCODE_LINK_INTERNAL, align 4
  %50 = shl i32 %49, 4
  %51 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %52 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %50, i32* %55, align 4
  %56 = load %struct.fw_cdev_send_phy_packet*, %struct.fw_cdev_send_phy_packet** %6, align 8
  %57 = getelementptr inbounds %struct.fw_cdev_send_phy_packet, %struct.fw_cdev_send_phy_packet* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %62 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %60, i32* %65, align 4
  %66 = load %struct.fw_cdev_send_phy_packet*, %struct.fw_cdev_send_phy_packet** %6, align 8
  %67 = getelementptr inbounds %struct.fw_cdev_send_phy_packet, %struct.fw_cdev_send_phy_packet* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %72 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %70, i32* %75, align 4
  %76 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %77 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 12, i32* %78, align 8
  %79 = load i32, i32* @outbound_phy_packet_callback, align 4
  %80 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %81 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load %struct.fw_cdev_send_phy_packet*, %struct.fw_cdev_send_phy_packet** %6, align 8
  %84 = getelementptr inbounds %struct.fw_cdev_send_phy_packet, %struct.fw_cdev_send_phy_packet* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %87 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @FW_CDEV_EVENT_PHY_PACKET_SENT, align 4
  %90 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %91 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.fw_cdev_send_phy_packet*, %struct.fw_cdev_send_phy_packet** %6, align 8
  %94 = getelementptr inbounds %struct.fw_cdev_send_phy_packet, %struct.fw_cdev_send_phy_packet* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @is_ping_packet(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %33
  %99 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %100 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 4, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %33
  %103 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %104 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32 (%struct.fw_card*, %struct.TYPE_8__*)*, i32 (%struct.fw_card*, %struct.TYPE_8__*)** %106, align 8
  %108 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %109 = load %struct.outbound_phy_packet_event*, %struct.outbound_phy_packet_event** %8, align 8
  %110 = getelementptr inbounds %struct.outbound_phy_packet_event, %struct.outbound_phy_packet_event* %109, i32 0, i32 0
  %111 = call i32 %107(%struct.fw_card* %108, %struct.TYPE_8__* %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %102, %30, %22
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.outbound_phy_packet_event* @kzalloc(i32, i32) #1

declare dso_local i32 @client_get(%struct.client*) #1

declare dso_local i64 @is_ping_packet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
