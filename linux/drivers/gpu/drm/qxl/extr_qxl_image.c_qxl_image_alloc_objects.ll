; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_image.c_qxl_image_alloc_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_image.c_qxl_image_alloc_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32 }
%struct.qxl_drm_image = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_image_alloc_objects(%struct.qxl_device* %0, %struct.qxl_release* %1, %struct.qxl_drm_image** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qxl_device*, align 8
  %8 = alloca %struct.qxl_release*, align 8
  %9 = alloca %struct.qxl_drm_image**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qxl_drm_image*, align 8
  %13 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %7, align 8
  store %struct.qxl_release* %1, %struct.qxl_release** %8, align 8
  store %struct.qxl_drm_image** %2, %struct.qxl_drm_image*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.qxl_drm_image* @kmalloc(i32 8, i32 %14)
  store %struct.qxl_drm_image* %15, %struct.qxl_drm_image** %12, align 8
  %16 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %17 = icmp ne %struct.qxl_drm_image* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %59

21:                                               ; preds = %5
  %22 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %23 = getelementptr inbounds %struct.qxl_drm_image, %struct.qxl_drm_image* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %26 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %27 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %28 = getelementptr inbounds %struct.qxl_drm_image, %struct.qxl_drm_image* %27, i32 0, i32 0
  %29 = call i32 @qxl_alloc_bo_reserved(%struct.qxl_device* %25, %struct.qxl_release* %26, i32 4, i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %34 = call i32 @kfree(%struct.qxl_drm_image* %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %59

36:                                               ; preds = %21
  %37 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %38 = load %struct.qxl_release*, %struct.qxl_release** %8, align 8
  %39 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = add i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @qxl_allocate_chunk(%struct.qxl_device* %37, %struct.qxl_release* %38, %struct.qxl_drm_image* %39, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %51 = getelementptr inbounds %struct.qxl_drm_image, %struct.qxl_drm_image* %50, i32 0, i32 0
  %52 = call i32 @qxl_bo_unref(i32* %51)
  %53 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %54 = call i32 @kfree(%struct.qxl_drm_image* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %36
  %57 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %12, align 8
  %58 = load %struct.qxl_drm_image**, %struct.qxl_drm_image*** %9, align 8
  store %struct.qxl_drm_image* %57, %struct.qxl_drm_image** %58, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %49, %32, %18
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.qxl_drm_image* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qxl_alloc_bo_reserved(%struct.qxl_device*, %struct.qxl_release*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.qxl_drm_image*) #1

declare dso_local i32 @qxl_allocate_chunk(%struct.qxl_device*, %struct.qxl_release*, %struct.qxl_drm_image*, i32) #1

declare dso_local i32 @qxl_bo_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
