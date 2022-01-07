; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_ctx_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.lima_drm_priv* }
%struct.lima_drm_priv = type { i32 }
%struct.drm_lima_ctx_create = type { i32, i64 }
%struct.lima_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @lima_ioctl_ctx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_ioctl_ctx_create(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lima_ctx_create*, align 8
  %9 = alloca %struct.lima_drm_priv*, align 8
  %10 = alloca %struct.lima_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_lima_ctx_create*
  store %struct.drm_lima_ctx_create* %12, %struct.drm_lima_ctx_create** %8, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 0
  %15 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %14, align 8
  store %struct.lima_drm_priv* %15, %struct.lima_drm_priv** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call %struct.lima_device* @to_lima_dev(%struct.drm_device* %16)
  store %struct.lima_device* %17, %struct.lima_device** %10, align 8
  %18 = load %struct.drm_lima_ctx_create*, %struct.drm_lima_ctx_create** %8, align 8
  %19 = getelementptr inbounds %struct.drm_lima_ctx_create, %struct.drm_lima_ctx_create* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.lima_device*, %struct.lima_device** %10, align 8
  %27 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %9, align 8
  %28 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %27, i32 0, i32 0
  %29 = load %struct.drm_lima_ctx_create*, %struct.drm_lima_ctx_create** %8, align 8
  %30 = getelementptr inbounds %struct.drm_lima_ctx_create, %struct.drm_lima_ctx_create* %29, i32 0, i32 0
  %31 = call i32 @lima_ctx_create(%struct.lima_device* %26, i32* %28, i32* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.lima_device* @to_lima_dev(%struct.drm_device*) #1

declare dso_local i32 @lima_ctx_create(%struct.lima_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
