; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tda998x_priv = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@TDA19988 = common dso_local global i64 0, align 8
@REG_TX4 = common dso_local global i32 0, align 4
@TX4_PD_RAM = common dso_local global i32 0, align 4
@read_edid_block = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to read EDID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @tda998x_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.tda998x_priv* @conn_to_tda998x_priv(%struct.drm_connector* %7)
  store %struct.tda998x_priv* %8, %struct.tda998x_priv** %4, align 8
  %9 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %10 = call i64 @tda998x_edid_delay_wait(%struct.tda998x_priv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %15 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TDA19988, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %21 = load i32, i32* @REG_TX4, align 4
  %22 = load i32, i32* @TX4_PD_RAM, align 4
  %23 = call i32 @reg_clear(%struct.tda998x_priv* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %26 = load i32, i32* @read_edid_block, align 4
  %27 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %28 = call %struct.edid* @drm_do_get_edid(%struct.drm_connector* %25, i32 %26, %struct.tda998x_priv* %27)
  store %struct.edid* %28, %struct.edid** %5, align 8
  %29 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %30 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TDA19988, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %36 = load i32, i32* @REG_TX4, align 4
  %37 = load i32, i32* @TX4_PD_RAM, align 4
  %38 = call i32 @reg_set(%struct.tda998x_priv* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.edid*, %struct.edid** %5, align 8
  %41 = icmp ne %struct.edid* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %44 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

48:                                               ; preds = %39
  %49 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %50 = load %struct.edid*, %struct.edid** %5, align 8
  %51 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %49, %struct.edid* %50)
  %52 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %53 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.edid*, %struct.edid** %5, align 8
  %56 = call i32 @cec_notifier_set_phys_addr_from_edid(i32 %54, %struct.edid* %55)
  %57 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %58 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %57, i32 0, i32 1
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %61 = load %struct.edid*, %struct.edid** %5, align 8
  %62 = call i32 @drm_add_edid_modes(%struct.drm_connector* %60, %struct.edid* %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.edid*, %struct.edid** %5, align 8
  %64 = call i32 @drm_detect_monitor_audio(%struct.edid* %63)
  %65 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %66 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %68 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.edid*, %struct.edid** %5, align 8
  %71 = call i32 @kfree(%struct.edid* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %48, %42, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.tda998x_priv* @conn_to_tda998x_priv(%struct.drm_connector*) #1

declare dso_local i64 @tda998x_edid_delay_wait(%struct.tda998x_priv*) #1

declare dso_local i32 @reg_clear(%struct.tda998x_priv*, i32, i32) #1

declare dso_local %struct.edid* @drm_do_get_edid(%struct.drm_connector*, i32, %struct.tda998x_priv*) #1

declare dso_local i32 @reg_set(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @cec_notifier_set_phys_addr_from_edid(i32, %struct.edid*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
