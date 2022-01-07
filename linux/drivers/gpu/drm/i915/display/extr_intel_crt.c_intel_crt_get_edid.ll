; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"CRT GMBUS EDID read failed, retry using GPIO bit-banging\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.edid* (%struct.drm_connector*, %struct.i2c_adapter*)* @intel_crt_get_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.edid* @intel_crt_get_edid(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %4, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %8 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %6, %struct.i2c_adapter* %7)
  store %struct.edid* %8, %struct.edid** %5, align 8
  %9 = load %struct.edid*, %struct.edid** %5, align 8
  %10 = icmp ne %struct.edid* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = call i32 @intel_gmbus_is_forced_bit(%struct.i2c_adapter* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = call i32 @intel_gmbus_force_bit(%struct.i2c_adapter* %17, i32 1)
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %21 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %19, %struct.i2c_adapter* %20)
  store %struct.edid* %21, %struct.edid** %5, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %23 = call i32 @intel_gmbus_force_bit(%struct.i2c_adapter* %22, i32 0)
  br label %24

24:                                               ; preds = %15, %11, %2
  %25 = load %struct.edid*, %struct.edid** %5, align 8
  ret %struct.edid* %25
}

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @intel_gmbus_is_forced_bit(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_gmbus_force_bit(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
