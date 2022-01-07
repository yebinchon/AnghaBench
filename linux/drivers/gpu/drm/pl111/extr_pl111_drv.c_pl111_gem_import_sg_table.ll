; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_drv.c_pl111_gem_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_drv.c_pl111_gem_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { i64 }
%struct.dma_buf_attachment = type { i32 }
%struct.sg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_gem_object* (%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*)* @pl111_gem_import_sg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_gem_object* @pl111_gem_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.pl111_drm_dev_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %10, align 8
  store %struct.pl111_drm_dev_private* %11, %struct.pl111_drm_dev_private** %8, align 8
  %12 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %8, align 8
  %13 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.drm_gem_object* @ERR_PTR(i32 %18)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %4, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %23 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %24 = call %struct.drm_gem_object* @drm_gem_cma_prime_import_sg_table(%struct.drm_device* %21, %struct.dma_buf_attachment* %22, %struct.sg_table* %23)
  store %struct.drm_gem_object* %24, %struct.drm_gem_object** %4, align 8
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %26
}

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_cma_prime_import_sg_table(%struct.drm_device*, %struct.dma_buf_attachment*, %struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
