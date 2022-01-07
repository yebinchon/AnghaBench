; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vmw_private = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"Failed kms suspend: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_suspend(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %6)
  store %struct.vmw_private* %7, %struct.vmw_private** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call i32* @drm_atomic_helper_suspend(%struct.drm_device* %8)
  %10 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %19 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32* @drm_atomic_helper_suspend(%struct.drm_device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
