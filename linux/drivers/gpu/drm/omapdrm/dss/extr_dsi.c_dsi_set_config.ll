; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_dss_dsi_config = type { i64, i32, i32, i32 }
%struct.dsi_data = type { i64, i32, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.dsi_clk_calc_ctx = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__ }

@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to find suitable DSI clock settings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HSDIV_DSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to find suitable DSI LP clock settings\0A\00", align 1
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_NEGEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_SYNC_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_SYNC_NEGEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)* @dsi_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_set_config(%struct.omap_dss_device* %0, %struct.omap_dss_dsi_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca %struct.dsi_clk_calc_ctx, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_dsi_config* %1, %struct.omap_dss_dsi_config** %5, align 8
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %11 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %10)
  store %struct.dsi_data* %11, %struct.dsi_data** %6, align 8
  %12 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %13 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %16 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %21 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %26 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %32 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %33 = call i32 @dsi_vm_calc(%struct.dsi_data* %31, %struct.omap_dss_dsi_config* %32, %struct.dsi_clk_calc_ctx* %7)
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %36 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %37 = call i32 @dsi_cm_calc(%struct.dsi_data* %35, %struct.omap_dss_dsi_config* %36, %struct.dsi_clk_calc_ctx* %7)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = call i32 @DSSERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %167

45:                                               ; preds = %38
  %46 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %47 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %7, i32 0, i32 3
  %48 = call i32 @dsi_pll_calc_dsi_fck(%struct.dsi_data* %46, %struct.TYPE_4__* %47)
  %49 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %7, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @HSDIV_DSI, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %56 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %59 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %62 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %61, i32 0, i32 7
  %63 = call i32 @dsi_lp_clock_calc(i32 %54, i32 %57, i32 %60, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %45
  %67 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %167

68:                                               ; preds = %45
  %69 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %70 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %7, i32 0, i32 3
  %72 = bitcast %struct.TYPE_4__* %70 to i8*
  %73 = bitcast %struct.TYPE_4__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  %74 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %77 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %79 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %7, i32 0, i32 1
  %81 = bitcast %struct.TYPE_3__* %79 to i8*
  %82 = bitcast %struct.TYPE_3__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %86 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %84
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @DISPLAY_FLAGS_HSYNC_LOW, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %93 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %91
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %98 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %99 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @DISPLAY_FLAGS_VSYNC_LOW, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %106 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %104
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %111 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %112 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %119 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %117
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %124 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %125 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @DISPLAY_FLAGS_DE_LOW, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %132 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %130
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* @DISPLAY_FLAGS_DE_HIGH, align 4
  %137 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %138 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @DISPLAY_FLAGS_SYNC_POSEDGE, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %145 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %143
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @DISPLAY_FLAGS_SYNC_NEGEDGE, align 4
  %150 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %151 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %156 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %155, i32 0, i32 4
  %157 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %158 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %157, i32 0, i32 3
  %159 = call i32 @dss_mgr_set_timings(i32* %156, %struct.TYPE_3__* %158)
  %160 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %7, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %163 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %165 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %164, i32 0, i32 1
  %166 = call i32 @mutex_unlock(i32* %165)
  store i32 0, i32* %3, align 4
  br label %172

167:                                              ; preds = %66, %41
  %168 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %169 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %168, i32 0, i32 1
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %167, %68
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsi_vm_calc(%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*) #1

declare dso_local i32 @dsi_cm_calc(%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_pll_calc_dsi_fck(%struct.dsi_data*, %struct.TYPE_4__*) #1

declare dso_local i32 @dsi_lp_clock_calc(i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dss_mgr_set_timings(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
