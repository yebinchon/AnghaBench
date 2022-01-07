; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_gem.c_xen_drm_front_gem_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.xen_drm_front_drm_info* }
%struct.xen_drm_front_drm_info = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sg_table = type { i32 }
%struct.xen_gem_object = type { %struct.drm_gem_object, i32, i32, %struct.sg_table* }

@.str = private unnamed_addr constant [43 x i8] c"Imported buffer of size %zu with nents %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @xen_drm_front_gem_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.xen_drm_front_drm_info*, align 8
  %9 = alloca %struct.xen_gem_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %13, align 8
  store %struct.xen_drm_front_drm_info* %14, %struct.xen_drm_front_drm_info** %8, align 8
  %15 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %16 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call %struct.xen_gem_object* @gem_create_obj(%struct.drm_device* %20, i64 %21)
  store %struct.xen_gem_object* %22, %struct.xen_gem_object** %9, align 8
  %23 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %24 = call i64 @IS_ERR_OR_NULL(%struct.xen_gem_object* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %28 = call %struct.drm_gem_object* @ERR_CAST(%struct.xen_gem_object* %27)
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %4, align 8
  br label %80

29:                                               ; preds = %3
  %30 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @gem_alloc_pages_array(%struct.xen_gem_object* %30, i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.drm_gem_object* @ERR_PTR(i32 %36)
  store %struct.drm_gem_object* %37, %struct.drm_gem_object** %4, align 8
  br label %80

38:                                               ; preds = %29
  %39 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %40 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %41 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %40, i32 0, i32 3
  store %struct.sg_table* %39, %struct.sg_table** %41, align 8
  %42 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %43 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %44 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %47 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %42, i32 %45, i32* null, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.drm_gem_object* @ERR_PTR(i32 %53)
  store %struct.drm_gem_object* %54, %struct.drm_gem_object** %4, align 8
  br label %80

55:                                               ; preds = %38
  %56 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %8, align 8
  %57 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %60 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %59, i32 0, i32 0
  %61 = call i32 @xen_drm_front_dbuf_to_cookie(%struct.drm_gem_object* %60)
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %64 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @xen_drm_front_dbuf_create(i32 %58, i32 %61, i32 0, i32 0, i32 0, i64 %62, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.drm_gem_object* @ERR_PTR(i32 %70)
  store %struct.drm_gem_object* %71, %struct.drm_gem_object** %4, align 8
  br label %80

72:                                               ; preds = %55
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %75 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %73, i32 %76)
  %78 = load %struct.xen_gem_object*, %struct.xen_gem_object** %9, align 8
  %79 = getelementptr inbounds %struct.xen_gem_object, %struct.xen_gem_object* %78, i32 0, i32 0
  store %struct.drm_gem_object* %79, %struct.drm_gem_object** %4, align 8
  br label %80

80:                                               ; preds = %72, %69, %52, %35, %26
  %81 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %81
}

declare dso_local %struct.xen_gem_object* @gem_create_obj(%struct.drm_device*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.xen_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.xen_gem_object*) #1

declare dso_local i32 @gem_alloc_pages_array(%struct.xen_gem_object*, i64) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32, i32*, i32) #1

declare dso_local i32 @xen_drm_front_dbuf_create(i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @xen_drm_front_dbuf_to_cookie(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
