; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gem.c_psb_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gem.c_psb_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.gtt_range = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gem\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"no memory for %lld byte GEM object\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GEM init failed for %lld\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"GEM handle failed for %p, %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_gem_create(%struct.drm_file* %0, %struct.drm_device* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gtt_range*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %8, align 8
  store %struct.drm_device* %1, %struct.drm_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @roundup(i32 %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call %struct.gtt_range* @psb_gtt_alloc_range(%struct.drm_device* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 %22)
  store %struct.gtt_range* %23, %struct.gtt_range** %14, align 8
  %24 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %25 = icmp eq %struct.gtt_range* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %6
  %27 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_8__*
  %33 = call i32 (i32, i8*, %struct.TYPE_8__*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %32)
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %94

36:                                               ; preds = %6
  %37 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %38 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %39 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @drm_gem_object_init(%struct.drm_device* %37, %struct.TYPE_8__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %45 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %46 = call i32 @psb_gtt_free_range(%struct.drm_device* %44, %struct.gtt_range* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_8__*
  %53 = call i32 (i32, i8*, %struct.TYPE_8__*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %94

56:                                               ; preds = %36
  %57 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %58 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = load i32, i32* @__GFP_DMA32, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @mapping_set_gfp_mask(i32 %62, i32 %65)
  %67 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %68 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %69 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %68, i32 0, i32 0
  %70 = call i32 @drm_gem_handle_create(%struct.drm_file* %67, %struct.TYPE_8__* %69, i32* %16)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %56
  %74 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %78 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %77, i32 0, i32 0
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i32, i8*, %struct.TYPE_8__*, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__* %78, i32 %79)
  %81 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %82 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %81, i32 0, i32 0
  %83 = call i32 @drm_gem_object_release(%struct.TYPE_8__* %82)
  %84 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %85 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %86 = call i32 @psb_gtt_free_range(%struct.drm_device* %84, %struct.gtt_range* %85)
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %7, align 4
  br label %94

88:                                               ; preds = %56
  %89 = load %struct.gtt_range*, %struct.gtt_range** %14, align 8
  %90 = getelementptr inbounds %struct.gtt_range, %struct.gtt_range* %89, i32 0, i32 0
  %91 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_8__* %90)
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %88, %73, %43, %26
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.gtt_range* @psb_gtt_alloc_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.TYPE_8__*, ...) #1

declare dso_local i64 @drm_gem_object_init(%struct.drm_device*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @psb_gtt_free_range(%struct.drm_device*, %struct.gtt_range*) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
