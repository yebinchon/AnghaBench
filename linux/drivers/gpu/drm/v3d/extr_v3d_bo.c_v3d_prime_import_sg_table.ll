; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_bo.c_v3d_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { i32 }
%struct.sg_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @v3d_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %12 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %13 = call %struct.drm_gem_object* @drm_gem_shmem_prime_import_sg_table(%struct.drm_device* %10, %struct.dma_buf_attachment* %11, %struct.sg_table* %12)
  store %struct.drm_gem_object* %13, %struct.drm_gem_object** %8, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %15 = call i64 @IS_ERR(%struct.drm_gem_object* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %18, %struct.drm_gem_object** %4, align 8
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %21 = call i32 @v3d_bo_create_finish(%struct.drm_gem_object* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %26 = call i32 @drm_gem_shmem_free_object(%struct.drm_gem_object* %25)
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.drm_gem_object* @ERR_PTR(i32 %27)
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %4, align 8
  br label %31

29:                                               ; preds = %19
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %4, align 8
  br label %31

31:                                               ; preds = %29, %24, %17
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %32
}

declare dso_local %struct.drm_gem_object* @drm_gem_shmem_prime_import_sg_table(%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @v3d_bo_create_finish(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_shmem_free_object(%struct.drm_gem_object*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
