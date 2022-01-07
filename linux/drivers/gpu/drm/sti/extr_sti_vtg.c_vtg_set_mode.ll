; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_vtg_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_vtg_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.sti_vtg = type { i64 }
%struct.sti_vtg_sync_params = type { i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32 }

@VTG_CLKLN = common dso_local global i64 0, align 8
@VTG_HLFLN = common dso_local global i64 0, align 8
@VTG_SYNC_ID_HDMI = common dso_local global i32 0, align 4
@HDMI_DELAY = common dso_local global i32 0, align 4
@VTG_SYNC_ID_HDDCS = common dso_local global i32 0, align 4
@VTG_SYNC_ID_HDF = common dso_local global i32 0, align 4
@AWG_DELAY_HD = common dso_local global i32 0, align 4
@VTG_SYNC_ID_DVO = common dso_local global i32 0, align 4
@DVO_DELAY = common dso_local global i32 0, align 4
@VTG_MAX_SYNC_OUTPUT = common dso_local global i32 0, align 4
@vtg_regs_offs = common dso_local global %struct.TYPE_2__* null, align 8
@VTG_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_vtg*, i32, %struct.sti_vtg_sync_params*, %struct.drm_display_mode*)* @vtg_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtg_set_mode(%struct.sti_vtg* %0, i32 %1, %struct.sti_vtg_sync_params* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca %struct.sti_vtg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sti_vtg_sync_params*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  store %struct.sti_vtg* %0, %struct.sti_vtg** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sti_vtg_sync_params* %2, %struct.sti_vtg_sync_params** %7, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %8, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %14 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VTG_CLKLN, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %24 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VTG_HLFLN, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %30 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %33 = call i32 @vtg_set_output_window(i64 %31, %struct.drm_display_mode* %32)
  %34 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %35 = load i32, i32* @VTG_SYNC_ID_HDMI, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %34, i64 %37
  %39 = load i32, i32* @HDMI_DELAY, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %41 = call i32 @vtg_set_hsync_vsync_pos(%struct.sti_vtg_sync_params* %38, i32 %39, %struct.drm_display_mode* %40)
  %42 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %43 = load i32, i32* @VTG_SYNC_ID_HDDCS, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %42, i64 %45
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %48 = call i32 @vtg_set_hsync_vsync_pos(%struct.sti_vtg_sync_params* %46, i32 0, %struct.drm_display_mode* %47)
  %49 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %50 = load i32, i32* @VTG_SYNC_ID_HDF, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %49, i64 %52
  %54 = load i32, i32* @AWG_DELAY_HD, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %56 = call i32 @vtg_set_hsync_vsync_pos(%struct.sti_vtg_sync_params* %53, i32 %54, %struct.drm_display_mode* %55)
  %57 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %58 = load i32, i32* @VTG_SYNC_ID_DVO, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %57, i64 %60
  %62 = load i32, i32* @DVO_DELAY, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %64 = call i32 @vtg_set_hsync_vsync_pos(%struct.sti_vtg_sync_params* %61, i32 %62, %struct.drm_display_mode* %63)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %155, %4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @VTG_MAX_SYNC_OUTPUT, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %158

69:                                               ; preds = %65
  %70 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %70, i64 %72
  %74 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %77 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtg_regs_offs, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %78, %84
  %86 = call i32 @writel(i32 %75, i64 %85)
  %87 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %87, i64 %89
  %91 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %94 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtg_regs_offs, align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %95, %101
  %103 = call i32 @writel(i32 %92, i64 %102)
  %104 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %104, i64 %106
  %108 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %111 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtg_regs_offs, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %112, %118
  %120 = call i32 @writel(i32 %109, i64 %119)
  %121 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %121, i64 %123
  %125 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %128 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtg_regs_offs, align 8
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %129, %135
  %137 = call i32 @writel(i32 %126, i64 %136)
  %138 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %7, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %138, i64 %140
  %142 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %145 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtg_regs_offs, align 8
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %146, %152
  %154 = call i32 @writel(i32 %143, i64 %153)
  br label %155

155:                                              ; preds = %69
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %65

158:                                              ; preds = %65
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.sti_vtg*, %struct.sti_vtg** %5, align 8
  %161 = getelementptr inbounds %struct.sti_vtg, %struct.sti_vtg* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @VTG_MODE, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @writel(i32 %159, i64 %164)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @vtg_set_output_window(i64, %struct.drm_display_mode*) #1

declare dso_local i32 @vtg_set_hsync_vsync_pos(%struct.sti_vtg_sync_params*, i32, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
