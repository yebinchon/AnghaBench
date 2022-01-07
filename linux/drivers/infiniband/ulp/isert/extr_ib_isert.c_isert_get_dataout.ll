; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_get_dataout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_get_dataout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Cmd: %p RDMA_READ data_length: %u write_data_done: %u\0A\00", align 1
@isert_rdma_read_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Cmd: %p posted RDMA_READ memory for ISER Data WRITE rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)* @isert_get_dataout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_get_dataout(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isert_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %10 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %9)
  store %struct.isert_cmd* %10, %struct.isert_cmd** %7, align 8
  %11 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, %struct.isert_cmd*, i32, ...) @isert_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.isert_cmd* %11, i32 %15, i32 %18)
  %20 = load i32, i32* @isert_rdma_read_done, align 4
  %21 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @isert_rdma_rw_ctx_post(%struct.isert_cmd* %25, i32 %28, %struct.TYPE_6__* %31, i32* null)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i8*, %struct.isert_cmd*, i32, ...) @isert_dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.isert_cmd* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_cmd*, i32, ...) #1

declare dso_local i32 @isert_rdma_rw_ctx_post(%struct.isert_cmd*, i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
