; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_gem_vram_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_gem_object }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate GEM object\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ast_gem_create(%struct.drm_device* %0, i64 %1, i32 %2, %struct.drm_gem_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_gem_object**, align 8
  %10 = alloca %struct.drm_gem_vram_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.drm_gem_object** %3, %struct.drm_gem_object*** %9, align 8
  %12 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %9, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = call i64 @roundup(i64 %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call %struct.drm_gem_vram_object* @drm_gem_vram_create(%struct.drm_device* %22, i32* %26, i64 %27, i32 0, i32 0)
  store %struct.drm_gem_vram_object* %28, %struct.drm_gem_vram_object** %10, align 8
  %29 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %30 = call i64 @IS_ERR(%struct.drm_gem_vram_object* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.drm_gem_vram_object* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ERESTARTSYS, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %21
  %44 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %45 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %9, align 8
  store %struct.drm_gem_object* %46, %struct.drm_gem_object** %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %41, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_create(%struct.drm_device*, i32*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
