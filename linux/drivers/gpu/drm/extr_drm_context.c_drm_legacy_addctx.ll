; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_context.c_drm_legacy_addctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_context.c_drm_legacy_addctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_ctx_list = type { i32, i32, %struct.drm_file* }
%struct.drm_ctx = type { i32 }

@DRIVER_KMS_LEGACY_CONTEXT = common dso_local global i32 0, align 4
@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRM_KERNEL_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Not enough free contexts.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_addctx(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_ctx_list*, align 8
  %9 = alloca %struct.drm_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_ctx*
  store %struct.drm_ctx* %12, %struct.drm_ctx** %9, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_KMS_LEGACY_CONTEXT, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_LEGACY, align 4
  %20 = call i32 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %17, %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = call i32 @drm_legacy_ctxbitmap_next(%struct.drm_device* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @DRM_KERNEL_CONTEXT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = call i32 @drm_legacy_ctxbitmap_next(%struct.drm_device* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.drm_ctx_list* @kmalloc(i32 16, i32 %46)
  store %struct.drm_ctx_list* %47, %struct.drm_ctx_list** %8, align 8
  %48 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %49 = icmp ne %struct.drm_ctx_list* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %77

54:                                               ; preds = %42
  %55 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %56 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %55, i32 0, i32 1
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %59 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %62 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %64 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %65 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %64, i32 0, i32 2
  store %struct.drm_file* %63, %struct.drm_file** %65, align 8
  %66 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %70 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %69, i32 0, i32 1
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 1
  %73 = call i32 @list_add(i32* %70, i32* %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %54, %50, %39, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_legacy_ctxbitmap_next(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.drm_ctx_list* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
