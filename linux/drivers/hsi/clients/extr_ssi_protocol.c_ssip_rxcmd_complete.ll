; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rxcmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rxcmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, %struct.hsi_client* }
%struct.hsi_client = type { i32 }

@HSI_STATUS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"RX error detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"RX cmd: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"command 0x%08x not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @ssip_rxcmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rxcmd_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %6 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %7 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %6, i32 0, i32 1
  %8 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  store %struct.hsi_client* %8, %struct.hsi_client** %3, align 8
  %9 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %10 = call i32 @ssip_get_cmd(%struct.hsi_msg* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @SSIP_COMMAND(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %14 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HSI_STATUS_ERROR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %20 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %23 = call i32 @ssip_release_cmd(%struct.hsi_msg* %22)
  %24 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %25 = call i32 @ssip_error(%struct.hsi_client* %24)
  br label %60

26:                                               ; preds = %1
  %27 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %28 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %29 = call i32 @hsi_async_read(%struct.hsi_client* %27, %struct.hsi_msg* %28)
  %30 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %31 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %55 [
    i32 129, label %35
    i32 133, label %36
    i32 132, label %40
    i32 128, label %44
    i32 130, label %48
    i32 131, label %52
  ]

35:                                               ; preds = %26
  br label %60

36:                                               ; preds = %26
  %37 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ssip_rx_bootinforeq(%struct.hsi_client* %37, i32 %38)
  br label %60

40:                                               ; preds = %26
  %41 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ssip_rx_bootinforesp(%struct.hsi_client* %41, i32 %42)
  br label %60

44:                                               ; preds = %26
  %45 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ssip_rx_waketest(%struct.hsi_client* %45, i32 %46)
  br label %60

48:                                               ; preds = %26
  %49 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ssip_rx_strans(%struct.hsi_client* %49, i32 %50)
  br label %60

52:                                               ; preds = %26
  %53 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %54 = call i32 @ssip_rx_ready(%struct.hsi_client* %53)
  br label %60

55:                                               ; preds = %26
  %56 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %57 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %18, %55, %52, %48, %44, %40, %36, %35
  ret void
}

declare dso_local i32 @ssip_get_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @SSIP_COMMAND(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ssip_release_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @ssip_error(%struct.hsi_client*) #1

declare dso_local i32 @hsi_async_read(%struct.hsi_client*, %struct.hsi_msg*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ssip_rx_bootinforeq(%struct.hsi_client*, i32) #1

declare dso_local i32 @ssip_rx_bootinforesp(%struct.hsi_client*, i32) #1

declare dso_local i32 @ssip_rx_waketest(%struct.hsi_client*, i32) #1

declare dso_local i32 @ssip_rx_strans(%struct.hsi_client*, i32) #1

declare dso_local i32 @ssip_rx_ready(%struct.hsi_client*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
