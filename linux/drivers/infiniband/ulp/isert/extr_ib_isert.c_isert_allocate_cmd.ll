; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_allocate_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_allocate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32 }
%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { i32 }
%struct.iser_rx_desc = type { i32 }
%struct.isert_cmd = type { %struct.iser_rx_desc*, %struct.iscsi_cmd*, %struct.isert_conn* }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to allocate iscsi_cmd + isert_cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cmd* (%struct.iscsi_conn*, %struct.iser_rx_desc*)* @isert_allocate_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cmd* @isert_allocate_cmd(%struct.iscsi_conn* %0, %struct.iser_rx_desc* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iser_rx_desc*, align 8
  %6 = alloca %struct.isert_conn*, align 8
  %7 = alloca %struct.isert_cmd*, align 8
  %8 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iser_rx_desc* %1, %struct.iser_rx_desc** %5, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 0
  %11 = load %struct.isert_conn*, %struct.isert_conn** %10, align 8
  store %struct.isert_conn* %11, %struct.isert_conn** %6, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %12, i32 %13)
  store %struct.iscsi_cmd* %14, %struct.iscsi_cmd** %8, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  %16 = icmp ne %struct.iscsi_cmd* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @isert_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %3, align 8
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  %21 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %20)
  store %struct.isert_cmd* %21, %struct.isert_cmd** %7, align 8
  %22 = load %struct.isert_conn*, %struct.isert_conn** %6, align 8
  %23 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %23, i32 0, i32 2
  store %struct.isert_conn* %22, %struct.isert_conn** %24, align 8
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  %26 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %26, i32 0, i32 1
  store %struct.iscsi_cmd* %25, %struct.iscsi_cmd** %27, align 8
  %28 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %5, align 8
  %29 = load %struct.isert_cmd*, %struct.isert_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %29, i32 0, i32 0
  store %struct.iser_rx_desc* %28, %struct.iser_rx_desc** %30, align 8
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  store %struct.iscsi_cmd* %31, %struct.iscsi_cmd** %3, align 8
  br label %32

32:                                               ; preds = %19, %17
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  ret %struct.iscsi_cmd* %33
}

declare dso_local %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @isert_err(i8*) #1

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
