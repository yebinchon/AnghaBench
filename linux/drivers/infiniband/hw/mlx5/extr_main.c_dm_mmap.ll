; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_dm_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_dm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.mlx5_ib_ucontext = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@memic_bar_start_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* @dm_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.mlx5_ib_ucontext*, align 8
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %13 = call %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %12)
  store %struct.mlx5_ib_ucontext* %13, %struct.mlx5_ib_ucontext** %6, align 8
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %15 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx5_ib_dev* @to_mdev(i32 %16)
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %7, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @get_extended_index(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @find_next_zero_bit(i32 %34, i64 %37, i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %2
  %48 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* @memic_bar_start_addr, align 4
  %57 = call i64 @MLX5_CAP64_DEV_MEM(%struct.TYPE_2__* %55, i32 %56)
  %58 = add i64 %52, %57
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pgprot_writecombine(i32 %69)
  %71 = call i32 @rdma_user_mmap_io(%struct.ib_ucontext* %63, %struct.vm_area_struct* %64, i64 %65, i64 %66, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %47, %44
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @get_extended_index(i32) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i64 @MLX5_CAP64_DEV_MEM(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rdma_user_mmap_io(%struct.ib_ucontext*, %struct.vm_area_struct*, i64, i64, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
