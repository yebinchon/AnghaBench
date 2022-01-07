; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_handle_tsk_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_handle_tsk_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { %struct.se_session* }
%struct.se_session = type { i32 }
%struct.srpt_recv_ioctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.srp_tsk_mgmt* }
%struct.srp_tsk_mgmt = type { i32, i32, i32, i32 }
%struct.srpt_send_ioctx = type { %struct.se_cmd }
%struct.se_cmd = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.se_cmd*)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"recv tsk_mgmt fn %d for task_tag %lld and cmd tag %lld ch %p sess %p\0A\00", align 1
@SRPT_STATE_MGMT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@TMR_FUNCTION_REJECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srpt_rdma_ch*, %struct.srpt_recv_ioctx*, %struct.srpt_send_ioctx*)* @srpt_handle_tsk_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_handle_tsk_mgmt(%struct.srpt_rdma_ch* %0, %struct.srpt_recv_ioctx* %1, %struct.srpt_send_ioctx* %2) #0 {
  %4 = alloca %struct.srpt_rdma_ch*, align 8
  %5 = alloca %struct.srpt_recv_ioctx*, align 8
  %6 = alloca %struct.srpt_send_ioctx*, align 8
  %7 = alloca %struct.srp_tsk_mgmt*, align 8
  %8 = alloca %struct.se_cmd*, align 8
  %9 = alloca %struct.se_session*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %4, align 8
  store %struct.srpt_recv_ioctx* %1, %struct.srpt_recv_ioctx** %5, align 8
  store %struct.srpt_send_ioctx* %2, %struct.srpt_send_ioctx** %6, align 8
  %12 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %13 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %12, i32 0, i32 0
  %14 = load %struct.se_session*, %struct.se_session** %13, align 8
  store %struct.se_session* %14, %struct.se_session** %9, align 8
  %15 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %16 = icmp ne %struct.srpt_send_ioctx* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %5, align 8
  %21 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %22, align 8
  %24 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %5, align 8
  %25 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %23, i64 %28
  store %struct.srp_tsk_mgmt* %29, %struct.srp_tsk_mgmt** %7, align 8
  %30 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %31 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %30, i32 0, i32 0
  store %struct.se_cmd* %31, %struct.se_cmd** %8, align 8
  %32 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %33 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %36 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %39 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %42 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %43 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %42, i32 0, i32 0
  %44 = load %struct.se_session*, %struct.se_session** %43, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40, %struct.srpt_rdma_ch* %41, %struct.se_session* %44)
  %46 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %47 = load i32, i32* @SRPT_STATE_MGMT, align 4
  %48 = call i32 @srpt_set_cmd_state(%struct.srpt_send_ioctx* %46, i32 %47)
  %49 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %50 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %53 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %56 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @srp_tmr_to_tcm(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %60 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %59, i32 0, i32 0
  %61 = load %struct.se_session*, %struct.se_session** %9, align 8
  %62 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %63 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %62, i32 0, i32 1
  %64 = call i32 @scsilun_to_int(i32* %63)
  %65 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %7, align 8
  %69 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %72 = call i32 @target_submit_tmr(%struct.se_cmd* %60, %struct.se_session* %61, i32* null, i32 %64, %struct.srp_tsk_mgmt* %65, i32 %66, i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %3
  %76 = load i32, i32* @TMR_FUNCTION_REJECTED, align 4
  %77 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %6, align 8
  %78 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %83 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %85, align 8
  %87 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %88 = call i32 %86(%struct.se_cmd* %87)
  br label %89

89:                                               ; preds = %75, %3
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, %struct.srpt_rdma_ch*, %struct.se_session*) #1

declare dso_local i32 @srpt_set_cmd_state(%struct.srpt_send_ioctx*, i32) #1

declare dso_local i32 @srp_tmr_to_tcm(i32) #1

declare dso_local i32 @target_submit_tmr(%struct.se_cmd*, %struct.se_session*, i32*, i32, %struct.srp_tsk_mgmt*, i32, i32, i32, i32) #1

declare dso_local i32 @scsilun_to_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
