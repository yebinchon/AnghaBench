; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_driver_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_kms.c_virtio_gpu_driver_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_file = type { %struct.virtio_gpu_fpriv* }
%struct.virtio_gpu_fpriv = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_gpu_driver_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.virtio_gpu_device*, align 8
  %7 = alloca %struct.virtio_gpu_fpriv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %13, align 8
  store %struct.virtio_gpu_device* %14, %struct.virtio_gpu_device** %6, align 8
  %15 = load i32, i32* @TASK_COMM_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.virtio_gpu_fpriv* @kzalloc(i32 4, i32 %25)
  store %struct.virtio_gpu_fpriv* %26, %struct.virtio_gpu_fpriv** %7, align 8
  %27 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %7, align 8
  %28 = icmp ne %struct.virtio_gpu_fpriv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %51

32:                                               ; preds = %24
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @get_task_comm(i8* %18, i32 %33)
  %35 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %36 = call i32 @strlen(i8* %18)
  %37 = call i32 @virtio_gpu_context_create(%struct.virtio_gpu_device* %35, i32 %36, i8* %18)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %7, align 8
  %42 = call i32 @kfree(%struct.virtio_gpu_fpriv* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %7, align 8
  %47 = getelementptr inbounds %struct.virtio_gpu_fpriv, %struct.virtio_gpu_fpriv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.virtio_gpu_fpriv*, %struct.virtio_gpu_fpriv** %7, align 8
  %49 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %50 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %49, i32 0, i32 0
  store %struct.virtio_gpu_fpriv* %48, %struct.virtio_gpu_fpriv** %50, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %44, %40, %29, %23
  %52 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.virtio_gpu_fpriv* @kzalloc(i32, i32) #2

declare dso_local i32 @get_task_comm(i8*, i32) #2

declare dso_local i32 @virtio_gpu_context_create(%struct.virtio_gpu_device*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @kfree(%struct.virtio_gpu_fpriv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
