; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }

@ADV7511_REG_EDID_I2C_ADDR = common dso_local global i32 0, align 4
@adv7511_get_edid_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7511*, %struct.drm_connector*)* @adv7511_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_get_modes(%struct.adv7511* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %8 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %9 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %14 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %20 = call i32 @__adv7511_power_on(%struct.adv7511* %19)
  %21 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %22 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ADV7511_REG_EDID_I2C_ADDR, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @regmap_write(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %12, %2
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = load i32, i32* @adv7511_get_edid_block, align 4
  %30 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %31 = call %struct.edid* @drm_do_get_edid(%struct.drm_connector* %28, i32 %29, %struct.adv7511* %30)
  store %struct.edid* %31, %struct.edid** %5, align 8
  %32 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %33 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %38 = call i32 @__adv7511_power_off(%struct.adv7511* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %41 = load %struct.edid*, %struct.edid** %5, align 8
  %42 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %40, %struct.edid* %41)
  %43 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %44 = load %struct.edid*, %struct.edid** %5, align 8
  %45 = call i32 @drm_add_edid_modes(%struct.drm_connector* %43, %struct.edid* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %47 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %48 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %49 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.edid*, %struct.edid** %5, align 8
  %52 = call i32 @drm_detect_hdmi_monitor(%struct.edid* %51)
  %53 = call i32 @adv7511_set_config_csc(%struct.adv7511* %46, %struct.drm_connector* %47, i32 %50, i32 %52)
  %54 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %55 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.edid*, %struct.edid** %5, align 8
  %58 = call i32 @cec_s_phys_addr_from_edid(i32 %56, %struct.edid* %57)
  %59 = load %struct.edid*, %struct.edid** %5, align 8
  %60 = call i32 @kfree(%struct.edid* %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @__adv7511_power_on(%struct.adv7511*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local %struct.edid* @drm_do_get_edid(%struct.drm_connector*, i32, %struct.adv7511*) #1

declare dso_local i32 @__adv7511_power_off(%struct.adv7511*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @adv7511_set_config_csc(%struct.adv7511*, %struct.drm_connector*, i32, i32) #1

declare dso_local i32 @drm_detect_hdmi_monitor(%struct.edid*) #1

declare dso_local i32 @cec_s_phys_addr_from_edid(i32, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
