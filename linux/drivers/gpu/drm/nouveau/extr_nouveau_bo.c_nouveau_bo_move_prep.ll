; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvif_vmm }
%struct.nvif_vmm = type { i32 }
%struct.ttm_buffer_object = type { %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_mem = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@LAZY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*)* @nouveau_bo_move_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_move_prep(%struct.nouveau_drm* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  %8 = alloca %struct.nouveau_mem*, align 8
  %9 = alloca %struct.nouveau_mem*, align 8
  %10 = alloca %struct.nvif_vmm*, align 8
  %11 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %5, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 0
  %14 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %13)
  store %struct.nouveau_mem* %14, %struct.nouveau_mem** %8, align 8
  %15 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %16 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %15)
  store %struct.nouveau_mem* %16, %struct.nouveau_mem** %9, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.nvif_vmm* %20, %struct.nvif_vmm** %10, align 8
  %21 = load %struct.nvif_vmm*, %struct.nvif_vmm** %10, align 8
  %22 = load i32, i32* @LAZY, align 4
  %23 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %24 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i32 @nvif_vmm_get(%struct.nvif_vmm* %21, i32 %22, i32 0, i32 %26, i32 0, i32 %30, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %95

40:                                               ; preds = %3
  %41 = load %struct.nvif_vmm*, %struct.nvif_vmm** %10, align 8
  %42 = load i32, i32* @LAZY, align 4
  %43 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %44 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %48 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %52 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = call i32 @nvif_vmm_get(%struct.nvif_vmm* %41, i32 %42, i32 0, i32 %46, i32 0, i32 %50, i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %78

59:                                               ; preds = %40
  %60 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %61 = load %struct.nvif_vmm*, %struct.nvif_vmm** %10, align 8
  %62 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %63 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @nouveau_mem_map(%struct.nouveau_mem* %60, %struct.nvif_vmm* %61, i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %78

70:                                               ; preds = %59
  %71 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %72 = load %struct.nvif_vmm*, %struct.nvif_vmm** %10, align 8
  %73 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %74 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = call i32 @nouveau_mem_map(%struct.nouveau_mem* %71, %struct.nvif_vmm* %72, i32* %76)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %70, %69, %58
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load %struct.nvif_vmm*, %struct.nvif_vmm** %10, align 8
  %83 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %84 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = call i32 @nvif_vmm_put(%struct.nvif_vmm* %82, i32* %86)
  %88 = load %struct.nvif_vmm*, %struct.nvif_vmm** %10, align 8
  %89 = load %struct.nouveau_mem*, %struct.nouveau_mem** %8, align 8
  %90 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = call i32 @nvif_vmm_put(%struct.nvif_vmm* %88, i32* %92)
  br label %94

94:                                               ; preds = %81, %78
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %38
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @nvif_vmm_get(%struct.nvif_vmm*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nouveau_mem_map(%struct.nouveau_mem*, %struct.nvif_vmm*, i32*) #1

declare dso_local i32 @nvif_vmm_put(%struct.nvif_vmm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
