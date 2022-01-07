; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.edid*, %struct.i2c_client* }
%struct.edid = type { i32 }
%struct.i2c_client = type { i32 }
%struct.drm_connector = type { i32 }

@ge_b850v3_lvds_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @ge_b850v3_lvds_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ge_b850v3_lvds_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.edid*, %struct.edid** %9, align 8
  %11 = call i32 @kfree(%struct.edid* %10)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call i64 @stdp2690_get_edid(%struct.i2c_client* %12)
  %14 = inttoptr i64 %13 to %struct.edid*
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.edid* %14, %struct.edid** %16, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.edid*, %struct.edid** %18, align 8
  %20 = icmp ne %struct.edid* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.edid*, %struct.edid** %24, align 8
  %26 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %22, %struct.edid* %25)
  %27 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.edid*, %struct.edid** %29, align 8
  %31 = call i32 @drm_add_edid_modes(%struct.drm_connector* %27, %struct.edid* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %1
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i64 @stdp2690_get_edid(%struct.i2c_client*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
