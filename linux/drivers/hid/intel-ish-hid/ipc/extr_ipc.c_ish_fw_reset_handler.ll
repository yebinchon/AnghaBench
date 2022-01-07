; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_fw_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_fw_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32, i32, i32 }

@IPC_REG_ISH2HOST_MSG = common dso_local global i32 0, align 4
@WAIT_FOR_INPUT_RDY = common dso_local global i32 0, align 4
@TIME_SLICE_FOR_INPUT_RDY_MS = common dso_local global i32 0, align 4
@TIMEOUT_FOR_INPUT_RDY_MS = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@MNG_RESET_NOTIFY_ACK = common dso_local global i32 0, align 4
@WAIT_FOR_FW_RDY = common dso_local global i32 0, align 4
@TIME_SLICE_FOR_FW_RDY_MS = common dso_local global i32 0, align 4
@TIMEOUT_FOR_FW_RDY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"[ishtp-ish]: completed reset, ISH is dead (FWSTS = %08X)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_device*)* @ish_fw_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ish_fw_reset_handler(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  %7 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %8 = load i32, i32* @IPC_REG_ISH2HOST_MSG, align 4
  %9 = call i32 @ish_reg_read(%struct.ishtp_device* %7, i32 %8)
  %10 = and i32 %9, 65535
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %12 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %16 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %15, i32 0, i32 3
  %17 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %18 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %17, i32 0, i32 2
  %19 = call i32 @list_splice_init(i32* %16, i32* %18)
  %20 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %21 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %25 = call i32 @ishtp_reset_handler(%struct.ishtp_device* %24)
  %26 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %27 = call i32 @ish_is_input_ready(%struct.ishtp_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %31 = load i32, i32* @WAIT_FOR_INPUT_RDY, align 4
  %32 = load i32, i32* @TIME_SLICE_FOR_INPUT_RDY_MS, align 4
  %33 = load i32, i32* @TIMEOUT_FOR_INPUT_RDY_MS, align 4
  %34 = call i32 @timed_wait_for_timeout(%struct.ishtp_device* %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %37 = call i32 @ish_is_input_ready(%struct.ishtp_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @EPIPE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %35
  %43 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %44 = call i32 @ish_set_host_rdy(%struct.ishtp_device* %43)
  %45 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %46 = load i32, i32* @MNG_RESET_NOTIFY_ACK, align 4
  %47 = call i32 @ipc_send_mng_msg(%struct.ishtp_device* %45, i32 %46, i32* %4, i32 4)
  %48 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %49 = load i32, i32* @WAIT_FOR_FW_RDY, align 4
  %50 = load i32, i32* @TIME_SLICE_FOR_FW_RDY_MS, align 4
  %51 = load i32, i32* @TIMEOUT_FOR_FW_RDY_MS, align 4
  %52 = call i32 @timed_wait_for_timeout(%struct.ishtp_device* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %54 = call i32 @ishtp_fw_is_ready(%struct.ishtp_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %42
  %57 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %58 = call i32 @_ish_read_fw_sts_reg(%struct.ishtp_device* %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %60 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %56, %39
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ish_reg_read(%struct.ishtp_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ishtp_reset_handler(%struct.ishtp_device*) #1

declare dso_local i32 @ish_is_input_ready(%struct.ishtp_device*) #1

declare dso_local i32 @timed_wait_for_timeout(%struct.ishtp_device*, i32, i32, i32) #1

declare dso_local i32 @ish_set_host_rdy(%struct.ishtp_device*) #1

declare dso_local i32 @ipc_send_mng_msg(%struct.ishtp_device*, i32, i32*, i32) #1

declare dso_local i32 @ishtp_fw_is_ready(%struct.ishtp_device*) #1

declare dso_local i32 @_ish_read_fw_sts_reg(%struct.ishtp_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
