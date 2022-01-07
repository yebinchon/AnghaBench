; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_context.c_drm_legacy_resctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_context.c_drm_legacy_resctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_ctx_res = type { i32, i32* }
%struct.drm_ctx = type { i32 }

@DRIVER_KMS_LEGACY_CONTEXT = common dso_local global i32 0, align 4
@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRM_RESERVED_CONTEXTS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_resctx(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_ctx_res*, align 8
  %9 = alloca %struct.drm_ctx, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_ctx_res*
  store %struct.drm_ctx_res* %12, %struct.drm_ctx_res** %8, align 8
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
  br label %60

25:                                               ; preds = %17, %3
  %26 = load %struct.drm_ctx_res*, %struct.drm_ctx_res** %8, align 8
  %27 = getelementptr inbounds %struct.drm_ctx_res, %struct.drm_ctx_res* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DRM_RESERVED_CONTEXTS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = call i32 @memset(%struct.drm_ctx* %9, i32 0, i32 4)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %52, %31
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @DRM_RESERVED_CONTEXTS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.drm_ctx_res*, %struct.drm_ctx_res** %8, align 8
  %41 = getelementptr inbounds %struct.drm_ctx_res, %struct.drm_ctx_res* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i64 @copy_to_user(i32* %45, %struct.drm_ctx* %9, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %60

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* @DRM_RESERVED_CONTEXTS, align 4
  %58 = load %struct.drm_ctx_res*, %struct.drm_ctx_res** %8, align 8
  %59 = getelementptr inbounds %struct.drm_ctx_res, %struct.drm_ctx_res* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %48, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @memset(%struct.drm_ctx*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32*, %struct.drm_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
