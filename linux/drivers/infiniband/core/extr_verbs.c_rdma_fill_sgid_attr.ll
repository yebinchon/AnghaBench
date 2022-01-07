; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_fill_sgid_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_rdma_fill_sgid_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i32 }
%struct.ib_global_route = type { %struct.ib_gid_attr*, i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_ah_attr*, %struct.ib_gid_attr**)* @rdma_fill_sgid_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_fill_sgid_attr(%struct.ib_device* %0, %struct.rdma_ah_attr* %1, %struct.ib_gid_attr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca %struct.ib_gid_attr**, align 8
  %8 = alloca %struct.ib_gid_attr*, align 8
  %9 = alloca %struct.ib_global_route*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %6, align 8
  store %struct.ib_gid_attr** %2, %struct.ib_gid_attr*** %7, align 8
  %11 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %12 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %13, align 8
  %15 = load %struct.ib_gid_attr**, %struct.ib_gid_attr*** %7, align 8
  store %struct.ib_gid_attr* %14, %struct.ib_gid_attr** %15, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %18 = call i32 @rdma_check_ah_attr(%struct.ib_device* %16, %struct.rdma_ah_attr* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %25 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IB_AH_GRH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %58

31:                                               ; preds = %23
  %32 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %33 = call %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr* %32)
  store %struct.ib_global_route* %33, %struct.ib_global_route** %9, align 8
  %34 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %35 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %34, i32 0, i32 0
  %36 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %35, align 8
  %37 = icmp ne %struct.ib_gid_attr* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %58

39:                                               ; preds = %31
  %40 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %41 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %42 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %45 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.ib_gid_attr* @rdma_get_gid_attr(%struct.ib_device* %40, i32 %43, i32 %46)
  store %struct.ib_gid_attr* %47, %struct.ib_gid_attr** %8, align 8
  %48 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %49 = call i64 @IS_ERR(%struct.ib_gid_attr* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %53 = call i32 @PTR_ERR(%struct.ib_gid_attr* %52)
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %39
  %55 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %56 = load %struct.ib_global_route*, %struct.ib_global_route** %9, align 8
  %57 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %56, i32 0, i32 0
  store %struct.ib_gid_attr* %55, %struct.ib_gid_attr** %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %51, %38, %30, %21
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @rdma_check_ah_attr(%struct.ib_device*, %struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_gid_attr* @rdma_get_gid_attr(%struct.ib_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_gid_attr*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
