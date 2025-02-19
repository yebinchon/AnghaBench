; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_tx_data_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_tx_data_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, i32, %struct.hsi_client* }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32, i32 }

@HSI_STATUS_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"TX data error\0A\00", align 1
@SENDING_SWBREAK = common dso_local global i32 0, align 4
@SSIP_SWBREAK_CMD = common dso_local global i32 0, align 4
@ssip_swbreak_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Send SWBREAK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @ssip_tx_data_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_tx_data_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.ssi_protocol*, align 8
  %5 = alloca %struct.hsi_msg*, align 8
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
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %18 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %21 = call i32 @ssip_error(%struct.hsi_client* %20)
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %24 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %27 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %26, i32 0, i32 1
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %22
  %31 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %32 = load i32, i32* @SENDING_SWBREAK, align 4
  %33 = call i32 @ssip_set_txstate(%struct.ssi_protocol* %31, i32 %32)
  %34 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %35 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %38 = call %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol* %37)
  store %struct.hsi_msg* %38, %struct.hsi_msg** %5, align 8
  %39 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %40 = load i32, i32* @SSIP_SWBREAK_CMD, align 4
  %41 = call i32 @ssip_set_cmd(%struct.hsi_msg* %39, i32 %40)
  %42 = load i32, i32* @ssip_swbreak_complete, align 4
  %43 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %44 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %46 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %49 = load %struct.hsi_msg*, %struct.hsi_msg** %5, align 8
  %50 = call i32 @hsi_async_write(%struct.hsi_client* %48, %struct.hsi_msg* %49)
  br label %57

51:                                               ; preds = %22
  %52 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %53 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %56 = call i32 @ssip_xmit(%struct.hsi_client* %55)
  br label %57

57:                                               ; preds = %51, %30
  br label %58

58:                                               ; preds = %57, %16
  %59 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %60 = call i32 @ssip_free_data(%struct.hsi_msg* %59)
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ssip_error(%struct.hsi_client*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @ssip_set_txstate(%struct.ssi_protocol*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol*) #1

declare dso_local i32 @ssip_set_cmd(%struct.hsi_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hsi_async_write(%struct.hsi_client*, %struct.hsi_msg*) #1

declare dso_local i32 @ssip_xmit(%struct.hsi_client*) #1

declare dso_local i32 @ssip_free_data(%struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
