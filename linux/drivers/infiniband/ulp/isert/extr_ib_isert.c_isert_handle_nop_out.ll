; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_handle_nop_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_handle_nop_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.isert_cmd = type { i32 }
%struct.iscsi_cmd = type { i32 }
%struct.iser_rx_desc = type { i32 }
%struct.iscsi_nopout = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.isert_cmd*, %struct.iscsi_cmd*, %struct.iser_rx_desc*, i8*)* @isert_handle_nop_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_handle_nop_out(%struct.isert_conn* %0, %struct.isert_cmd* %1, %struct.iscsi_cmd* %2, %struct.iser_rx_desc* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca %struct.isert_cmd*, align 8
  %9 = alloca %struct.iscsi_cmd*, align 8
  %10 = alloca %struct.iser_rx_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iscsi_conn*, align 8
  %13 = alloca %struct.iscsi_nopout*, align 8
  %14 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %7, align 8
  store %struct.isert_cmd* %1, %struct.isert_cmd** %8, align 8
  store %struct.iscsi_cmd* %2, %struct.iscsi_cmd** %9, align 8
  store %struct.iser_rx_desc* %3, %struct.iser_rx_desc** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %16 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %15, i32 0, i32 0
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  store %struct.iscsi_conn* %17, %struct.iscsi_conn** %12, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.iscsi_nopout*
  store %struct.iscsi_nopout* %19, %struct.iscsi_nopout** %13, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %22 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %13, align 8
  %23 = call i32 @iscsit_setup_nop_out(%struct.iscsi_conn* %20, %struct.iscsi_cmd* %21, %struct.iscsi_nopout* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %33

28:                                               ; preds = %5
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %30 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %31 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %13, align 8
  %32 = call i32 @iscsit_process_nop_out(%struct.iscsi_conn* %29, %struct.iscsi_cmd* %30, %struct.iscsi_nopout* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @iscsit_setup_nop_out(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_nopout*) #1

declare dso_local i32 @iscsit_process_nop_out(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_nopout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
