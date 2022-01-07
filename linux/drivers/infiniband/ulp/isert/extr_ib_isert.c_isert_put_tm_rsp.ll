; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_tm_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_tm_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32 }
%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ib_send_wr }
%struct.ib_send_wr = type { i32 }
%struct.iscsi_tm_rsp = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"conn %p Posting Task Management Response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @isert_put_tm_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_put_tm_rsp(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.isert_cmd*, align 8
  %6 = alloca %struct.isert_conn*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  %8 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %9 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %8)
  store %struct.isert_cmd* %9, %struct.isert_cmd** %5, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.isert_conn*, %struct.isert_conn** %11, align 8
  store %struct.isert_conn* %12, %struct.isert_conn** %6, align 8
  %13 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.ib_send_wr* %15, %struct.ib_send_wr** %7, align 8
  %16 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %17 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %18 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %18, i32 0, i32 0
  %20 = call i32 @isert_create_send_desc(%struct.isert_conn* %16, %struct.isert_cmd* %17, %struct.TYPE_3__* %19)
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %23 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %struct.iscsi_tm_rsp*
  %27 = call i32 @iscsit_build_task_mgt_rsp(%struct.iscsi_cmd* %21, %struct.iscsi_conn* %22, %struct.iscsi_tm_rsp* %26)
  %28 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %29 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %29, i32 0, i32 0
  %31 = call i32 @isert_init_tx_hdrs(%struct.isert_conn* %28, %struct.TYPE_3__* %30)
  %32 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %33 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %35 = call i32 @isert_init_send_wr(%struct.isert_conn* %32, %struct.isert_cmd* %33, %struct.ib_send_wr* %34)
  %36 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %37 = call i32 @isert_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %36)
  %38 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %39 = load %struct.isert_cmd*, %struct.isert_cmd** %5, align 8
  %40 = call i32 @isert_post_response(%struct.isert_conn* %38, %struct.isert_cmd* %39)
  ret i32 %40
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_create_send_desc(%struct.isert_conn*, %struct.isert_cmd*, %struct.TYPE_3__*) #1

declare dso_local i32 @iscsit_build_task_mgt_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*, %struct.iscsi_tm_rsp*) #1

declare dso_local i32 @isert_init_tx_hdrs(%struct.isert_conn*, %struct.TYPE_3__*) #1

declare dso_local i32 @isert_init_send_wr(%struct.isert_conn*, %struct.isert_cmd*, %struct.ib_send_wr*) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_conn*) #1

declare dso_local i32 @isert_post_response(%struct.isert_conn*, %struct.isert_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
