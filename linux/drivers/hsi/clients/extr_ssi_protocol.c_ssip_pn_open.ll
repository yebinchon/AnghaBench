; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_pn_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_pn_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"SSI port already claimed\0A\00", align 1
@ssip_port_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Register HSI port event failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Configuring SSI port\0A\00", align 1
@SSIP_WAKETEST_FLAG = common dso_local global i32 0, align 4
@HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ssip_pn_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssip_pn_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hsi_client*, align 8
  %5 = alloca %struct.ssi_protocol*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hsi_client* @to_hsi_client(i32 %10)
  store %struct.hsi_client* %11, %struct.hsi_client** %4, align 8
  %12 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %13 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %12)
  store %struct.ssi_protocol* %13, %struct.ssi_protocol** %5, align 8
  %14 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %15 = call i32 @hsi_claim_port(%struct.hsi_client* %14, i32 1)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %20 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %1
  %24 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %25 = load i32, i32* @ssip_port_event, align 4
  %26 = call i32 @hsi_register_port_event(%struct.hsi_client* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %31 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %23
  %36 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %37 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %40 = call i32 @hsi_setup(%struct.hsi_client* %39)
  %41 = load i32, i32* @SSIP_WAKETEST_FLAG, align 4
  %42 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %43 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %42, i32 0, i32 2
  %44 = call i32 @test_and_set_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %48 = call i32 @ssi_waketest(%struct.hsi_client* %47, i32 1)
  br label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %51 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load i32, i32* @HANDSHAKE, align 4
  %54 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %55 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %57 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %60 = call i32 @ssip_send_bootinfo_req_cmd(%struct.hsi_client* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %49, %29, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.hsi_client* @to_hsi_client(i32) #1

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @hsi_claim_port(%struct.hsi_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hsi_register_port_event(%struct.hsi_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hsi_setup(%struct.hsi_client*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ssi_waketest(%struct.hsi_client*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ssip_send_bootinfo_req_cmd(%struct.hsi_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
