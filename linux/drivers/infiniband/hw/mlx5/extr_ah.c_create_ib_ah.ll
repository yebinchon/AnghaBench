; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ah.c_create_ib_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ah.c_create_ib_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_ah = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.ib_global_route = type { i32, i32, i32, i32, i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@MLX5_ECN_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_ah*, %struct.rdma_ah_attr*)* @create_ib_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_ib_ah(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_ah* %1, %struct.rdma_ah_attr* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_ah*, align 8
  %6 = alloca %struct.rdma_ah_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_global_route*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_ah* %1, %struct.mlx5_ib_ah** %5, align 8
  store %struct.rdma_ah_attr* %2, %struct.rdma_ah_attr** %6, align 8
  %9 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %10 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %9)
  %11 = load i32, i32* @IB_AH_GRH, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %16 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %15)
  store %struct.ib_global_route* %16, %struct.ib_global_route** %8, align 8
  %17 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %22 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %21, i32 0, i32 4
  %23 = call i32 @memcpy(i32 %20, i32* %22, i32 16)
  %24 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %25 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 1073741824
  %28 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %29 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 20
  %32 = or i32 %27, %31
  %33 = call i32 @cpu_to_be32(i32 %32)
  %34 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %38 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 6
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ib_global_route*, %struct.ib_global_route** %8, align 8
  %44 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %14, %3
  %50 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %51 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %50)
  %52 = shl i32 %51, 4
  %53 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %57 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %49
  %62 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %63 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %69 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %73 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @memcpy(i32 %71, i32* %75, i32 8)
  %77 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %78 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %79 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = call i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev* %77, %struct.TYPE_8__* %81)
  %83 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 4
  %86 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %87 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %86)
  %88 = and i32 %87, 7
  %89 = shl i32 %88, 1
  %90 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %61
  %99 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 1)
  %100 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %61
  br label %127

106:                                              ; preds = %49
  %107 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %108 = call i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr* %107)
  %109 = call i32 @cpu_to_be16(i32 %108)
  %110 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %111 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 4
  %113 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %114 = call i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr* %113)
  %115 = and i32 %114, 127
  %116 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %117 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %6, align 8
  %120 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %119)
  %121 = and i32 %120, 15
  %122 = load %struct.mlx5_ib_ah*, %struct.mlx5_ib_ah** %5, align 8
  %123 = getelementptr inbounds %struct.mlx5_ib_ah, %struct.mlx5_ib_ah* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %106, %105
  ret void
}

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

declare dso_local i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev*, %struct.TYPE_8__*) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @BIT(...) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @rdma_ah_get_dlid(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_ah_get_path_bits(%struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
