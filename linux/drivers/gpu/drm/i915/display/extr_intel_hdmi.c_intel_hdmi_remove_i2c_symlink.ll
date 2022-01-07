; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_remove_i2c_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_remove_i2c_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.kobject }
%struct.kobject = type { i32 }
%struct.i2c_adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kobject }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_hdmi_remove_i2c_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_remove_i2c_symlink(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobject*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = call %struct.i2c_adapter* @intel_hdmi_get_i2c_adapter(%struct.drm_connector* %6)
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %3, align 8
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.kobject* %10, %struct.kobject** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.kobject* %14, %struct.kobject** %5, align 8
  %15 = load %struct.kobject*, %struct.kobject** %5, align 8
  %16 = load %struct.kobject*, %struct.kobject** %4, align 8
  %17 = getelementptr inbounds %struct.kobject, %struct.kobject* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sysfs_remove_link(%struct.kobject* %15, i32 %18)
  ret void
}

declare dso_local %struct.i2c_adapter* @intel_hdmi_get_i2c_adapter(%struct.drm_connector*) #1

declare dso_local i32 @sysfs_remove_link(%struct.kobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
