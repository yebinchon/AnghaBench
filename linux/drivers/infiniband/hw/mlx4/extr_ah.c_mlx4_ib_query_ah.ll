; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_query_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i64 }
%struct.rdma_ah_attr = type { i64 }
%struct.mlx4_ib_ah = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8
@MLX4_STAT_RATE_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_query_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.mlx4_ib_ah*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %8 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %9 = call %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah* %8)
  store %struct.mlx4_ib_ah* %9, %struct.mlx4_ib_ah** %5, align 8
  %10 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  %16 = ashr i32 %15, 24
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %18 = call i32 @memset(%struct.rdma_ah_attr* %17, i32 0, i32 8)
  %19 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %20 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %25 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %31 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %30, i32 0)
  %32 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %33 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = ashr i32 %38, 29
  %40 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %32, i32 %39)
  br label %59

41:                                               ; preds = %2
  %42 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %43 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = call i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr* %42, i32 %48)
  %50 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %51 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = ashr i32 %56, 28
  %58 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %50, i32 %57)
  br label %59

59:                                               ; preds = %41, %29
  %60 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %60, i32 %61)
  %63 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %59
  %70 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %71 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MLX4_STAT_RATE_OFFSET, align 8
  %77 = sub nsw i64 %75, %76
  %78 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %70, i64 %77)
  br label %79

79:                                               ; preds = %69, %59
  %80 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %81 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 127
  %87 = call i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr* %80, i32 %86)
  %88 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %89 = call i64 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %79
  %92 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @be32_to_cpu(i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 1048575
  %101 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 20
  %113 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %98, i32* null, i32 %100, i32 %105, i32 %110, i32 %112)
  %114 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %115 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %5, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %114, i32 %119)
  br label %121

121:                                              ; preds = %91, %79
  ret i32 0
}

declare dso_local %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dlid(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i64) #1

declare dso_local i32 @rdma_ah_set_path_bits(%struct.rdma_ah_attr*, i32) #1

declare dso_local i64 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah*) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
