; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { i32 }
%struct.sg_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @vc4_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %11 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %12 = call %struct.drm_gem_object* @drm_gem_cma_prime_import_sg_table(%struct.drm_device* %9, %struct.dma_buf_attachment* %10, %struct.sg_table* %11)
  store %struct.drm_gem_object* %12, %struct.drm_gem_object** %8, align 8
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %14 = call i64 @IS_ERR(%struct.drm_gem_object* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %4, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %4, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %21
}

declare dso_local %struct.drm_gem_object* @drm_gem_cma_prime_import_sg_table(%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
