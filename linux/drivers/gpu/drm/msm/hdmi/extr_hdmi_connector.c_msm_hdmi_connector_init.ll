; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_msm_hdmi_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i64, i64 }
%struct.hdmi = type { i32, i32 }
%struct.hdmi_connector = type { %struct.drm_connector, i32, %struct.hdmi* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msm_hdmi_hotplug_work = common dso_local global i32 0, align 4
@hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@msm_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_connector* @msm_hdmi_connector_init(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.hdmi_connector*, align 8
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  store %struct.drm_connector* null, %struct.drm_connector** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hdmi_connector* @kzalloc(i32 40, i32 %6)
  store %struct.hdmi_connector* %7, %struct.hdmi_connector** %5, align 8
  %8 = load %struct.hdmi_connector*, %struct.hdmi_connector** %5, align 8
  %9 = icmp ne %struct.hdmi_connector* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.drm_connector* @ERR_PTR(i32 %12)
  store %struct.drm_connector* %13, %struct.drm_connector** %2, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %16 = load %struct.hdmi_connector*, %struct.hdmi_connector** %5, align 8
  %17 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %16, i32 0, i32 2
  store %struct.hdmi* %15, %struct.hdmi** %17, align 8
  %18 = load %struct.hdmi_connector*, %struct.hdmi_connector** %5, align 8
  %19 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %18, i32 0, i32 1
  %20 = load i32, i32* @msm_hdmi_hotplug_work, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.hdmi_connector*, %struct.hdmi_connector** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_connector, %struct.hdmi_connector* %22, i32 0, i32 0
  store %struct.drm_connector* %23, %struct.drm_connector** %4, align 8
  %24 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %29 = call i32 @drm_connector_init(i32 %26, %struct.drm_connector* %27, i32* @hdmi_connector_funcs, i32 %28)
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = call i32 @drm_connector_helper_add(%struct.drm_connector* %30, i32* @msm_hdmi_connector_helper_funcs)
  %32 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %33 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %43 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %41, i32 %44)
  %46 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  store %struct.drm_connector* %46, %struct.drm_connector** %2, align 8
  br label %47

47:                                               ; preds = %14, %10
  %48 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  ret %struct.drm_connector* %48
}

declare dso_local %struct.hdmi_connector* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_connector* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
