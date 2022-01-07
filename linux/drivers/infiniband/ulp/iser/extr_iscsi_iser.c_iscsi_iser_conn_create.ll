; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_cls_session = type { i32 }

@ISER_RECV_DATA_SEG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_conn* (%struct.iscsi_cls_session*, i32)* @iscsi_iser_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_conn* @iscsi_iser_conn_create(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %8, i32 0, i32 %9)
  store %struct.iscsi_cls_conn* %10, %struct.iscsi_cls_conn** %7, align 8
  %11 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %12 = icmp ne %struct.iscsi_cls_conn* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %16 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %15, i32 0, i32 0
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  store %struct.iscsi_conn* %17, %struct.iscsi_conn** %6, align 8
  %18 = load i32, i32* @ISER_RECV_DATA_SEG_LEN, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  store %struct.iscsi_cls_conn* %21, %struct.iscsi_cls_conn** %3, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %23
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
