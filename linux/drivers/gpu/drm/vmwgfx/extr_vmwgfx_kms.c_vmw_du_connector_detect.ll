; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_display_unit = type { i64, i64 }

@SVGA_REG_NUM_DISPLAYS = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_du_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.vmw_display_unit*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %12)
  store %struct.vmw_private* %13, %struct.vmw_private** %7, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = call %struct.vmw_display_unit* @vmw_connector_to_du(%struct.drm_connector* %14)
  store %struct.vmw_display_unit* %15, %struct.vmw_display_unit** %8, align 8
  %16 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %17 = load i32, i32* @SVGA_REG_NUM_DISPLAYS, align 4
  %18 = call i64 @vmw_read(%struct.vmw_private* %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = call %struct.vmw_display_unit* @vmw_connector_to_du(%struct.drm_connector* %19)
  %21 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %8, align 8
  %27 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @connector_status_connected, align 4
  br label %34

32:                                               ; preds = %25, %2
  %33 = load i32, i32* @connector_status_disconnected, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  ret i32 %35
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local %struct.vmw_display_unit* @vmw_connector_to_du(%struct.drm_connector*) #1

declare dso_local i64 @vmw_read(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
