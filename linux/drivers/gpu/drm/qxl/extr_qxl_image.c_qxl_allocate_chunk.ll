; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_image.c_qxl_allocate_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_image.c_qxl_allocate_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32 }
%struct.qxl_release = type { i32 }
%struct.qxl_drm_image = type { i32 }
%struct.qxl_drm_chunk = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, %struct.qxl_release*, %struct.qxl_drm_image*, i32)* @qxl_allocate_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_allocate_chunk(%struct.qxl_device* %0, %struct.qxl_release* %1, %struct.qxl_drm_image* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca %struct.qxl_release*, align 8
  %8 = alloca %struct.qxl_drm_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qxl_drm_chunk*, align 8
  %11 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %6, align 8
  store %struct.qxl_release* %1, %struct.qxl_release** %7, align 8
  store %struct.qxl_drm_image* %2, %struct.qxl_drm_image** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.qxl_drm_chunk* @kmalloc(i32 8, i32 %12)
  store %struct.qxl_drm_chunk* %13, %struct.qxl_drm_chunk** %10, align 8
  %14 = load %struct.qxl_drm_chunk*, %struct.qxl_drm_chunk** %10, align 8
  %15 = icmp ne %struct.qxl_drm_chunk* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %21 = load %struct.qxl_release*, %struct.qxl_release** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.qxl_drm_chunk*, %struct.qxl_drm_chunk** %10, align 8
  %24 = getelementptr inbounds %struct.qxl_drm_chunk, %struct.qxl_drm_chunk* %23, i32 0, i32 1
  %25 = call i32 @qxl_alloc_bo_reserved(%struct.qxl_device* %20, %struct.qxl_release* %21, i32 %22, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.qxl_drm_chunk*, %struct.qxl_drm_chunk** %10, align 8
  %30 = call i32 @kfree(%struct.qxl_drm_chunk* %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %38

32:                                               ; preds = %19
  %33 = load %struct.qxl_drm_chunk*, %struct.qxl_drm_chunk** %10, align 8
  %34 = getelementptr inbounds %struct.qxl_drm_chunk, %struct.qxl_drm_chunk* %33, i32 0, i32 0
  %35 = load %struct.qxl_drm_image*, %struct.qxl_drm_image** %8, align 8
  %36 = getelementptr inbounds %struct.qxl_drm_image, %struct.qxl_drm_image* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %28, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.qxl_drm_chunk* @kmalloc(i32, i32) #1

declare dso_local i32 @qxl_alloc_bo_reserved(%struct.qxl_device*, %struct.qxl_release*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.qxl_drm_chunk*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
