; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_prime_get_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_prime_get_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_gem_cma_object = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @drm_gem_cma_prime_get_sg_table(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_gem_cma_object*, align 8
  %5 = alloca %struct.sg_table*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object* %7)
  store %struct.drm_gem_cma_object* %8, %struct.drm_gem_cma_object** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sg_table* @kzalloc(i32 4, i32 %9)
  store %struct.sg_table* %10, %struct.sg_table** %5, align 8
  %11 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %12 = icmp ne %struct.sg_table* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.sg_table* @ERR_PTR(i32 %15)
  store %struct.sg_table* %16, %struct.sg_table** %2, align 8
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %24 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %4, align 8
  %25 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %4, align 8
  %28 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %31 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_get_sgtable(i32 %22, %struct.sg_table* %23, i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %39

37:                                               ; preds = %17
  %38 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  store %struct.sg_table* %38, %struct.sg_table** %2, align 8
  br label %44

39:                                               ; preds = %36
  %40 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %41 = call i32 @kfree(%struct.sg_table* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.sg_table* @ERR_PTR(i32 %42)
  store %struct.sg_table* %43, %struct.sg_table** %2, align 8
  br label %44

44:                                               ; preds = %39, %37, %13
  %45 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %45
}

declare dso_local %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object*) #1

declare dso_local %struct.sg_table* @kzalloc(i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @dma_get_sgtable(i32, %struct.sg_table*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
