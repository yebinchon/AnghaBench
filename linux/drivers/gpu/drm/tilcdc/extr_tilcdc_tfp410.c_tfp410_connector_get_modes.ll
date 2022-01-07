; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_tfp410.c_tfp410_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tfp410_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @tfp410_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.tfp410_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = call %struct.tfp410_connector* @to_tfp410_connector(%struct.drm_connector* %6)
  store %struct.tfp410_connector* %7, %struct.tfp410_connector** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = load %struct.tfp410_connector*, %struct.tfp410_connector** %3, align 8
  %10 = getelementptr inbounds %struct.tfp410_connector, %struct.tfp410_connector* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %8, i32 %13)
  store %struct.edid* %14, %struct.edid** %4, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = load %struct.edid*, %struct.edid** %4, align 8
  %17 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %15, %struct.edid* %16)
  %18 = load %struct.edid*, %struct.edid** %4, align 8
  %19 = icmp ne %struct.edid* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %22 = load %struct.edid*, %struct.edid** %4, align 8
  %23 = call i32 @drm_add_edid_modes(%struct.drm_connector* %21, %struct.edid* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.edid*, %struct.edid** %4, align 8
  %25 = call i32 @kfree(%struct.edid* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.tfp410_connector* @to_tfp410_connector(%struct.drm_connector*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
