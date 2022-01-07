; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c__ish_ipc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c__ish_ipc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i64, i32 }
%struct.ipc_rst_payload_type = type { i32, i64 }

@IPC_REG_ISH2HOST_DRBL = common dso_local global i32 0, align 4
@IPC_REG_ISH_HOST_FWSTS = common dso_local global i32 0, align 4
@MNG_RESET_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to send IPC MNG_RESET_NOTIFY\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Timed out waiting for HW ready\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_device*)* @_ish_ipc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ish_ipc_reset(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.ipc_rst_payload_type, align 8
  %5 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.ipc_rst_payload_type, %struct.ipc_rst_payload_type* %4, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.ipc_rst_payload_type, %struct.ipc_rst_payload_type* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %9 = call i32 @set_host_ready(%struct.ishtp_device* %8)
  %10 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %11 = load i32, i32* @IPC_REG_ISH2HOST_DRBL, align 4
  %12 = call i32 @ish_reg_write(%struct.ishtp_device* %10, i32 %11, i32 0)
  %13 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %14 = load i32, i32* @IPC_REG_ISH_HOST_FWSTS, align 4
  %15 = call i32 @ish_reg_read(%struct.ishtp_device* %13, i32 %14)
  %16 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %17 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %19 = load i32, i32* @MNG_RESET_NOTIFY, align 4
  %20 = call i32 @ipc_send_mng_msg(%struct.ishtp_device* %18, i32 %19, %struct.ipc_rst_payload_type* %4, i32 16)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %25 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %1
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %31 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %34 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 2, %36
  %38 = call i32 @wait_event_interruptible_timeout(i32 %32, i64 %35, i32 %37)
  %39 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %40 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %29
  %44 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %45 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %29
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @set_host_ready(%struct.ishtp_device*) #1

declare dso_local i32 @ish_reg_write(%struct.ishtp_device*, i32, i32) #1

declare dso_local i32 @ish_reg_read(%struct.ishtp_device*, i32) #1

declare dso_local i32 @ipc_send_mng_msg(%struct.ishtp_device*, i32, %struct.ipc_rst_payload_type*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
