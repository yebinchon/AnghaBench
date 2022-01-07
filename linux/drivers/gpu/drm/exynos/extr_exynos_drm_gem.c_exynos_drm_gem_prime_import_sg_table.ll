; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_prime_import_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_gem_prime_import_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf_attachment = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.exynos_drm_gem = type { i32, %struct.drm_gem_object, i32, i32, %struct.sg_table*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXYNOS_BO_CONTIG = common dso_local global i32 0, align 4
@EXYNOS_BO_NONCONTIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @exynos_drm_gem_prime_import_sg_table(%struct.drm_device* %0, %struct.dma_buf_attachment* %1, %struct.sg_table* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.exynos_drm_gem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.exynos_drm_gem* @exynos_drm_gem_init(%struct.drm_device* %11, i32 %16)
  store %struct.exynos_drm_gem* %17, %struct.exynos_drm_gem** %8, align 8
  %18 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %19 = call i64 @IS_ERR(%struct.exynos_drm_gem* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %23 = call i32 @PTR_ERR(%struct.exynos_drm_gem* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.drm_gem_object* @ERR_PTR(i32 %24)
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %4, align 8
  br label %96

26:                                               ; preds = %3
  %27 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %28 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sg_dma_address(i32 %29)
  %31 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %32 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kvmalloc_array(i32 %38, i32 8, i32 %39)
  %41 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %42 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %44 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %26
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %88

50:                                               ; preds = %26
  %51 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %52 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %53 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %51, i32 %54, i32* null, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %83

60:                                               ; preds = %50
  %61 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %62 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %63 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %62, i32 0, i32 4
  store %struct.sg_table* %61, %struct.sg_table** %63, align 8
  %64 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %65 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* @EXYNOS_BO_CONTIG, align 4
  %70 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %71 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %80

74:                                               ; preds = %60
  %75 = load i32, i32* @EXYNOS_BO_NONCONTIG, align 4
  %76 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %77 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %82 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %81, i32 0, i32 1
  store %struct.drm_gem_object* %82, %struct.drm_gem_object** %4, align 8
  br label %96

83:                                               ; preds = %59
  %84 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %85 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @kvfree(i32 %86)
  br label %88

88:                                               ; preds = %83, %47
  %89 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %90 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %89, i32 0, i32 1
  %91 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %90)
  %92 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %8, align 8
  %93 = call i32 @kfree(%struct.exynos_drm_gem* %92)
  %94 = load i32, i32* %10, align 4
  %95 = call %struct.drm_gem_object* @ERR_PTR(i32 %94)
  store %struct.drm_gem_object* %95, %struct.drm_gem_object** %4, align 8
  br label %96

96:                                               ; preds = %88, %80, %21
  %97 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %97
}

declare dso_local %struct.exynos_drm_gem* @exynos_drm_gem_init(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.exynos_drm_gem*) #1

declare dso_local i32 @PTR_ERR(%struct.exynos_drm_gem*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32, i32*, i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.exynos_drm_gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
