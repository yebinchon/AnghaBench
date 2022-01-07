; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx4_clock_params = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* @mlx4_ib_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_clock_params, align 4
  %8 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %10 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx4_ib_dev* @to_mdev(i32 %11)
  store %struct.mlx4_ib_dev* %12, %struct.mlx4_ib_dev** %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %95 [
    i32 0, label %16
    i32 1, label %30
    i32 3, label %62
  ]

16:                                               ; preds = %2
  %17 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %20 = call %struct.TYPE_9__* @to_mucontext(%struct.ib_ucontext* %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pgprot_noncached(i32 %27)
  %29 = call i32 @rdma_user_mmap_io(%struct.ib_ucontext* %17, %struct.vm_area_struct* %18, i32 %23, i32 %24, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %2
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %98

41:                                               ; preds = %30
  %42 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %45 = call %struct.TYPE_9__* @to_mucontext(%struct.ib_ucontext* %44)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %48, %54
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pgprot_writecombine(i32 %59)
  %61 = call i32 @rdma_user_mmap_io(%struct.ib_ucontext* %42, %struct.vm_area_struct* %43, i32 %55, i32 %56, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %98

62:                                               ; preds = %2
  %63 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = call i32 @mlx4_get_internal_clock_params(%struct.TYPE_10__* %65, %struct.mlx4_clock_params* %7)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %98

71:                                               ; preds = %62
  %72 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %74 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.mlx4_clock_params, %struct.mlx4_clock_params* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pci_resource_start(i32 %80, i32 %82)
  %84 = getelementptr inbounds %struct.mlx4_clock_params, %struct.mlx4_clock_params* %7, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %83, %85
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pgprot_noncached(i32 %92)
  %94 = call i32 @rdma_user_mmap_io(%struct.ib_ucontext* %72, %struct.vm_area_struct* %73, i32 %88, i32 %89, i32 %93)
  store i32 %94, i32* %3, align 4
  br label %98

95:                                               ; preds = %2
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %71, %69, %41, %38, %16
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @rdma_user_mmap_io(%struct.ib_ucontext*, %struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @mlx4_get_internal_clock_params(%struct.TYPE_10__*, %struct.mlx4_clock_params*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
