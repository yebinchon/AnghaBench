; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_receive_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.fwnet_device = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@IEEE1394_ALL_NODES = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"incoming packet failure\0A\00", align 1
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @fwnet_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwnet_receive_packet(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.fwnet_device*, align 8
  %22 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = bitcast i8* %23 to %struct.fwnet_device*
  store %struct.fwnet_device* %24, %struct.fwnet_device** %21, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @IEEE1394_ALL_NODES, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %10
  %29 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %30 = call i32 @kfree(%struct.fw_request* %29)
  br label %70

31:                                               ; preds = %10
  %32 = load i64, i64* %17, align 8
  %33 = load %struct.fwnet_device*, %struct.fwnet_device** %21, align 8
  %34 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %39, i32* %22, align 4
  br label %65

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %45, i32* %22, align 4
  br label %64

46:                                               ; preds = %40
  %47 = load %struct.fwnet_device*, %struct.fwnet_device** %21, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i64 @fwnet_incoming_packet(%struct.fwnet_device* %47, i8* %48, i64 %49, i32 %50, i32 %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.fwnet_device*, %struct.fwnet_device** %21, align 8
  %56 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %60, i32* %22, align 4
  br label %63

61:                                               ; preds = %46
  %62 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %62, i32* %22, align 4
  br label %63

63:                                               ; preds = %61, %54
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %67 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %68 = load i32, i32* %22, align 4
  %69 = call i32 @fw_send_response(%struct.fw_card* %66, %struct.fw_request* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %28
  ret void
}

declare dso_local i32 @kfree(%struct.fw_request*) #1

declare dso_local i64 @fwnet_incoming_packet(%struct.fwnet_device*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
