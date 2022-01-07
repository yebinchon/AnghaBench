; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, %struct.iser_rx_desc*, %struct.ib_conn }
%struct.iser_rx_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ib_conn = type { i32, %struct.ib_recv_wr*, i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, i32*, %struct.TYPE_2__* }

@iser_task_rsp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ib_post_recv failed ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_recvm(%struct.iser_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iser_rx_desc*, align 8
  %8 = alloca %struct.ib_recv_wr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 3
  store %struct.ib_conn* %12, %struct.ib_conn** %5, align 8
  %13 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %17 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %16, i32 0, i32 1
  %18 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %17, align 8
  store %struct.ib_recv_wr* %18, %struct.ib_recv_wr** %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %54, %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %25 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %24, i32 0, i32 2
  %26 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %26, i64 %28
  store %struct.iser_rx_desc* %29, %struct.iser_rx_desc** %7, align 8
  %30 = load i32, i32* @iser_task_rsp, align 4
  %31 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %32 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %35 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %34, i32 0, i32 1
  %36 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %37 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %36, i32 0, i32 3
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %39 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %38, i32 0, i32 0
  %40 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %41 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %43 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %45 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %44, i64 1
  %46 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %47 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %46, i32 0, i32 1
  store %struct.ib_recv_wr* %45, %struct.ib_recv_wr** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  %50 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %51 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %23
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %58 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %57, i32 1
  store %struct.ib_recv_wr* %58, %struct.ib_recv_wr** %8, align 8
  br label %19

59:                                               ; preds = %19
  %60 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %61 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %60, i32 -1
  store %struct.ib_recv_wr* %61, %struct.ib_recv_wr** %8, align 8
  %62 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %63 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %62, i32 0, i32 1
  store %struct.ib_recv_wr* null, %struct.ib_recv_wr** %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %66 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %70 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %73 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %72, i32 0, i32 1
  %74 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %73, align 8
  %75 = call i32 @ib_post_recv(i32 %71, %struct.ib_recv_wr* %74, i32* null)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %59
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @iser_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %83 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %90

86:                                               ; preds = %59
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %89 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %78
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
