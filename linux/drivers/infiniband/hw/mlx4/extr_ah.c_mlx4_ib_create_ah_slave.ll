; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_create_ah_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_create_ah_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i64 }
%struct.rdma_ah_attr = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.mlx4_ib_ah = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_create_ah_slave(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_ah*, align 8
  %8 = alloca %struct.rdma_ah_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rdma_ah_attr, align 8
  %13 = alloca %struct.mlx4_ib_ah*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %7, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %16 = bitcast %struct.rdma_ah_attr* %12 to i8*
  %17 = bitcast %struct.rdma_ah_attr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = load %struct.ib_ah*, %struct.ib_ah** %7, align 8
  %19 = call %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah* %18)
  store %struct.mlx4_ib_ah* %19, %struct.mlx4_ib_ah** %13, align 8
  %20 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %12, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %12, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ib_ah*, %struct.ib_ah** %7, align 8
  %26 = call i32 @mlx4_ib_create_ah(%struct.ib_ah* %25, %struct.rdma_ah_attr* %12, i32 0, i32* null)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %74

31:                                               ; preds = %5
  %32 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %33 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ib_ah*, %struct.ib_ah** %7, align 8
  %36 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = call i32 @cpu_to_be32(i32 2147483647)
  %38 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %13, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %45 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RDMA_AH_ATTR_TYPE_ROCE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %31
  %50 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %13, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @memcpy(i32 %54, i32* %55, i32 6)
  br label %57

57:                                               ; preds = %49, %31
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 4096
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %8, align 8
  %62 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %61)
  %63 = and i32 %62, 7
  %64 = shl i32 %63, 13
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @cpu_to_be16(i32 %68)
  %70 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %13, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %67, %29
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah*) #2

declare dso_local i32 @mlx4_ib_create_ah(%struct.ib_ah*, %struct.rdma_ah_attr*, i32, i32*) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #2

declare dso_local i32 @cpu_to_be16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
