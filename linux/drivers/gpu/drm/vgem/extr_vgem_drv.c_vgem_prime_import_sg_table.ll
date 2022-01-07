; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_table = type { i32 }
%struct.drm_vgem_gem_object = type { %struct.drm_gem_object, i32, %struct.sg_table*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*)* @vgem_prime_import_sg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_gem_object* @vgem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.drm_vgem_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_vgem_gem_object* @__vgem_gem_create(%struct.drm_device* %10, i32 %15)
  store %struct.drm_vgem_gem_object* %16, %struct.drm_vgem_gem_object** %8, align 8
  %17 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %18 = call i64 @IS_ERR(%struct.drm_vgem_gem_object* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %22 = call %struct.drm_gem_object* @ERR_CAST(%struct.drm_vgem_gem_object* %21)
  store %struct.drm_gem_object* %22, %struct.drm_gem_object** %4, align 8
  br label %65

23:                                               ; preds = %3
  %24 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %25 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PAGE_ALIGN(i32 %28)
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %33 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %34 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %33, i32 0, i32 2
  store %struct.sg_table* %32, %struct.sg_table** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kvmalloc_array(i32 %35, i32 8, i32 %36)
  %38 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %39 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %41 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %23
  %45 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %46 = call i32 @__vgem_gem_destroy(%struct.drm_vgem_gem_object* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.drm_gem_object* @ERR_PTR(i32 %48)
  store %struct.drm_gem_object* %49, %struct.drm_gem_object** %4, align 8
  br label %65

50:                                               ; preds = %23
  %51 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %52 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %56 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %55, i32 0, i32 2
  %57 = load %struct.sg_table*, %struct.sg_table** %56, align 8
  %58 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %59 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %57, i32 %60, i32* null, i32 %61)
  %63 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %8, align 8
  %64 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %63, i32 0, i32 0
  store %struct.drm_gem_object* %64, %struct.drm_gem_object** %4, align 8
  br label %65

65:                                               ; preds = %50, %44, %20
  %66 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %66
}

declare dso_local %struct.drm_vgem_gem_object* @__vgem_gem_create(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_vgem_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.drm_vgem_gem_object*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__vgem_gem_destroy(%struct.drm_vgem_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
