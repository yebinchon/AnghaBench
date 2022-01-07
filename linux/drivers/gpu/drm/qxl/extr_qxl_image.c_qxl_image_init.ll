; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_image.c_qxl_image_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_image.c_qxl_image_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32 }
%struct.qxl_drm_image = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_image_init(%struct.qxl_device* %0, %struct.qxl_release* %1, %struct.qxl_drm_image* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.qxl_device*, align 8
  %12 = alloca %struct.qxl_release*, align 8
  %13 = alloca %struct.qxl_drm_image*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %11, align 8
  store %struct.qxl_release* %1, %struct.qxl_release** %12, align 8
  store %struct.qxl_drm_image* %2, %struct.qxl_drm_image** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %20, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %19, align 4
  %26 = sdiv i32 %25, 8
  %27 = mul nsw i32 %24, %26
  %28 = add nsw i32 %23, %27
  %29 = load i32*, i32** %14, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %14, align 8
  %32 = load %struct.qxl_device*, %struct.qxl_device** %11, align 8
  %33 = load %struct.qxl_release*, %struct.qxl_release** %12, align 8
  %34 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %20, align 4
  %40 = call i32 @qxl_image_init_helper(%struct.qxl_device* %32, %struct.qxl_release* %33, %struct.qxl_drm_image* %34, i32* %35, i32 %36, i32 %37, i32 %38, i32 0, i32 %39)
  ret i32 %40
}

declare dso_local i32 @qxl_image_init_helper(%struct.qxl_device*, %struct.qxl_release*, %struct.qxl_drm_image*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
