; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_drm_driver_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_drm_driver_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.lima_drm_priv* }
%struct.lima_drm_priv = type { i32, i32 }
%struct.lima_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @lima_drm_driver_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_drm_driver_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lima_drm_priv*, align 8
  %8 = alloca %struct.lima_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.lima_device* @to_lima_dev(%struct.drm_device* %9)
  store %struct.lima_device* %10, %struct.lima_device** %8, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lima_drm_priv* @kzalloc(i32 8, i32 %11)
  store %struct.lima_drm_priv* %12, %struct.lima_drm_priv** %7, align 8
  %13 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %7, align 8
  %14 = icmp ne %struct.lima_drm_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.lima_device*, %struct.lima_device** %8, align 8
  %20 = call i32 @lima_vm_create(%struct.lima_device* %19)
  %21 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %7, align 8
  %22 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %7, align 8
  %24 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %37

30:                                               ; preds = %18
  %31 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %7, align 8
  %32 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %31, i32 0, i32 0
  %33 = call i32 @lima_ctx_mgr_init(i32* %32)
  %34 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %7, align 8
  %35 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %36 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %35, i32 0, i32 0
  store %struct.lima_drm_priv* %34, %struct.lima_drm_priv** %36, align 8
  store i32 0, i32* %3, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %7, align 8
  %39 = call i32 @kfree(%struct.lima_drm_priv* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %30, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.lima_device* @to_lima_dev(%struct.drm_device*) #1

declare dso_local %struct.lima_drm_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @lima_vm_create(%struct.lima_device*) #1

declare dso_local i32 @lima_ctx_mgr_init(i32*) #1

declare dso_local i32 @kfree(%struct.lima_drm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
