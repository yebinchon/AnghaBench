; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_send_bootinfo_req_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_send_bootinfo_req_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32 }
%struct.hsi_msg = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Issuing BOOT INFO REQ command\0A\00", align 1
@SSIP_LOCAL_VERID = common dso_local global i32 0, align 4
@ssip_release_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Issuing RX command\0A\00", align 1
@ssip_rxcmd_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*)* @ssip_send_bootinfo_req_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_send_bootinfo_req_cmd(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.ssi_protocol*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %5 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %6 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %5)
  store %struct.ssi_protocol* %6, %struct.ssi_protocol** %3, align 8
  %7 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %8 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %11 = call %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol* %10)
  store %struct.hsi_msg* %11, %struct.hsi_msg** %4, align 8
  %12 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %13 = load i32, i32* @SSIP_LOCAL_VERID, align 4
  %14 = call i32 @SSIP_BOOTINFO_REQ_CMD(i32 %13)
  %15 = call i32 @ssip_set_cmd(%struct.hsi_msg* %12, i32 %14)
  %16 = load i32, i32* @ssip_release_cmd, align 4
  %17 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %18 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %20 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %21 = call i32 @hsi_async_write(%struct.hsi_client* %19, %struct.hsi_msg* %20)
  %22 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %23 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %26 = call %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol* %25)
  store %struct.hsi_msg* %26, %struct.hsi_msg** %4, align 8
  %27 = load i32, i32* @ssip_rxcmd_complete, align 4
  %28 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %29 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %31 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %32 = call i32 @hsi_async_read(%struct.hsi_client* %30, %struct.hsi_msg* %31)
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol*) #1

declare dso_local i32 @ssip_set_cmd(%struct.hsi_msg*, i32) #1

declare dso_local i32 @SSIP_BOOTINFO_REQ_CMD(i32) #1

declare dso_local i32 @hsi_async_write(%struct.hsi_client*, %struct.hsi_msg*) #1

declare dso_local i32 @hsi_async_read(%struct.hsi_client*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
