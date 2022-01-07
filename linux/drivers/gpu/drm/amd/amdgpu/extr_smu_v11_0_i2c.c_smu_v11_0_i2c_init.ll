; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_smu_v11_0_i2c.c_smu_v11_0_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"I2C busy !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @smu_v11_0_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_v11_0_i2c_init(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %4 = call i32 @smu_v11_0_i2c_set_clock_gating(%struct.i2c_adapter* %3, i32 0)
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = call i32 @smu_v11_0_i2c_activity_done(%struct.i2c_adapter* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @DRM_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %12 = call i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter* %11, i32 0)
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %14 = call i32 @smu_v11_0_i2c_configure(%struct.i2c_adapter* %13)
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %16 = call i32 @smu_v11_0_i2c_set_clock(%struct.i2c_adapter* %15)
  ret void
}

declare dso_local i32 @smu_v11_0_i2c_set_clock_gating(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @smu_v11_0_i2c_activity_done(%struct.i2c_adapter*) #1

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @smu_v11_0_i2c_enable(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @smu_v11_0_i2c_configure(%struct.i2c_adapter*) #1

declare dso_local i32 @smu_v11_0_i2c_set_clock(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
