; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_alloc_dm_memic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_alloc_dm_memic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.mlx5_ib_dm = type { i32, i32 }
%struct.ib_dm_alloc_attr = type { i32, i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_dm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.mlx5_dm }
%struct.TYPE_4__ = type { i32 }

@MLX5_MEMIC_BASE_SIZE = common dso_local global i32 0, align 4
@memic_bar_start_addr = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX5_IB_ATTR_ALLOC_DM_RESP_PAGE_INDEX = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.mlx5_ib_dm*, %struct.ib_dm_alloc_attr*, %struct.uverbs_attr_bundle*)* @handle_alloc_dm_memic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_alloc_dm_memic(%struct.ib_ucontext* %0, %struct.mlx5_ib_dm* %1, %struct.ib_dm_alloc_attr* %2, %struct.uverbs_attr_bundle* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.mlx5_ib_dm*, align 8
  %8 = alloca %struct.ib_dm_alloc_attr*, align 8
  %9 = alloca %struct.uverbs_attr_bundle*, align 8
  %10 = alloca %struct.mlx5_dm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %6, align 8
  store %struct.mlx5_ib_dm* %1, %struct.mlx5_ib_dm** %7, align 8
  store %struct.ib_dm_alloc_attr* %2, %struct.ib_dm_alloc_attr** %8, align 8
  store %struct.uverbs_attr_bundle* %3, %struct.uverbs_attr_bundle** %9, align 8
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %15 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_5__* @to_mdev(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.mlx5_dm* %18, %struct.mlx5_dm** %10, align 8
  %19 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %8, align 8
  %20 = getelementptr inbounds %struct.ib_dm_alloc_attr, %struct.ib_dm_alloc_attr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLX5_MEMIC_BASE_SIZE, align 4
  %23 = call i32 @roundup(i32 %21, i32 %22)
  %24 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx5_dm*, %struct.mlx5_dm** %10, align 8
  %27 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %27, i32 0, i32 0
  %29 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_dm_alloc_attr*, %struct.ib_dm_alloc_attr** %8, align 8
  %33 = getelementptr inbounds %struct.ib_dm_alloc_attr, %struct.ib_dm_alloc_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mlx5_cmd_alloc_memic(%struct.mlx5_dm* %26, i32* %28, i32 %31, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %100

40:                                               ; preds = %4
  %41 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5_dm*, %struct.mlx5_dm** %10, align 8
  %45 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_resource_start(i32 %48, i32 0)
  %50 = sub nsw i32 %43, %49
  %51 = load %struct.mlx5_dm*, %struct.mlx5_dm** %10, align 8
  %52 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* @memic_bar_start_addr, align 4
  %55 = call i32 @MLX5_CAP64_DEV_MEM(%struct.TYPE_6__* %53, i32 %54)
  %56 = sub nsw i32 %50, %55
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %60 = load i32, i32* @MLX5_IB_ATTR_ALLOC_DM_RESP_PAGE_INDEX, align 4
  %61 = call i32 @uverbs_copy_to(%struct.uverbs_attr_bundle* %59, i32 %60, i32* %12, i32 4)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %40
  br label %90

65:                                               ; preds = %40
  %66 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PAGE_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  store i32 %71, i32* %11, align 4
  %72 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %9, align 8
  %73 = load i32, i32* @MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET, align 4
  %74 = call i32 @uverbs_copy_to(%struct.uverbs_attr_bundle* %72, i32 %73, i32* %11, i32 4)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %90

78:                                               ; preds = %65
  %79 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %80 = call %struct.TYPE_4__* @to_mucontext(%struct.ib_ucontext* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = call i32 @DIV_ROUND_UP(i32 %86, i32 %87)
  %89 = call i32 @bitmap_set(i32 %82, i32 %83, i32 %88)
  store i32 0, i32* %5, align 4
  br label %100

90:                                               ; preds = %77, %64
  %91 = load %struct.mlx5_dm*, %struct.mlx5_dm** %10, align 8
  %92 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %93 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlx5_ib_dm*, %struct.mlx5_ib_dm** %7, align 8
  %96 = getelementptr inbounds %struct.mlx5_ib_dm, %struct.mlx5_ib_dm* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mlx5_cmd_dealloc_memic(%struct.mlx5_dm* %91, i32 %94, i32 %97)
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %90, %78, %38
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_5__* @to_mdev(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @mlx5_cmd_alloc_memic(%struct.mlx5_dm*, i32*, i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @MLX5_CAP64_DEV_MEM(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @uverbs_copy_to(%struct.uverbs_attr_bundle*, i32, i32*, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mlx5_cmd_dealloc_memic(%struct.mlx5_dm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
