; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_gem_vram_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_gem_object }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate GEM object\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbox_gem_create(%struct.vbox_private* %0, i64 %1, i32 %2, %struct.drm_gem_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbox_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_gem_object**, align 8
  %10 = alloca %struct.drm_gem_vram_object*, align 8
  %11 = alloca i32, align 4
  store %struct.vbox_private* %0, %struct.vbox_private** %6, align 8
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
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %23 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %22, i32 0, i32 0
  %24 = load %struct.vbox_private*, %struct.vbox_private** %6, align 8
  %25 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.drm_gem_vram_object* @drm_gem_vram_create(%struct.TYPE_6__* %23, i32* %28, i64 %29, i32 0, i32 0)
  store %struct.drm_gem_vram_object* %30, %struct.drm_gem_vram_object** %10, align 8
  %31 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %32 = call i64 @IS_ERR(%struct.drm_gem_vram_object* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %21
  %35 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %36 = call i32 @PTR_ERR(%struct.drm_gem_vram_object* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %21
  %46 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %10, align 8
  %47 = getelementptr inbounds %struct.drm_gem_vram_object, %struct.drm_gem_vram_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %9, align 8
  store %struct.drm_gem_object* %48, %struct.drm_gem_object** %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %43, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_create(%struct.TYPE_6__*, i32*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
