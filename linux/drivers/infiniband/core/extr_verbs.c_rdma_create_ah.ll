; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_gid_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @rdma_create_ah(%struct.ib_pd* %0, %struct.rdma_ah_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_gid_attr*, align 8
  %9 = alloca %struct.ib_ah*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %15 = call i32 @rdma_fill_sgid_attr(i32 %13, %struct.rdma_ah_attr* %14, %struct.ib_gid_attr** %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.ib_ah* @ERR_PTR(i32 %19)
  store %struct.ib_ah* %20, %struct.ib_ah** %4, align 8
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %23 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.ib_ah* @_rdma_create_ah(%struct.ib_pd* %22, %struct.rdma_ah_attr* %23, i32 %24, i32* null)
  store %struct.ib_ah* %25, %struct.ib_ah** %9, align 8
  %26 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %27 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %28 = call i32 @rdma_unfill_sgid_attr(%struct.rdma_ah_attr* %26, %struct.ib_gid_attr* %27)
  %29 = load %struct.ib_ah*, %struct.ib_ah** %9, align 8
  store %struct.ib_ah* %29, %struct.ib_ah** %4, align 8
  br label %30

30:                                               ; preds = %21, %18
  %31 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  ret %struct.ib_ah* %31
}

declare dso_local i32 @rdma_fill_sgid_attr(i32, %struct.rdma_ah_attr*, %struct.ib_gid_attr**) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.ib_ah* @_rdma_create_ah(%struct.ib_pd*, %struct.rdma_ah_attr*, i32, i32*) #1

declare dso_local i32 @rdma_unfill_sgid_attr(%struct.rdma_ah_attr*, %struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
