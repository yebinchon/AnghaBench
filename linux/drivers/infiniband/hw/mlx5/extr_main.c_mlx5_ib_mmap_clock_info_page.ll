; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_mmap_clock_info_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_mmap_clock_info_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32 }
%struct.mlx5_ib_ucontext = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_IB_CLOCK_INFO_V1 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.vm_area_struct*, %struct.mlx5_ib_ucontext*)* @mlx5_ib_mmap_clock_info_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_mmap_clock_info_page(%struct.mlx5_ib_dev* %0, %struct.vm_area_struct* %1, %struct.mlx5_ib_ucontext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.mlx5_ib_ucontext*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.mlx5_ib_ucontext* %2, %struct.mlx5_ib_ucontext** %7, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VM_SHARED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %17
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @get_index(i32 %30)
  %32 = load i64, i64* @MLX5_IB_CLOCK_INFO_V1, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %77

37:                                               ; preds = %27
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VM_WRITE, align 4
  %42 = load i32, i32* @VM_EXEC, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %77

49:                                               ; preds = %37
  %50 = load i32, i32* @VM_MAYWRITE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %77

65:                                               ; preds = %49
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @virt_to_page(i32 %74)
  %76 = call i32 @vm_insert_page(%struct.vm_area_struct* %66, i64 %69, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %65, %62, %46, %34, %24
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @get_index(i32) #1

declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
