; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_bootinforeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_bootinforeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32, i32, i32, i32 }
%struct.hsi_msg = type { i32 }

@SSIP_CMT_LOADER_SYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Boot info req on active state\0A\00", align 1
@SSIP_WAKETEST_FLAG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SSIP_WDTOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Send BOOTINFO_RESP\0A\00", align 1
@SSIP_LOCAL_VERID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"boot info req verid mismatch\0A\00", align 1
@ssip_release_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Wrong state M(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*, i64)* @ssip_rx_bootinforeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rx_bootinforeq(%struct.hsi_client* %0, i64 %1) #0 {
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ssi_protocol*, align 8
  %6 = alloca %struct.hsi_msg*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %8 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %7)
  store %struct.ssi_protocol* %8, %struct.ssi_protocol** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @SSIP_CMT_LOADER_SYNC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %85

13:                                               ; preds = %2
  %14 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %15 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %78 [
    i32 130, label %17
    i32 128, label %23
    i32 129, label %23
  ]

17:                                               ; preds = %13
  %18 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %19 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %22 = call i32 @ssip_error(%struct.hsi_client* %21)
  br label %23

23:                                               ; preds = %13, %13, %17
  %24 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %25 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %28 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %27, i32 0, i32 0
  store i32 129, i32* %28, align 4
  %29 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %30 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load i32, i32* @SSIP_WAKETEST_FLAG, align 4
  %33 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %34 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %33, i32 0, i32 3
  %35 = call i32 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %39 = call i32 @ssi_waketest(%struct.hsi_client* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %23
  %41 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %42 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %45 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %44, i32 0, i32 2
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i32, i32* @SSIP_WDTOUT, align 4
  %48 = call i64 @msecs_to_jiffies(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @mod_timer(i32* %45, i64 %49)
  %51 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %52 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %55 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @SSIP_DATA_VERSION(i64 %57)
  %59 = load i32, i32* @SSIP_LOCAL_VERID, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %40
  %62 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %63 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %62, i32 0, i32 0
  %64 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %40
  %66 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %67 = call %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol* %66)
  store %struct.hsi_msg* %67, %struct.hsi_msg** %6, align 8
  %68 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %69 = load i32, i32* @SSIP_LOCAL_VERID, align 4
  %70 = call i32 @SSIP_BOOTINFO_RESP_CMD(i32 %69)
  %71 = call i32 @ssip_set_cmd(%struct.hsi_msg* %68, i32 %70)
  %72 = load i32, i32* @ssip_release_cmd, align 4
  %73 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %74 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %76 = load %struct.hsi_msg*, %struct.hsi_msg** %6, align 8
  %77 = call i32 @hsi_async_write(%struct.hsi_client* %75, %struct.hsi_msg* %76)
  br label %85

78:                                               ; preds = %13
  %79 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %80 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %79, i32 0, i32 0
  %81 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %82 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %12, %78, %65
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ssip_error(%struct.hsi_client*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ssi_waketest(%struct.hsi_client*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @SSIP_DATA_VERSION(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol*) #1

declare dso_local i32 @ssip_set_cmd(%struct.hsi_msg*, i32) #1

declare dso_local i32 @SSIP_BOOTINFO_RESP_CMD(i32) #1

declare dso_local i32 @hsi_async_write(%struct.hsi_client*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
