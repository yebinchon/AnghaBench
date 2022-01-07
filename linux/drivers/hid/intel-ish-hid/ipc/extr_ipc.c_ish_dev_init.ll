; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i64, i32*, i32*, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.wr_msg_ctl_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IPC_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[ishtp-ish]: failure in Tx FIFO allocations (%d)\0A\00", align 1
@ish_hw_ops = common dso_local global i32 0, align 4
@IPC_PAYLOAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ishtp_device* @ish_dev_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ishtp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wr_msg_ctl_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @devm_kzalloc(i32* %8, i32 44, i32 %9)
  %11 = bitcast i8* %10 to %struct.ishtp_device*
  store %struct.ishtp_device* %11, %struct.ishtp_device** %4, align 8
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %13 = icmp ne %struct.ishtp_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.ishtp_device* null, %struct.ishtp_device** %2, align 8
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %17 = call i32 @ishtp_device_init(%struct.ishtp_device* %16)
  %18 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %19 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %18, i32 0, i32 6
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %22 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %21, i32 0, i32 5
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %25 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %28 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %54, %15
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IPC_TX_FIFO_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @devm_kzalloc(i32* %36, i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.wr_msg_ctl_info*
  store %struct.wr_msg_ctl_info* %39, %struct.wr_msg_ctl_info** %6, align 8
  %40 = load %struct.wr_msg_ctl_info*, %struct.wr_msg_ctl_info** %6, align 8
  %41 = icmp ne %struct.wr_msg_ctl_info* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %44 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %57

48:                                               ; preds = %34
  %49 = load %struct.wr_msg_ctl_info*, %struct.wr_msg_ctl_info** %6, align 8
  %50 = getelementptr inbounds %struct.wr_msg_ctl_info, %struct.wr_msg_ctl_info* %49, i32 0, i32 0
  %51 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %52 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %51, i32 0, i32 3
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %30

57:                                               ; preds = %42, %30
  %58 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %59 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %58, i32 0, i32 2
  store i32* @ish_hw_ops, i32** %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %63 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i64, i64* @IPC_PAYLOAD_SIZE, align 8
  %65 = sub i64 %64, 4
  %66 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  %67 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ishtp_device*, %struct.ishtp_device** %4, align 8
  store %struct.ishtp_device* %68, %struct.ishtp_device** %2, align 8
  br label %69

69:                                               ; preds = %57, %14
  %70 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  ret %struct.ishtp_device* %70
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ishtp_device_init(%struct.ishtp_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
