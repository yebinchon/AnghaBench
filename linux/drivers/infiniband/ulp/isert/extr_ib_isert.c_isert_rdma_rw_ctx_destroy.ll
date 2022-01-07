; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_rw_ctx_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_rw_ctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_cmd = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { %struct.se_cmd }
%struct.se_cmd = type { i32, i32, i32, i32 }
%struct.isert_conn = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_cmd*, %struct.isert_conn*)* @isert_rdma_rw_ctx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_rdma_rw_ctx_destroy(%struct.isert_cmd* %0, %struct.isert_conn* %1) #0 {
  %3 = alloca %struct.isert_cmd*, align 8
  %4 = alloca %struct.isert_conn*, align 8
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.isert_cmd* %0, %struct.isert_cmd** %3, align 8
  store %struct.isert_conn* %1, %struct.isert_conn** %4, align 8
  %7 = load %struct.isert_cmd*, %struct.isert_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.se_cmd* %10, %struct.se_cmd** %5, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %12 = call i32 @target_reverse_dma_direction(%struct.se_cmd* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.isert_cmd*, %struct.isert_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %21 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %22 = call i64 @isert_prot_cmd(%struct.isert_conn* %20, %struct.se_cmd* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load %struct.isert_cmd*, %struct.isert_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %25, i32 0, i32 0
  %27 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %28 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %31 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @rdma_rw_ctx_destroy_signature(%struct.TYPE_7__* %26, i32 %29, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %47)
  br label %68

49:                                               ; preds = %19
  %50 = load %struct.isert_cmd*, %struct.isert_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %50, i32 0, i32 0
  %52 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %53 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %56 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @rdma_rw_ctx_destroy(%struct.TYPE_7__* %51, i32 %54, i32 %59, i32 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %49, %24
  %69 = load %struct.isert_cmd*, %struct.isert_cmd** %3, align 8
  %70 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %18
  ret void
}

declare dso_local i32 @target_reverse_dma_direction(%struct.se_cmd*) #1

declare dso_local i64 @isert_prot_cmd(%struct.isert_conn*, %struct.se_cmd*) #1

declare dso_local i32 @rdma_rw_ctx_destroy_signature(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_rw_ctx_destroy(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
