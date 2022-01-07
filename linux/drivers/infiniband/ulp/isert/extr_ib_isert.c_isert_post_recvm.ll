; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_post_recvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_post_recvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.ib_recv_wr*, i32, %struct.iser_rx_desc* }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, i32*, i32* }
%struct.iser_rx_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"ib_post_recv() failed with ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, i32)* @isert_post_recvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_post_recvm(%struct.isert_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.isert_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iser_rx_desc*, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 0
  %11 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %10, align 8
  store %struct.ib_recv_wr* %11, %struct.ib_recv_wr** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %18 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %17, i32 0, i32 2
  %19 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %19, i64 %21
  store %struct.iser_rx_desc* %22, %struct.iser_rx_desc** %8, align 8
  %23 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %8, align 8
  %24 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %23, i32 0, i32 2
  %25 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %26 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %8, align 8
  %28 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %27, i32 0, i32 1
  %29 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %30 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %34 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %33, i64 1
  %35 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %35, i32 0, i32 1
  store %struct.ib_recv_wr* %34, %struct.ib_recv_wr** %36, align 8
  %37 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %8, align 8
  %38 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %42, i32 1
  store %struct.ib_recv_wr* %43, %struct.ib_recv_wr** %5, align 8
  br label %12

44:                                               ; preds = %12
  %45 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %45, i32 -1
  store %struct.ib_recv_wr* %46, %struct.ib_recv_wr** %5, align 8
  %47 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %48 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %47, i32 0, i32 1
  store %struct.ib_recv_wr* null, %struct.ib_recv_wr** %48, align 8
  %49 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %50 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.isert_conn*, %struct.isert_conn** %3, align 8
  %53 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %52, i32 0, i32 0
  %54 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %53, align 8
  %55 = call i32 @ib_post_recv(i32 %51, %struct.ib_recv_wr* %54, i32* null)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @isert_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
