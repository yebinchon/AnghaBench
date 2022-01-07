; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ah.c_mlx5_ib_query_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ah.c_mlx5_ib_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.mlx5_ib_ah = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_query_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.mlx5_ib_ah*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %7 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %8 = call %struct.mlx5_ib_ah* @to_mah(%struct.ib_ah* %7)
  store %struct.mlx5_ib_ah* %8, %struct.mlx5_ib_ah** %5, align 8
  %9 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %10 = call i32 @memset(%struct.rdma_ah_attr* %9, i32 0, i32 4)
  %11 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %12 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %15 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1073741824
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 1048575
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 20
  %30 = and i32 %29, 255
  %31 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %25, i32* null, i32 %27, i32 %30, i32 %34, i32 %38)
  %40 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %41 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %40, i32 %44)
  br label %46

46:                                               ; preds = %24, %2
  %47 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %48 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %47, i32 %52)
  %54 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %55 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %54, i32 %59)
  %61 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %62 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 15
  %67 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %61, i32 %66)
  ret i32 0
}

declare dso_local %struct.mlx5_ib_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
