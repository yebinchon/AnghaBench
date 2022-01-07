; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_driver_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_driver_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vmw_fpriv* }
%struct.vmw_fpriv = type { i32* }
%struct.vmw_private = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @vmw_driver_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_driver_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_fpriv*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %9)
  store %struct.vmw_private* %10, %struct.vmw_private** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vmw_fpriv* @kzalloc(i32 8, i32 %13)
  store %struct.vmw_fpriv* %14, %struct.vmw_fpriv** %7, align 8
  %15 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %7, align 8
  %16 = icmp ne %struct.vmw_fpriv* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @ttm_object_file_init(i32 %26, i32 10)
  %28 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %7, align 8
  %29 = getelementptr inbounds %struct.vmw_fpriv, %struct.vmw_fpriv* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %7, align 8
  %31 = getelementptr inbounds %struct.vmw_fpriv, %struct.vmw_fpriv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %42

38:                                               ; preds = %23
  %39 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %7, align 8
  %40 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %41 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %40, i32 0, i32 0
  store %struct.vmw_fpriv* %39, %struct.vmw_fpriv** %41, align 8
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %37
  %43 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %7, align 8
  %44 = call i32 @kfree(%struct.vmw_fpriv* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %38, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local %struct.vmw_fpriv* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @ttm_object_file_init(i32, i32) #1

declare dso_local i32 @kfree(%struct.vmw_fpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
