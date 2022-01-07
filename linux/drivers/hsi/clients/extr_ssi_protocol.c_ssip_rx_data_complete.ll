; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, %struct.sk_buff*, %struct.hsi_client* }
%struct.sk_buff = type { i32 }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32 }

@HSI_STATUS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"RX data error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @ssip_rx_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rx_data_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.ssi_protocol*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %6 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %7 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %6, i32 0, i32 2
  %8 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  store %struct.hsi_client* %8, %struct.hsi_client** %3, align 8
  %9 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %10 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %9)
  store %struct.ssi_protocol* %10, %struct.ssi_protocol** %4, align 8
  %11 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %12 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HSI_STATUS_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %18 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %21 = call i32 @ssip_free_data(%struct.hsi_msg* %20)
  %22 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %23 = call i32 @ssip_error(%struct.hsi_client* %22)
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %26 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %25, i32 0, i32 0
  %27 = call i32 @del_timer(i32* %26)
  %28 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %29 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @ssip_pn_rx(%struct.sk_buff* %31)
  %33 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %34 = call i32 @hsi_free_msg(%struct.hsi_msg* %33)
  br label %35

35:                                               ; preds = %24, %16
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ssip_free_data(%struct.hsi_msg*) #1

declare dso_local i32 @ssip_error(%struct.hsi_client*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ssip_pn_rx(%struct.sk_buff*) #1

declare dso_local i32 @hsi_free_msg(%struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
