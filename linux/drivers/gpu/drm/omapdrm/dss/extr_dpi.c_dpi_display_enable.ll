; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dpi_data = type { i32, i64, %struct.TYPE_2__*, i64, %struct.omap_dss_device, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @dpi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.dpi_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %7 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %6)
  store %struct.dpi_data* %7, %struct.dpi_data** %3, align 8
  %8 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %9 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %8, i32 0, i32 4
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %4, align 8
  %10 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %11 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %14 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %19 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @regulator_enable(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %115

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %28 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dispc_runtime_get(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %104

36:                                               ; preds = %26
  %37 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %38 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %41 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dss_dpi_select_source(%struct.TYPE_2__* %39, i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %97

50:                                               ; preds = %36
  %51 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %52 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %57 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dss_pll_enable(i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %96

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %66 = call i32 @dpi_set_mode(%struct.dpi_data* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %85

70:                                               ; preds = %64
  %71 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %72 = call i32 @dpi_config_lcd_manager(%struct.dpi_data* %71)
  %73 = call i32 @mdelay(i32 2)
  %74 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %75 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %74, i32 0, i32 4
  %76 = call i32 @dss_mgr_enable(%struct.omap_dss_device* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %84

80:                                               ; preds = %70
  %81 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %82 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  br label %119

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %69
  %86 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %87 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %92 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @dss_pll_disable(i64 %93)
  br label %95

95:                                               ; preds = %90, %85
  br label %96

96:                                               ; preds = %95, %62
  br label %97

97:                                               ; preds = %96, %49
  %98 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %99 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dispc_runtime_put(i32 %102)
  br label %104

104:                                              ; preds = %97, %35
  %105 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %106 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %111 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @regulator_disable(i64 %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %24
  %116 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %117 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %115, %80
  ret void
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dispc_runtime_get(i32) #1

declare dso_local i32 @dss_dpi_select_source(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dss_pll_enable(i64) #1

declare dso_local i32 @dpi_set_mode(%struct.dpi_data*) #1

declare dso_local i32 @dpi_config_lcd_manager(%struct.dpi_data*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dss_mgr_enable(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dss_pll_disable(i64) #1

declare dso_local i32 @dispc_runtime_put(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
