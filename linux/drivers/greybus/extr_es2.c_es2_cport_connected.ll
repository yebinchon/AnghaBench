; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32 }
%struct.es2_ap_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.arpc_cport_connected_req = type { i32 }

@ARPC_TYPE_CPORT_CONNECTED = common dso_local global i32 0, align 4
@ES2_ARPC_CPORT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to set connected state for cport %u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_host_device*, i32)* @es2_cport_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es2_cport_connected(%struct.gb_host_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_host_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.es2_ap_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.arpc_cport_connected_req, align 4
  %9 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %11 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %10)
  store %struct.es2_ap_dev* %11, %struct.es2_ap_dev** %6, align 8
  %12 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %13 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.arpc_cport_connected_req, %struct.arpc_cport_connected_req* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %20 = load i32, i32* @ARPC_TYPE_CPORT_CONNECTED, align 4
  %21 = load i32, i32* @ES2_ARPC_CPORT_TIMEOUT, align 4
  %22 = call i32 @arpc_sync(%struct.es2_ap_dev* %19, i32 %20, %struct.arpc_cport_connected_req* %8, i32 4, i32* null, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @arpc_sync(%struct.es2_ap_dev*, i32, %struct.arpc_cport_connected_req*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
