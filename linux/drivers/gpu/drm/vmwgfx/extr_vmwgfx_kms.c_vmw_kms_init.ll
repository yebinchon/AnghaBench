; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@vmw_kms_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_init(%struct.vmw_private* %0) #0 {
  %2 = alloca %struct.vmw_private*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %2, align 8
  %5 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %6 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %5, i32 0, i32 2
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call i32 @drm_mode_config_init(%struct.drm_device* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i32* @vmw_kms_funcs, i32** %12, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %20 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %26 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = call i32 @drm_mode_create_suggested_offset_properties(%struct.drm_device* %31)
  %33 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %34 = call i32 @vmw_kms_create_hotplug_mode_update_property(%struct.vmw_private* %33)
  %35 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %36 = call i32 @vmw_kms_stdu_init_display(%struct.vmw_private* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %1
  %40 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %41 = call i32 @vmw_kms_sou_init_display(%struct.vmw_private* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %46 = call i32 @vmw_kms_ldu_init_display(%struct.vmw_private* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_create_suggested_offset_properties(%struct.drm_device*) #1

declare dso_local i32 @vmw_kms_create_hotplug_mode_update_property(%struct.vmw_private*) #1

declare dso_local i32 @vmw_kms_stdu_init_display(%struct.vmw_private*) #1

declare dso_local i32 @vmw_kms_sou_init_display(%struct.vmw_private*) #1

declare dso_local i32 @vmw_kms_ldu_init_display(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
