; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_stream_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_ioctl_send_stream_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.ioctl_arg = type { %struct.fw_cdev_send_stream_packet }
%struct.fw_cdev_send_stream_packet = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_cdev_send_request = type { i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCODE_STREAM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %union.ioctl_arg*)* @ioctl_send_stream_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_send_stream_packet(%struct.client* %0, %union.ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %union.ioctl_arg*, align 8
  %6 = alloca %struct.fw_cdev_send_stream_packet*, align 8
  %7 = alloca %struct.fw_cdev_send_request, align 4
  %8 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %4, align 8
  store %union.ioctl_arg* %1, %union.ioctl_arg** %5, align 8
  %9 = load %union.ioctl_arg*, %union.ioctl_arg** %5, align 8
  %10 = bitcast %union.ioctl_arg* %9 to %struct.fw_cdev_send_stream_packet*
  store %struct.fw_cdev_send_stream_packet* %10, %struct.fw_cdev_send_stream_packet** %6, align 8
  %11 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %12 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.client*, %struct.client** %4, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %13, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %24 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %27 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1024, %28
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22, %2
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %22
  %35 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %36 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 3
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %41 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 63
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %46 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 15
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %39, %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %87

52:                                               ; preds = %44
  %53 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %54 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %57 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %60 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fw_stream_packet_destination_id(i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @TCODE_STREAM_DATA, align 4
  %64 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %7, i32 0, i32 4
  store i32 %63, i32* %64, align 4
  %65 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %66 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %70 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %7, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %74 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %7, i32 0, i32 2
  store i32 %75, i32* %76, align 4
  %77 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %78 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.fw_cdev_send_request, %struct.fw_cdev_send_request* %7, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.client*, %struct.client** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.fw_cdev_send_stream_packet*, %struct.fw_cdev_send_stream_packet** %6, align 8
  %84 = getelementptr inbounds %struct.fw_cdev_send_stream_packet, %struct.fw_cdev_send_stream_packet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @init_request(%struct.client* %81, %struct.fw_cdev_send_request* %7, i32 %82, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %52, %49, %31
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @fw_stream_packet_destination_id(i32, i32, i32) #1

declare dso_local i32 @init_request(%struct.client*, %struct.fw_cdev_send_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
