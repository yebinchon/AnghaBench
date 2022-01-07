; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_gem_prime_get_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_gem_prime_get_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { i32 }
%struct.mtk_drm_gem_obj = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate sgt, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @mtk_gem_prime_get_sg_table(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.mtk_drm_gem_obj*, align 8
  %5 = alloca %struct.mtk_drm_private*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = call %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object* %8)
  store %struct.mtk_drm_gem_obj* %9, %struct.mtk_drm_gem_obj** %4, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %13, align 8
  store %struct.mtk_drm_private* %14, %struct.mtk_drm_private** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sg_table* @kzalloc(i32 4, i32 %15)
  store %struct.sg_table* %16, %struct.sg_table** %6, align 8
  %17 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %18 = icmp ne %struct.sg_table* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sg_table* @ERR_PTR(i32 %21)
  store %struct.sg_table* %22, %struct.sg_table** %2, align 8
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %28 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %4, align 8
  %29 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %35 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dma_get_sgtable_attrs(i32 %26, %struct.sg_table* %27, i32 %30, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %23
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %47 = call i32 @kfree(%struct.sg_table* %46)
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.sg_table* @ERR_PTR(i32 %48)
  store %struct.sg_table* %49, %struct.sg_table** %2, align 8
  br label %52

50:                                               ; preds = %23
  %51 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  store %struct.sg_table* %51, %struct.sg_table** %2, align 8
  br label %52

52:                                               ; preds = %50, %43, %19
  %53 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %53
}

declare dso_local %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object*) #1

declare dso_local %struct.sg_table* @kzalloc(i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @dma_get_sgtable_attrs(i32, %struct.sg_table*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
