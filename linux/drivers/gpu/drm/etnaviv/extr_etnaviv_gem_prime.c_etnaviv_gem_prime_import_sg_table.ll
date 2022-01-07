; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_table = type { i32 }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, i32, %struct.sg_table*, i32 }

@ETNA_BO_WC = common dso_local global i32 0, align 4
@etnaviv_gem_prime_ops = common dso_local global i32 0, align 4
@etnaviv_prime_lock_class = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @etnaviv_gem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.etnaviv_gem_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @PAGE_ALIGN(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @ETNA_BO_WC, align 4
  %21 = call i32 @etnaviv_gem_new_private(%struct.drm_device* %18, i64 %19, i32 %20, i32* @etnaviv_gem_prime_ops, %struct.etnaviv_gem_object** %8)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.drm_gem_object* @ERR_PTR(i32 %25)
  store %struct.drm_gem_object* %26, %struct.drm_gem_object** %4, align 8
  br label %73

27:                                               ; preds = %3
  %28 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %28, i32 0, i32 3
  %30 = call i32 @lockdep_set_class(i32* %29, i32* @etnaviv_prime_lock_class)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %36 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %37 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %36, i32 0, i32 2
  store %struct.sg_table* %35, %struct.sg_table** %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kvmalloc_array(i32 %38, i32 8, i32 %39)
  %41 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %42 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %44 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %27
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %67

50:                                               ; preds = %27
  %51 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %52 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %53 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %51, i32 %54, i32* null, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %63 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %62, i32 0, i32 0
  %64 = call i32 @etnaviv_gem_obj_add(%struct.drm_device* %61, %struct.drm_gem_object* %63)
  %65 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %66 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %65, i32 0, i32 0
  store %struct.drm_gem_object* %66, %struct.drm_gem_object** %4, align 8
  br label %73

67:                                               ; preds = %59, %47
  %68 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %8, align 8
  %69 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %68, i32 0, i32 0
  %70 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %69)
  %71 = load i32, i32* %10, align 4
  %72 = call %struct.drm_gem_object* @ERR_PTR(i32 %71)
  store %struct.drm_gem_object* %72, %struct.drm_gem_object** %4, align 8
  br label %73

73:                                               ; preds = %67, %60, %24
  %74 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %74
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @etnaviv_gem_new_private(%struct.drm_device*, i64, i32, i32*, %struct.etnaviv_gem_object**) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32, i32*, i32) #1

declare dso_local i32 @etnaviv_gem_obj_add(%struct.drm_device*, %struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
