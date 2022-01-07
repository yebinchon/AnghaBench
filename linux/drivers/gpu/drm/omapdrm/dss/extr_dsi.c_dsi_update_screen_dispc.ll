; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_update_screen_dispc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_update_screen_dispc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"dsi_update_screen_dispc(%dx%d)\0A\00", align 1
@DSI_VC_SOURCE_VP = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_LONG_WRITE = common dso_local global i32 0, align 4
@DSI_TIMING2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*)* @dsi_update_screen_dispc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_update_screen_dispc(%struct.dsi_data* %0) #0 {
  %2 = alloca %struct.dsi_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %2, align 8
  %15 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %16 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %22 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %26 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @DSSDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @DSI_VC_SOURCE_VP, align 4
  %35 = call i32 @dsi_vc_config_source(%struct.dsi_data* %32, i32 %33, i32 %34)
  %36 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %37 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dsi_get_pixel_size(i32 %38)
  %40 = sdiv i32 %39, 8
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %3, align 4
  %43 = mul i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %14, align 4
  %46 = mul i32 %44, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %7, align 4
  br label %58

52:                                               ; preds = %1
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %4, align 4
  %55 = udiv i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = mul i32 %55, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %50
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = udiv i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = mul i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = urem i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = urem i32 %71, %72
  %74 = add i32 %73, 1
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %70, %58
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @FLD_VAL(i32 %78, i32 23, i32 0)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @DSI_VC_TE(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @dsi_write_reg(%struct.dsi_data* %80, i32 %82, i32 %83)
  %85 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @MIPI_DSI_DCS_LONG_WRITE, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dsi_vc_write_long_header(%struct.dsi_data* %85, i32 %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %91 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %77
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @FLD_MOD(i32 %95, i32 1, i32 30, i32 30)
  store i32 %96, i32* %9, align 4
  br label %100

97:                                               ; preds = %77
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @FLD_MOD(i32 %98, i32 1, i32 31, i32 31)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @DSI_VC_TE(i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @dsi_write_reg(%struct.dsi_data* %101, i32 %103, i32 %104)
  %106 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %107 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %106, i32 0, i32 6
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dispc_disable_sidle(i32 %110)
  %112 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %113 = call i32 @dsi_perf_mark_start(%struct.dsi_data* %112)
  %114 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %115 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %114, i32 0, i32 5
  %116 = call i64 @msecs_to_jiffies(i32 250)
  %117 = call i32 @schedule_delayed_work(i32* %115, i64 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @BUG_ON(i32 %120)
  %122 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %123 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %122, i32 0, i32 4
  %124 = call i32 @dss_mgr_start_update(i32* %123)
  %125 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %126 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %100
  %130 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %131 = load i32, i32* @DSI_TIMING2, align 4
  %132 = call i32 @REG_FLD_MOD(%struct.dsi_data* %130, i32 %131, i32 0, i32 15, i32 15)
  %133 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @dsi_vc_send_bta(%struct.dsi_data* %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %100
  ret void
}

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @dsi_vc_config_source(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @DSI_VC_TE(i32) #1

declare dso_local i32 @dsi_vc_write_long_header(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_disable_sidle(i32) #1

declare dso_local i32 @dsi_perf_mark_start(%struct.dsi_data*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dss_mgr_start_update(i32*) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_vc_send_bta(%struct.dsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
