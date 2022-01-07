; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_gid_index_to_real_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_gid_index_to_real_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, i32, %struct.mlx4_ib_iboe }
%struct.mlx4_ib_iboe = type { i32, %struct.mlx4_port_gid_table* }
%struct.mlx4_port_gid_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.gid_cache_context*, i32 }
%struct.gid_cache_context = type { i32 }
%struct.ib_gid_attr = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@MLX4_MAX_PORT_GIDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_gid_index_to_real_index(%struct.mlx4_ib_dev* %0, %struct.ib_gid_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca %struct.ib_gid_attr*, align 8
  %6 = alloca %struct.mlx4_ib_iboe*, align 8
  %7 = alloca %struct.gid_cache_context*, align 8
  %8 = alloca %struct.mlx4_port_gid_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %5, align 8
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 2
  store %struct.mlx4_ib_iboe* %14, %struct.mlx4_ib_iboe** %6, align 8
  store %struct.gid_cache_context* null, %struct.gid_cache_context** %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %18 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %110

26:                                               ; preds = %2
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mlx4_is_bonded(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @rdma_cap_roce_gid_table(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %110

43:                                               ; preds = %33
  %44 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %44, i32 0, i32 0
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %48, i32 0, i32 1
  %50 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %50, i64 %53
  store %struct.mlx4_port_gid_table* %54, %struct.mlx4_port_gid_table** %8, align 8
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %94, %43
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %55
  %60 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %61 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %68 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %67, i32 0, i32 3
  %69 = call i32 @memcmp(i32* %66, i32* %68, i32 4)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %59
  %72 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %73 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %74, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %71
  %85 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %86 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load %struct.gid_cache_context*, %struct.gid_cache_context** %91, align 8
  store %struct.gid_cache_context* %92, %struct.gid_cache_context** %7, align 8
  br label %97

93:                                               ; preds = %71, %59
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %55

97:                                               ; preds = %84, %55
  %98 = load %struct.gid_cache_context*, %struct.gid_cache_context** %7, align 8
  %99 = icmp ne %struct.gid_cache_context* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.gid_cache_context*, %struct.gid_cache_context** %7, align 8
  %102 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %100, %97
  %105 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %6, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %105, i32 0, i32 0
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %39, %23
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @mlx4_is_bonded(i32) #1

declare dso_local i32 @rdma_cap_roce_gid_table(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
