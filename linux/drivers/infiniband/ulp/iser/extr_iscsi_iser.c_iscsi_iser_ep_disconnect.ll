; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.iser_conn* }
%struct.iser_conn = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"ep %p iser conn %p\0A\00", align 1
@iser_release_work = common dso_local global i32 0, align 4
@release_wq = common dso_local global i32 0, align 4
@ISER_CONN_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_endpoint*)* @iscsi_iser_ep_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_iser_ep_disconnect(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.iser_conn*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  %4 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %4, i32 0, i32 0
  %6 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  store %struct.iser_conn* %6, %struct.iser_conn** %3, align 8
  %7 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %8 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %9 = call i32 @iser_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.iscsi_endpoint* %7, %struct.iser_conn* %8)
  %10 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %14 = call i32 @iser_conn_terminate(%struct.iser_conn* %13)
  %15 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %16 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %21 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %20, i32 0, i32 2
  %22 = load i32, i32* @iser_release_work, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load i32, i32* @release_wq, align 4
  %25 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 2
  %27 = call i32 @queue_work(i32 %24, i32* %26)
  %28 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %29 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %40

31:                                               ; preds = %1
  %32 = load i32, i32* @ISER_CONN_DOWN, align 4
  %33 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %34 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %36 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %39 = call i32 @iser_conn_release(%struct.iser_conn* %38)
  br label %40

40:                                               ; preds = %31, %19
  %41 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %42 = call i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint* %41)
  ret void
}

declare dso_local i32 @iser_info(i8*, %struct.iscsi_endpoint*, %struct.iser_conn*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iser_conn_terminate(%struct.iser_conn*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iser_conn_release(%struct.iser_conn*) #1

declare dso_local i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
