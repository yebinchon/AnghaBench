; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32 }

@MCDE_OVL0CONF = common dso_local global i32 0, align 4
@MCDE_OVL0CONF2 = common dso_local global i32 0, align 4
@MCDE_OVL0CROP = common dso_local global i32 0, align 4
@MCDE_OVL0LJINC = common dso_local global i32 0, align 4
@MCDE_OVL0CR = common dso_local global i32 0, align 4
@MCDE_OVL0COMP = common dso_local global i32 0, align 4
@MCDE_OVL1CONF = common dso_local global i32 0, align 4
@MCDE_OVL1CONF2 = common dso_local global i32 0, align 4
@MCDE_OVL1CROP = common dso_local global i32 0, align 4
@MCDE_OVL1LJINC = common dso_local global i32 0, align 4
@MCDE_OVL1CR = common dso_local global i32 0, align 4
@MCDE_OVL1COMP = common dso_local global i32 0, align 4
@MCDE_OVL2CONF = common dso_local global i32 0, align 4
@MCDE_OVL2CONF2 = common dso_local global i32 0, align 4
@MCDE_OVL2CROP = common dso_local global i32 0, align 4
@MCDE_OVL2LJINC = common dso_local global i32 0, align 4
@MCDE_OVL2CR = common dso_local global i32 0, align 4
@MCDE_OVL2COMP = common dso_local global i32 0, align 4
@MCDE_OVL3CONF = common dso_local global i32 0, align 4
@MCDE_OVL3CONF2 = common dso_local global i32 0, align 4
@MCDE_OVL3CROP = common dso_local global i32 0, align 4
@MCDE_OVL3LJINC = common dso_local global i32 0, align 4
@MCDE_OVL3CR = common dso_local global i32 0, align 4
@MCDE_OVL3COMP = common dso_local global i32 0, align 4
@MCDE_OVL4CONF = common dso_local global i32 0, align 4
@MCDE_OVL4CONF2 = common dso_local global i32 0, align 4
@MCDE_OVL4CROP = common dso_local global i32 0, align 4
@MCDE_OVL4LJINC = common dso_local global i32 0, align 4
@MCDE_OVL4CR = common dso_local global i32 0, align 4
@MCDE_OVL4COMP = common dso_local global i32 0, align 4
@MCDE_OVL5CONF = common dso_local global i32 0, align 4
@MCDE_OVL5CONF2 = common dso_local global i32 0, align 4
@MCDE_OVL5CROP = common dso_local global i32 0, align 4
@MCDE_OVL5LJINC = common dso_local global i32 0, align 4
@MCDE_OVL5CR = common dso_local global i32 0, align 4
@MCDE_OVL5COMP = common dso_local global i32 0, align 4
@MCDE_OVLXCONF_PPL_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCONF_LPF_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCONF_EXTSRC_ID_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCONF2_BP_PER_PIXEL_ALPHA = common dso_local global i32 0, align 4
@MCDE_OVLXCONF2_ALPHAVALUE_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCONF2_OPQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown pixel format 0x%08x\0A\00", align 1
@MCDE_OVLXCONF2_PIXELFETCHERWATERMARKLEVEL_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCR_OVLEN = common dso_local global i32 0, align 4
@MCDE_OVLXCR_COLCCTRL_DISABLED = common dso_local global i32 0, align 4
@MCDE_OVLXCR_BURSTSIZE_8W = common dso_local global i32 0, align 4
@MCDE_OVLXCR_BURSTSIZE_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCR_MAXOUTSTANDING_8_REQ = common dso_local global i32 0, align 4
@MCDE_OVLXCR_MAXOUTSTANDING_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCR_ROTBURSTSIZE_8W = common dso_local global i32 0, align 4
@MCDE_OVLXCR_ROTBURSTSIZE_SHIFT = common dso_local global i32 0, align 4
@MCDE_OVLXCOMP_CH_ID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*, i32, i32, i32, %struct.drm_display_mode*, i32)* @mcde_configure_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_configure_overlay(%struct.mcde* %0, i32 %1, i32 %2, i32 %3, %struct.drm_display_mode* %4, i32 %5) #0 {
  %7 = alloca %struct.mcde*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.drm_display_mode* %4, %struct.drm_display_mode** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %63 [
    i32 133, label %21
    i32 132, label %28
    i32 131, label %35
    i32 130, label %42
    i32 129, label %49
    i32 128, label %56
  ]

21:                                               ; preds = %6
  %22 = load i32, i32* @MCDE_OVL0CONF, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @MCDE_OVL0CONF2, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @MCDE_OVL0CROP, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* @MCDE_OVL0LJINC, align 4
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* @MCDE_OVL0CR, align 4
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @MCDE_OVL0COMP, align 4
  store i32 %27, i32* %19, align 4
  br label %63

28:                                               ; preds = %6
  %29 = load i32, i32* @MCDE_OVL1CONF, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @MCDE_OVL1CONF2, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @MCDE_OVL1CROP, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* @MCDE_OVL1LJINC, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* @MCDE_OVL1CR, align 4
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @MCDE_OVL1COMP, align 4
  store i32 %34, i32* %19, align 4
  br label %63

