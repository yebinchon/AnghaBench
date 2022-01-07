; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.amdgpu_display_manager }
%struct.amdgpu_display_manager = type { i32* }
%struct.amdgpu_dm_connector = type { %struct.drm_connector*, %struct.TYPE_4__, i32*, i32*, %struct.dc_link* }
%struct.TYPE_4__ = type { i32 }
%struct.dc_link = type { i32, i64 }

@SIGNAL_TYPE_EDP = common dso_local global i32 0, align 4
@SIGNAL_TYPE_LVDS = common dso_local global i32 0, align 4
@dc_connection_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @amdgpu_dm_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_dm_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_display_manager*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %7)
  store %struct.amdgpu_dm_connector* %8, %struct.amdgpu_dm_connector** %3, align 8
  %9 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %9, i32 0, i32 4
  %11 = load %struct.dc_link*, %struct.dc_link** %10, align 8
  store %struct.dc_link* %11, %struct.dc_link** %4, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %5, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  store %struct.amdgpu_display_manager* %18, %struct.amdgpu_display_manager** %6, align 8
  %19 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dc_sink_release(i32* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @dc_sink_release(i32* %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @drm_dp_cec_unregister_connector(i32* %45)
  %47 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %48 = call i32 @drm_connector_unregister(%struct.drm_connector* %47)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %50 = call i32 @drm_connector_cleanup(%struct.drm_connector* %49)
  %51 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %51, i32 0, i32 0
  %53 = load %struct.drm_connector*, %struct.drm_connector** %52, align 8
  %54 = icmp ne %struct.drm_connector* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %40
  %56 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %56, i32 0, i32 0
  %58 = load %struct.drm_connector*, %struct.drm_connector** %57, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 0
  %60 = call i32 @i2c_del_adapter(i32* %59)
  %61 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %61, i32 0, i32 0
  %63 = load %struct.drm_connector*, %struct.drm_connector** %62, align 8
  %64 = call i32 @kfree(%struct.drm_connector* %63)
  br label %65

65:                                               ; preds = %55, %40
  %66 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %67 = call i32 @kfree(%struct.drm_connector* %66)
  ret void
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local i32 @dc_sink_release(i32*) #1

declare dso_local i32 @drm_dp_cec_unregister_connector(i32*) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
