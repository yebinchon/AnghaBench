; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_send_sidr_rep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_send_sidr_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_cm_sidr_rep_param = type { i32, i32, i8*, i32, i32 }

@IB_SIDR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i32, i32, i8*, i32)* @cma_send_sidr_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_send_sidr_rep(%struct.rdma_id_private* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rdma_id_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_cm_sidr_rep_param, align 8
  %13 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 @memset(%struct.ib_cm_sidr_rep_param* %12, i32 0, i32 24)
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %12, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IB_SIDR_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %5
  %21 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @cma_set_qkey(%struct.rdma_id_private* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %47

28:                                               ; preds = %20
  %29 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %30 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %12, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %12, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  br label %37

37:                                               ; preds = %28, %5
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %12, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.ib_cm_sidr_rep_param, %struct.ib_cm_sidr_rep_param* %12, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.rdma_id_private*, %struct.rdma_id_private** %7, align 8
  %43 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ib_send_cm_sidr_rep(i32 %45, %struct.ib_cm_sidr_rep_param* %12)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %37, %26
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.ib_cm_sidr_rep_param*, i32, i32) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @ib_send_cm_sidr_rep(i32, %struct.ib_cm_sidr_rep_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
