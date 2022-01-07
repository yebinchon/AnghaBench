; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_vram_manager_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_vram_manager_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_place = type { i32 }
%struct.ttm_mem_reg = type { i32* }
%struct.nouveau_bo = type { i32, i32, i32, i32 }
%struct.nouveau_drm = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_mem = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* @nouveau_vram_manager_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_vram_manager_new(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_place* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_bo*, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  %12 = alloca %struct.nouveau_mem*, align 8
  %13 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %15 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %14)
  store %struct.nouveau_bo* %15, %struct.nouveau_bo** %10, align 8
  %16 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %17 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nouveau_drm* @nouveau_bdev(i32 %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %11, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %71

30:                                               ; preds = %4
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %31, i32 0, i32 0
  %33 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %34 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %37 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %40 = call i32 @nouveau_mem_new(i32* %32, i32 %35, i32 %38, %struct.ttm_mem_reg* %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %42 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %41)
  store %struct.nouveau_mem* %42, %struct.nouveau_mem** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %71

47:                                               ; preds = %30
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %49 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %50 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nouveau_bo*, %struct.nouveau_bo** %10, align 8
  %53 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nouveau_mem_vram(%struct.ttm_mem_reg* %48, i32 %51, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %47
  %59 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %60 = call i32 @nouveau_mem_del(%struct.ttm_mem_reg* %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %67 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  store i32 0, i32* %5, align 4
  br label %71

68:                                               ; preds = %58
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %68, %65, %45, %27
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @nouveau_mem_new(i32*, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @nouveau_mem_vram(%struct.ttm_mem_reg*, i32, i32) #1

declare dso_local i32 @nouveau_mem_del(%struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
