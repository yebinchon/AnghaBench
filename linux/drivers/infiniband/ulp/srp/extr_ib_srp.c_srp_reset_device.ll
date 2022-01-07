; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.srp_target_port = type { %struct.srp_rdma_ch*, i32 }
%struct.srp_rdma_ch = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SRP reset_device called\0A\00", align 1
@SRP_TAG_NO_REQ = common dso_local global i32 0, align 4
@SRP_TSK_LUN_RESET = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @srp_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_reset_device(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.srp_target_port*, align 8
  %5 = alloca %struct.srp_rdma_ch*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.srp_target_port* @host_to_target(i32 %11)
  store %struct.srp_target_port* %12, %struct.srp_target_port** %4, align 8
  %13 = load i32, i32* @KERN_ERR, align 4
  %14 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %15 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @shost_printk(i32 %13, i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %19 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %18, i32 0, i32 0
  %20 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %19, align 8
  %21 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %20, i64 0
  store %struct.srp_rdma_ch* %21, %struct.srp_rdma_ch** %5, align 8
  %22 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %23 = load i32, i32* @SRP_TAG_NO_REQ, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SRP_TSK_LUN_RESET, align 4
  %30 = call i64 @srp_send_tsk_mgmt(%struct.srp_rdma_ch* %22, i32 %23, i32 %28, i32 %29, i64* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @FAILED, align 4
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @FAILED, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @SUCCESS, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37, %32
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.srp_target_port* @host_to_target(i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*) #1

declare dso_local i64 @srp_send_tsk_mgmt(%struct.srp_rdma_ch*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