35:                                               ; preds = %6
  %36 = load i32, i32* @MCDE_OVL2CONF, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* @MCDE_OVL2CONF2, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* @MCDE_OVL2CROP, align 4
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @MCDE_OVL2LJINC, align 4
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* @MCDE_OVL2CR, align 4
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* @MCDE_OVL2COMP, align 4
  store i32 %41, i32* %19, align 4
  br label %63

42:                                               ; preds = %6
  %43 = load i32, i32* @MCDE_OVL3CONF, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @MCDE_OVL3CONF2, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* @MCDE_OVL3CROP, align 4
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* @MCDE_OVL3LJINC, align 4
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* @MCDE_OVL3CR, align 4
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @MCDE_OVL3COMP, align 4
  store i32 %48, i32* %19, align 4
  br label %63

49:                                               ; preds = %6
  %50 = load i32, i32* @MCDE_OVL4CONF, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @MCDE_OVL4CONF2, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* @MCDE_OVL4CROP, align 4
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* @MCDE_OVL4LJINC, align 4
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* @MCDE_OVL4CR, align 4
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* @MCDE_OVL4COMP, align 4
  store i32 %55, i32* %19, align 4
  br label %63

56:                                               ; preds = %6
  %57 = load i32, i32* @MCDE_OVL5CONF, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @MCDE_OVL5CONF2, align 4
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* @MCDE_OVL5CROP, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @MCDE_OVL5LJINC, align 4
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* @MCDE_OVL5CR, align 4
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* @MCDE_OVL5COMP, align 4
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %6, %56, %49, %42, %35, %28, %21
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MCDE_OVLXCONF_PPL_SHIFT, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MCDE_OVLXCONF_LPF_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @MCDE_OVLXCONF_EXTSRC_ID_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %13, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.mcde*, %struct.mcde** %7, align 8
  %83 = getelementptr inbounds %struct.mcde, %struct.mcde* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @writel(i32 %81, i32 %86)
  %88 = load i32, i32* @MCDE_OVLXCONF2_BP_PER_PIXEL_ALPHA, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* @MCDE_OVLXCONF2_ALPHAVALUE_SHIFT, align 4
  %90 = shl i32 255, %89
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  switch i32 %93, label %99 [
    i32 143, label %94
    i32 145, label %94
    i32 144, label %94
    i32 146, label %94
    i32 136, label %94
    i32 138, label %94
    i32 135, label %95
    i32 137, label %95
    i32 139, label %95
    i32 141, label %95
    i32 140, label %95
    i32 142, label %95
    i32 134, label %95
  ]

94:                                               ; preds = %63, %63, %63, %63, %63, %63
  br label %105

95:                                               ; preds = %63, %63, %63, %63, %63, %63, %63
  %96 = load i32, i32* @MCDE_OVLXCONF2_OPQ, align 4
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %13, align 4
  br label %105

99:                                               ; preds = %63
  %100 = load %struct.mcde*, %struct.mcde** %7, align 8
  %101 = getelementptr inbounds %struct.mcde, %struct.mcde* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %95, %94
  %106 = load i32, i32* @MCDE_OVLXCONF2_PIXELFETCHERWATERMARKLEVEL_SHIFT, align 4
  %107 = shl i32 48, %106
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.mcde*, %struct.mcde** %7, align 8
  %112 = getelementptr inbounds %struct.mcde, %struct.mcde* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @writel(i32 %110, i32 %115)
  %117 = load %struct.mcde*, %struct.mcde** %7, align 8
  %118 = getelementptr inbounds %struct.mcde, %struct.mcde* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mcde*, %struct.mcde** %7, align 8
  %121 = getelementptr inbounds %struct.mcde, %struct.mcde* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i32 @writel(i32 %119, i32 %124)
  %126 = load %struct.mcde*, %struct.mcde** %7, align 8
  %127 = getelementptr inbounds %struct.mcde, %struct.mcde* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @writel(i32 0, i32 %130)
  %132 = load i32, i32* @MCDE_OVLXCR_OVLEN, align 4
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* @MCDE_OVLXCR_COLCCTRL_DISABLED, align 4
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* @MCDE_OVLXCR_BURSTSIZE_8W, align 4
  %137 = load i32, i32* @MCDE_OVLXCR_BURSTSIZE_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* %13, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* @MCDE_OVLXCR_MAXOUTSTANDING_8_REQ, align 4
  %142 = load i32, i32* @MCDE_OVLXCR_MAXOUTSTANDING_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %13, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* @MCDE_OVLXCR_ROTBURSTSIZE_8W, align 4
  %147 = load i32, i32* @MCDE_OVLXCR_ROTBURSTSIZE_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.mcde*, %struct.mcde** %7, align 8
  %153 = getelementptr inbounds %struct.mcde, %struct.mcde* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 @writel(i32 %151, i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @MCDE_OVLXCOMP_CH_ID_SHIFT, align 4
  %160 = shl i32 %158, %159
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.mcde*, %struct.mcde** %7, align 8
  %163 = getelementptr inbounds %struct.mcde, %struct.mcde* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %164, %165
  %167 = call i32 @writel(i32 %161, i32 %166)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
