; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c_rdma_dim_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cq.c_rdma_dim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i64, %struct.dim*, %struct.TYPE_4__* }
%struct.dim = type { i32, %struct.ib_cq*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IB_POLL_DIRECT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DIM_START_MEASURE = common dso_local global i32 0, align 4
@DIM_GOING_RIGHT = common dso_local global i32 0, align 4
@RDMA_DIM_START_PROFILE = common dso_local global i32 0, align 4
@ib_cq_rdma_dim_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*)* @rdma_dim_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdma_dim_init(%struct.ib_cq* %0) #0 {
  %2 = alloca %struct.ib_cq*, align 8
  %3 = alloca %struct.dim*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %2, align 8
  %4 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %5 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %20 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_POLL_DIRECT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %11, %1
  br label %51

25:                                               ; preds = %18
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.dim* @kzalloc(i32 32, i32 %26)
  store %struct.dim* %27, %struct.dim** %3, align 8
  %28 = load %struct.dim*, %struct.dim** %3, align 8
  %29 = icmp ne %struct.dim* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %51

31:                                               ; preds = %25
  %32 = load i32, i32* @DIM_START_MEASURE, align 4
  %33 = load %struct.dim*, %struct.dim** %3, align 8
  %34 = getelementptr inbounds %struct.dim, %struct.dim* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DIM_GOING_RIGHT, align 4
  %36 = load %struct.dim*, %struct.dim** %3, align 8
  %37 = getelementptr inbounds %struct.dim, %struct.dim* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @RDMA_DIM_START_PROFILE, align 4
  %39 = load %struct.dim*, %struct.dim** %3, align 8
  %40 = getelementptr inbounds %struct.dim, %struct.dim* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %42 = load %struct.dim*, %struct.dim** %3, align 8
  %43 = getelementptr inbounds %struct.dim, %struct.dim* %42, i32 0, i32 1
  store %struct.ib_cq* %41, %struct.ib_cq** %43, align 8
  %44 = load %struct.dim*, %struct.dim** %3, align 8
  %45 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %46 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %45, i32 0, i32 1
  store %struct.dim* %44, %struct.dim** %46, align 8
  %47 = load %struct.dim*, %struct.dim** %3, align 8
  %48 = getelementptr inbounds %struct.dim, %struct.dim* %47, i32 0, i32 0
  %49 = load i32, i32* @ib_cq_rdma_dim_work, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %31, %30, %24
  ret void
}

declare dso_local %struct.dim* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
