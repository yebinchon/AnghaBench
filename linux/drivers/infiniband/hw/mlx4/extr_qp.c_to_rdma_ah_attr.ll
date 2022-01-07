; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_to_rdma_ah_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_to_rdma_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rdma_ah_attr = type { i32 }
%struct.mlx4_qp_path = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, %struct.rdma_ah_attr*, %struct.mlx4_qp_path*)* @to_rdma_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_rdma_ah_attr(%struct.mlx4_ib_dev* %0, %struct.rdma_ah_attr* %1, %struct.mlx4_qp_path* %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.mlx4_qp_path*, align 8
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.mlx4_qp_path* %2, %struct.mlx4_qp_path** %6, align 8
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 1
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  store %struct.mlx4_dev* %11, %struct.mlx4_dev** %7, align 8
  %12 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 64
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %21 = call i32 @memset(%struct.rdma_ah_attr* %20, i32 0, i32 4)
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %3
  br label %126

32:                                               ; preds = %24
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @rdma_ah_find_type(i32* %34, i64 %35)
  %37 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %38 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %40 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %32
  %45 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %46 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 3
  %50 = and i32 %49, 7
  %51 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 4
  %55 = shl i32 %54, 1
  %56 = or i32 %50, %55
  %57 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %45, i32 %56)
  br label %66

58:                                               ; preds = %32
  %59 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %60 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 2
  %64 = and i32 %63, 15
  %65 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %59, i32 %64)
  br label %66

66:                                               ; preds = %58, %44
  %67 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %67, i64 %68)
  %70 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %71 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @be16_to_cpu(i32 %73)
  %75 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %70, i32 %74)
  %76 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %77 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %78 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 127
  %81 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %76, i32 %80)
  %82 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %83 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %84 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %66
  %88 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %89 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 5
  br label %93

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i64 [ %91, %87 ], [ 0, %92 ]
  %95 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %82, i64 %94)
  %96 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %97 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %93
  %102 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %103 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %104 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be32_to_cpu(i32 %105)
  %107 = and i32 %106, 1048575
  %108 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %109 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %112 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %115 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @be32_to_cpu(i32 %116)
  %118 = ashr i32 %117, 20
  %119 = and i32 %118, 255
  %120 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %102, i32* null, i32 %107, i32 %110, i32 %113, i32 %119)
  %121 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %122 = load %struct.mlx4_qp_path*, %struct.mlx4_qp_path** %6, align 8
  %123 = getelementptr inbounds %struct.mlx4_qp_path, %struct.mlx4_qp_path* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %121, i32 %124)
  br label %126

126:                                              ; preds = %31, %101, %93
  ret void
}

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_find_type(i32*, i64) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i64) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i64) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
