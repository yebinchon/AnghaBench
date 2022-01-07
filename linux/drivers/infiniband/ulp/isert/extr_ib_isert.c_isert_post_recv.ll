; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32 }
%struct.iser_rx_desc = type { i32, i32, i32 }
%struct.ib_recv_wr = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"ib_post_recv() failed with ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.iser_rx_desc*)* @isert_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_post_recv(%struct.isert_conn* %0, %struct.iser_rx_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isert_conn*, align 8
  %5 = alloca %struct.iser_rx_desc*, align 8
  %6 = alloca %struct.ib_recv_wr, align 8
  %7 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %4, align 8
  store %struct.iser_rx_desc* %1, %struct.iser_rx_desc** %5, align 8
  %8 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %5, align 8
  %9 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %5, align 8
  %15 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %5, align 8
  %17 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 3
  store i32* %17, i32** %18, align 8
  %19 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %5, align 8
  %20 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 2
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %25 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ib_post_recv(i32 %26, %struct.ib_recv_wr* %6, i32* null)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @isert_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %13
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
