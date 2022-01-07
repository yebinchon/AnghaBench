; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { %struct.drm_device }
%struct.drm_device = type { i32, %struct.komeda_dev* }
%struct.komeda_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.komeda_dev*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @komeda_kms_detach(%struct.komeda_kms_dev* %0) #0 {
  %2 = alloca %struct.komeda_kms_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.komeda_dev*, align 8
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %2, align 8
  %5 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %2, align 8
  %6 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %5, i32 0, i32 0
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %8, align 8
  store %struct.komeda_dev* %9, %struct.komeda_dev** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i32 @drm_dev_unregister(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %19 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.komeda_dev*)*, i32 (%struct.komeda_dev*)** %21, align 8
  %23 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %24 = call i32 %22(%struct.komeda_dev* %23)
  %25 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %26 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @component_unbind_all(i32 %27, %struct.drm_device* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %30)
  %32 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %2, align 8
  %33 = call i32 @komeda_kms_cleanup_private_objs(%struct.komeda_kms_dev* %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 1
  store %struct.komeda_dev* null, %struct.komeda_dev** %35, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i32 @drm_dev_put(%struct.drm_device* %36)
  ret void
}

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(i32, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @komeda_kms_cleanup_private_objs(%struct.komeda_kms_dev*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
