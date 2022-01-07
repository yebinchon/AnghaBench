; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_datain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_datain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { i32 }
%struct.iscsi_cmd = type { %struct.se_cmd }
%struct.se_cmd = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ib_send_wr, i32, %struct.ib_cqe }
%struct.ib_send_wr = type { i32 }
%struct.ib_cqe = type { i32 }
%struct.iscsi_scsi_rsp = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Cmd: %p RDMA_WRITE data_length: %u\0A\00", align 1
@isert_rdma_write_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ib_post_recv failed with %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Cmd: %p posted RDMA_WRITE for iSER Data READ rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)* @isert_put_datain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_put_datain(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.isert_cmd*, align 8
  %8 = alloca %struct.isert_conn*, align 8
  %9 = alloca %struct.ib_cqe*, align 8
  %10 = alloca %struct.ib_send_wr*, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 0
  store %struct.se_cmd* %13, %struct.se_cmd** %6, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %15 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %14)
  store %struct.isert_cmd* %15, %struct.isert_cmd** %7, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load %struct.isert_conn*, %struct.isert_conn** %17, align 8
  store %struct.isert_conn* %18, %struct.isert_conn** %8, align 8
  store %struct.ib_cqe* null, %struct.ib_cqe** %9, align 8
  store %struct.ib_send_wr* null, %struct.ib_send_wr** %10, align 8
  %19 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %20 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @isert_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.isert_cmd* %19, i32 %22)
  %24 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %26 = call i64 @isert_prot_cmd(%struct.isert_conn* %24, %struct.se_cmd* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @isert_rdma_write_done, align 4
  %30 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ib_cqe, %struct.ib_cqe* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store %struct.ib_cqe* %36, %struct.ib_cqe** %9, align 8
  br label %75

37:                                               ; preds = %2
  %38 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %39 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %40 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %40, i32 0, i32 0
  %42 = call i32 @isert_create_send_desc(%struct.isert_conn* %38, %struct.isert_cmd* %39, %struct.TYPE_3__* %41)
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %45 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = bitcast i32* %47 to %struct.iscsi_scsi_rsp*
  %49 = call i32 @iscsit_build_rsp_pdu(%struct.iscsi_cmd* %43, %struct.iscsi_conn* %44, i32 1, %struct.iscsi_scsi_rsp* %48)
  %50 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %51 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %51, i32 0, i32 0
  %53 = call i32 @isert_init_tx_hdrs(%struct.isert_conn* %50, %struct.TYPE_3__* %52)
  %54 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %55 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %56 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @isert_init_send_wr(%struct.isert_conn* %54, %struct.isert_cmd* %55, %struct.ib_send_wr* %58)
  %60 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %61 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @isert_post_recv(%struct.isert_conn* %60, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %37
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @isert_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %3, align 4
  br label %85

71:                                               ; preds = %37
  %72 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store %struct.ib_send_wr* %74, %struct.ib_send_wr** %10, align 8
  br label %75

75:                                               ; preds = %71, %28
  %76 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %77 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %78 = load %struct.ib_cqe*, %struct.ib_cqe** %9, align 8
  %79 = load %struct.ib_send_wr*, %struct.ib_send_wr** %10, align 8
  %80 = call i32 @isert_rdma_rw_ctx_post(%struct.isert_cmd* %76, %struct.isert_conn* %77, %struct.ib_cqe* %78, %struct.ib_send_wr* %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @isert_dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), %struct.isert_cmd* %81, i32 %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %75, %67
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_cmd*, i32) #1

declare dso_local i64 @isert_prot_cmd(%struct.isert_conn*, %struct.se_cmd*) #1

declare dso_local i32 @isert_create_send_desc(%struct.isert_conn*, %struct.isert_cmd*, %struct.TYPE_3__*) #1

declare dso_local i32 @iscsit_build_rsp_pdu(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32, %struct.iscsi_scsi_rsp*) #1

declare dso_local i32 @isert_init_tx_hdrs(%struct.isert_conn*, %struct.TYPE_3__*) #1

declare dso_local i32 @isert_init_send_wr(%struct.isert_conn*, %struct.isert_cmd*, %struct.ib_send_wr*) #1

declare dso_local i32 @isert_post_recv(%struct.isert_conn*, i32) #1

declare dso_local i32 @isert_err(i8*, i32) #1

declare dso_local i32 @isert_rdma_rw_ctx_post(%struct.isert_cmd*, %struct.isert_conn*, %struct.ib_cqe*, %struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
