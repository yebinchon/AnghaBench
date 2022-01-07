; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, {}*, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.srp_target_port = type { i64, %struct.TYPE_4__*, i32, %struct.srp_rdma_ch* }
%struct.TYPE_4__ = type { i64 }
%struct.srp_rdma_ch = type { i32 }
%struct.srp_request = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SRP abort called\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Sending SRP abort for tag %#x\0A\00", align 1
@SRP_TSK_ABORT_TASK = common dso_local global i32 0, align 4
@SRP_RPORT_LOST = common dso_local global i64 0, align 8
@FAST_IO_FAIL = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @srp_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.srp_target_port*, align 8
  %5 = alloca %struct.srp_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.srp_rdma_ch*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.srp_target_port* @host_to_target(i32 %14)
  store %struct.srp_target_port* %15, %struct.srp_target_port** %4, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.srp_request*
  store %struct.srp_request* %19, %struct.srp_request** %5, align 8
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %22 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %20, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.srp_request*, %struct.srp_request** %5, align 8
  %26 = icmp ne %struct.srp_request* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @SUCCESS, align 4
  store i32 %28, i32* %2, align 4
  br label %112

29:                                               ; preds = %1
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @blk_mq_unique_tag(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @blk_mq_unique_tag_to_hwq(i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %38 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %2, align 4
  br label %112

46:                                               ; preds = %29
  %47 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %48 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %47, i32 0, i32 3
  %49 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %49, i64 %50
  store %struct.srp_rdma_ch* %51, %struct.srp_rdma_ch** %8, align 8
  %52 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %53 = load %struct.srp_request*, %struct.srp_request** %5, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %55 = call i32 @srp_claim_req(%struct.srp_rdma_ch* %52, %struct.srp_request* %53, i32* null, %struct.scsi_cmnd* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @SUCCESS, align 4
  store i32 %58, i32* %2, align 4
  br label %112

59:                                               ; preds = %46
  %60 = load i32, i32* @KERN_ERR, align 4
  %61 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %62 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i32, i32, i8*, ...) @shost_printk(i32 %60, i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SRP_TSK_ABORT_TASK, align 4
  %74 = call i64 @srp_send_tsk_mgmt(%struct.srp_rdma_ch* %66, i32 %67, i32 %72, i32 %73, i32* null)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = load i32, i32* @SUCCESS, align 4
  store i32 %77, i32* %9, align 4
  br label %91

78:                                               ; preds = %59
  %79 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %80 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SRP_RPORT_LOST, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @FAST_IO_FAIL, align 4
  store i32 %87, i32* %9, align 4
  br label %90

88:                                               ; preds = %78
  %89 = load i32, i32* @FAILED, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @SUCCESS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %97 = load %struct.srp_request*, %struct.srp_request** %5, align 8
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %99 = call i32 @srp_free_req(%struct.srp_rdma_ch* %96, %struct.srp_request* %97, %struct.scsi_cmnd* %98, i32 0)
  %100 = load i32, i32* @DID_ABORT, align 4
  %101 = shl i32 %100, 16
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 1
  %106 = bitcast {}** %105 to i32 (%struct.scsi_cmnd*)**
  %107 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %106, align 8
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %109 = call i32 %107(%struct.scsi_cmnd* %108)
  br label %110

110:                                              ; preds = %95, %91
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %57, %44, %27
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.srp_target_port* @host_to_target(i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @blk_mq_unique_tag(i32) #1

declare dso_local i64 @blk_mq_unique_tag_to_hwq(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @srp_claim_req(%struct.srp_rdma_ch*, %struct.srp_request*, i32*, %struct.scsi_cmnd*) #1

declare dso_local i64 @srp_send_tsk_mgmt(%struct.srp_rdma_ch*, i32, i32, i32, i32*) #1

declare dso_local i32 @srp_free_req(%struct.srp_rdma_ch*, %struct.srp_request*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
