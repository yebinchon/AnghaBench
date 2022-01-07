; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_prime_import_sg_table_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_prime_import_sg_table_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { i32 }
%struct.sg_table = type { i32 }
%struct.drm_gem_cma_object = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to vmap PRIME buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_gem_cma_prime_import_sg_table_vmap(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.drm_gem_cma_object*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @dma_buf_vmap(i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.drm_gem_object* @ERR_PTR(i32 %20)
  store %struct.drm_gem_object* %21, %struct.drm_gem_object** %4, align 8
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %25 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %26 = call %struct.drm_gem_object* @drm_gem_cma_prime_import_sg_table(%struct.drm_device* %23, %struct.dma_buf_attachment* %24, %struct.sg_table* %25)
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %9, align 8
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %28 = call i64 @IS_ERR(%struct.drm_gem_object* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %32 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @dma_buf_vunmap(i32 %33, i8* %34)
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  store %struct.drm_gem_object* %36, %struct.drm_gem_object** %4, align 8
  br label %44

37:                                               ; preds = %22
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %39 = call %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object* %38)
  store %struct.drm_gem_cma_object* %39, %struct.drm_gem_cma_object** %8, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %42 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  store %struct.drm_gem_object* %43, %struct.drm_gem_object** %4, align 8
  br label %44

44:                                               ; preds = %37, %30, %17
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %45
}

declare dso_local i8* @dma_buf_vmap(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_cma_prime_import_sg_table(%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_buf_vunmap(i32, i8*) #1

declare dso_local %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
