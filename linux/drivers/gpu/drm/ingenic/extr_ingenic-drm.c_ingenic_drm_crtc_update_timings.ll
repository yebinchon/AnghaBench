; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_update_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_update_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_drm = type { i32, i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@JZ_REG_LCD_VSYNC = common dso_local global i32 0, align 4
@JZ_LCD_VSYNC_VPS_OFFSET = common dso_local global i32 0, align 4
@JZ_LCD_VSYNC_VPE_OFFSET = common dso_local global i32 0, align 4
@JZ_REG_LCD_HSYNC = common dso_local global i32 0, align 4
@JZ_LCD_HSYNC_HPS_OFFSET = common dso_local global i32 0, align 4
@JZ_LCD_HSYNC_HPE_OFFSET = common dso_local global i32 0, align 4
@JZ_REG_LCD_VAT = common dso_local global i32 0, align 4
@JZ_LCD_VAT_HT_OFFSET = common dso_local global i32 0, align 4
@JZ_LCD_VAT_VT_OFFSET = common dso_local global i32 0, align 4
@JZ_REG_LCD_DAH = common dso_local global i32 0, align 4
@JZ_LCD_DAH_HDS_OFFSET = common dso_local global i32 0, align 4
@JZ_LCD_DAH_HDE_OFFSET = common dso_local global i32 0, align 4
@JZ_REG_LCD_DAV = common dso_local global i32 0, align 4
@JZ_LCD_DAV_VDS_OFFSET = common dso_local global i32 0, align 4
@JZ_LCD_DAV_VDE_OFFSET = common dso_local global i32 0, align 4
@JZ_REG_LCD_PS = common dso_local global i32 0, align 4
@JZ_REG_LCD_CLS = common dso_local global i32 0, align 4
@JZ_REG_LCD_SPL = common dso_local global i32 0, align 4
@JZ_REG_LCD_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_drm*, %struct.drm_display_mode*)* @ingenic_drm_crtc_update_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_drm_crtc_update_timings(%struct.ingenic_drm* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.ingenic_drm*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ingenic_drm* %0, %struct.ingenic_drm** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %32, %35
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %50, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %55, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %60, %63
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = sub i32 %64, %67
  store i32 %68, i32* %12, align 4
  %69 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %70 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @JZ_REG_LCD_VSYNC, align 4
  %73 = load i32, i32* @JZ_LCD_VSYNC_VPS_OFFSET, align 4
  %74 = shl i32 0, %73
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @JZ_LCD_VSYNC_VPE_OFFSET, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = call i32 @regmap_write(i32 %71, i32 %72, i32 %78)
  %80 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %81 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @JZ_REG_LCD_HSYNC, align 4
  %84 = load i32, i32* @JZ_LCD_HSYNC_HPS_OFFSET, align 4
  %85 = shl i32 0, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @JZ_LCD_HSYNC_HPE_OFFSET, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %85, %88
  %90 = call i32 @regmap_write(i32 %82, i32 %83, i32 %89)
  %91 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %92 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @JZ_REG_LCD_VAT, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @JZ_LCD_VAT_HT_OFFSET, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @JZ_LCD_VAT_VT_OFFSET, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  %102 = call i32 @regmap_write(i32 %93, i32 %94, i32 %101)
  %103 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %104 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @JZ_REG_LCD_DAH, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @JZ_LCD_DAH_HDS_OFFSET, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @JZ_LCD_DAH_HDE_OFFSET, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %109, %112
  %114 = call i32 @regmap_write(i32 %105, i32 %106, i32 %113)
  %115 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %116 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @JZ_REG_LCD_DAV, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @JZ_LCD_DAV_VDS_OFFSET, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @JZ_LCD_DAV_VDE_OFFSET, align 4
  %124 = shl i32 %122, %123
  %125 = or i32 %121, %124
  %126 = call i32 @regmap_write(i32 %117, i32 %118, i32 %125)
  %127 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %128 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %171

131:                                              ; preds = %2
  %132 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %133 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @JZ_REG_LCD_PS, align 4
  %136 = load i32, i32* %11, align 4
  %137 = shl i32 %136, 16
  %138 = load i32, i32* %11, align 4
  %139 = add i32 %138, 1
  %140 = or i32 %137, %139
  %141 = call i32 @regmap_write(i32 %134, i32 %135, i32 %140)
  %142 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %143 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @JZ_REG_LCD_CLS, align 4
  %146 = load i32, i32* %11, align 4
  %147 = shl i32 %146, 16
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, 1
  %150 = or i32 %147, %149
  %151 = call i32 @regmap_write(i32 %144, i32 %145, i32 %150)
  %152 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %153 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @JZ_REG_LCD_SPL, align 4
  %156 = load i32, i32* %9, align 4
  %157 = shl i32 %156, 16
  %158 = load i32, i32* %9, align 4
  %159 = add i32 %158, 1
  %160 = or i32 %157, %159
  %161 = call i32 @regmap_write(i32 %154, i32 %155, i32 %160)
  %162 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %163 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @JZ_REG_LCD_REV, align 4
  %166 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %167 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 16
  %170 = call i32 @regmap_write(i32 %164, i32 %165, i32 %169)
  br label %171

171:                                              ; preds = %131, %2
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
