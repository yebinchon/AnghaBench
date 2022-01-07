; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.drm_gem_vram_object = type { i32 }

@AST_HWC_SIZE = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@AST_DEFAULT_HWC_NUM = common dso_local global i32 0, align 4
@DRM_GEM_VRAM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ast_cursor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_cursor_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.ast_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.drm_gem_vram_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  store %struct.ast_private* %13, %struct.ast_private** %4, align 8
  %14 = load i32, i32* @AST_HWC_SIZE, align 4
  %15 = load i32, i32* @AST_HWC_SIGNATURE_SIZE, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @AST_DEFAULT_HWC_NUM, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ast_gem_create(%struct.drm_device* %19, i32 %20, i32 1, %struct.drm_gem_object** %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %28 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object* %27)
  store %struct.drm_gem_vram_object* %28, %struct.drm_gem_vram_object** %8, align 8
  %29 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %8, align 8
  %30 = load i32, i32* @DRM_GEM_VRAM_PL_FLAG_VRAM, align 4
  %31 = call i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %58

35:                                               ; preds = %26
  %36 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %8, align 8
  %37 = call i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object* %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %8, align 8
  %42 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %41)
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %35
  %46 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %8, align 8
  %47 = call i8* @drm_gem_vram_kmap(%struct.drm_gem_vram_object* %46, i32 1, i32* null)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %6, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %56 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %57 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %56, i32 0, i32 0
  store %struct.drm_gem_object* %55, %struct.drm_gem_object** %57, align 8
  store i32 0, i32* %2, align 4
  br label %60

58:                                               ; preds = %51, %40, %34
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %54, %24
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ast_gem_create(%struct.drm_device*, i32, i32, %struct.drm_gem_object**) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object*, i32) #1

declare dso_local i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

declare dso_local i8* @drm_gem_vram_kmap(%struct.drm_gem_vram_object*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
