; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_to_rdma_ah_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_to_rdma_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i64, i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.mlx5_qp_path = type { i64, i32, i32, i32, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.rdma_ah_attr*, %struct.mlx5_qp_path*)* @to_rdma_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_rdma_ah_attr(%struct.mlx5_ib_dev* %0, %struct.rdma_ah_attr* %1, %struct.mlx5_qp_path* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.mlx5_qp_path*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.mlx5_qp_path* %2, %struct.mlx5_qp_path** %6, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %9 = call i32 @memset(%struct.rdma_ah_attr* %8, i32 0, i32 4)
  %10 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %3
  br label %97

23:                                               ; preds = %14
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 1
  %26 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @rdma_ah_find_type(i32* %25, i64 %28)
  %30 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %31 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %33 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %32, i64 %35)
  %37 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %38 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 15
  %42 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %37, i32 %41)
  %43 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %44 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %43, i32 %47)
  %49 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %50 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 127
  %54 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %49, i32 %53)
  %55 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %56 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %23
  %61 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 5
  br label %66

65:                                               ; preds = %23
  br label %66

66:                                               ; preds = %65, %60
  %67 = phi i64 [ %64, %60 ], [ 0, %65 ]
  %68 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %55, i64 %67)
  %69 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %66
  %75 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %76 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 1048575
  %82 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %83 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %86 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 20
  %90 = and i32 %89, 255
  %91 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %79, i32* null, i32 %81, i32 %84, i32 %87, i32 %90)
  %92 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %93 = load %struct.mlx5_qp_path*, %struct.mlx5_qp_path** %6, align 8
  %94 = getelementptr inbounds %struct.mlx5_qp_path, %struct.mlx5_qp_path* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %92, i32 %95)
  br label %97

97:                                               ; preds = %22, %74, %66
  ret void
}

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(i32*, i64) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i64) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
