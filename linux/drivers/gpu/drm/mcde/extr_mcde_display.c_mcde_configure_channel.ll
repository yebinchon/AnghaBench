; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i64 }
%struct.drm_display_mode = type { i32, i32 }

@MCDE_CHNL0CONF = common dso_local global i32 0, align 4
@MCDE_CHNL0SYNCHMOD = common dso_local global i32 0, align 4
@MCDE_CHNL0STAT = common dso_local global i32 0, align 4
@MCDE_CHNL0BCKGNDCOL = common dso_local global i32 0, align 4
@MCDE_CHNL0MUXING = common dso_local global i32 0, align 4
@MCDE_CHNL1CONF = common dso_local global i32 0, align 4
@MCDE_CHNL1SYNCHMOD = common dso_local global i32 0, align 4
@MCDE_CHNL1STAT = common dso_local global i32 0, align 4
@MCDE_CHNL1BCKGNDCOL = common dso_local global i32 0, align 4
@MCDE_CHNL1MUXING = common dso_local global i32 0, align 4
@MCDE_CHNL2CONF = common dso_local global i32 0, align 4
@MCDE_CHNL2SYNCHMOD = common dso_local global i32 0, align 4
@MCDE_CHNL2STAT = common dso_local global i32 0, align 4
@MCDE_CHNL2BCKGNDCOL = common dso_local global i32 0, align 4
@MCDE_CHNL2MUXING = common dso_local global i32 0, align 4
@MCDE_CHNL3CONF = common dso_local global i32 0, align 4
@MCDE_CHNL3SYNCHMOD = common dso_local global i32 0, align 4
@MCDE_CHNL3STAT = common dso_local global i32 0, align 4
@MCDE_CHNL3BCKGNDCOL = common dso_local global i32 0, align 4
@MCDE_CHNL3MUXING = common dso_local global i32 0, align 4
@MCDE_CHNLXSYNCHMOD_SRC_SYNCH_HARDWARE = common dso_local global i32 0, align 4
@MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SHIFT = common dso_local global i32 0, align 4
@MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_TE0 = common dso_local global i32 0, align 4
@MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_SHIFT = common dso_local global i32 0, align 4
@MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SOFTWARE = common dso_local global i32 0, align 4
@MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_FORMATTER = common dso_local global i32 0, align 4
@MCDE_CHNLXCONF_PPL_SHIFT = common dso_local global i32 0, align 4
@MCDE_CHNLXCONF_LPF_SHIFT = common dso_local global i32 0, align 4
@MCDE_CHNLXSTAT_CHNLBLBCKGND_EN = common dso_local global i32 0, align 4
@MCDE_CHNLXSTAT_CHNLRD = common dso_local global i32 0, align 4
@MCDE_CHNLXMUXING_FIFO_ID_FIFO_A = common dso_local global i32 0, align 4
@MCDE_CHNLXMUXING_FIFO_ID_FIFO_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*, i32, i32, %struct.drm_display_mode*)* @mcde_configure_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_configure_channel(%struct.mcde* %0, i32 %1, i32 %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca %struct.mcde*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %40 [
    i32 133, label %16
    i32 132, label %22
    i32 131, label %28
    i32 130, label %34
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* @MCDE_CHNL0CONF, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @MCDE_CHNL0SYNCHMOD, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @MCDE_CHNL0STAT, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @MCDE_CHNL0BCKGNDCOL, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @MCDE_CHNL0MUXING, align 4
  store i32 %21, i32* %14, align 4
  br label %40

22:                                               ; preds = %4
  %23 = load i32, i32* @MCDE_CHNL1CONF, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @MCDE_CHNL1SYNCHMOD, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @MCDE_CHNL1STAT, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @MCDE_CHNL1BCKGNDCOL, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @MCDE_CHNL1MUXING, align 4
  store i32 %27, i32* %14, align 4
  br label %40

28:                                               ; preds = %4
  %29 = load i32, i32* @MCDE_CHNL2CONF, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @MCDE_CHNL2SYNCHMOD, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @MCDE_CHNL2STAT, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @MCDE_CHNL2BCKGNDCOL, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @MCDE_CHNL2MUXING, align 4
  store i32 %33, i32* %14, align 4
  br label %40

34:                                               ; preds = %4
  %35 = load i32, i32* @MCDE_CHNL3CONF, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @MCDE_CHNL3SYNCHMOD, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @MCDE_CHNL3STAT, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @MCDE_CHNL3BCKGNDCOL, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @MCDE_CHNL3MUXING, align 4
  store i32 %39, i32* %14, align 4
  br label %125

40:                                               ; preds = %4, %28, %22, %16
  %41 = load %struct.mcde*, %struct.mcde** %5, align 8
  %42 = getelementptr inbounds %struct.mcde, %struct.mcde* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* @MCDE_CHNLXSYNCHMOD_SRC_SYNCH_HARDWARE, align 4
  %47 = load i32, i32* @MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SHIFT, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_TE0, align 4
  %50 = load i32, i32* @MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load i32, i32* @MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SOFTWARE, align 4
  %56 = load i32, i32* @MCDE_CHNLXSYNCHMOD_SRC_SYNCH_SHIFT, align 4
  %57 = shl i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_FORMATTER, align 4
  %59 = load i32, i32* @MCDE_CHNLXSYNCHMOD_OUT_SYNCH_SRC_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %54, %45
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.mcde*, %struct.mcde** %5, align 8
  %66 = getelementptr inbounds %struct.mcde, %struct.mcde* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @writel(i32 %64, i32 %69)
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* @MCDE_CHNLXCONF_PPL_SHIFT, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @MCDE_CHNLXCONF_LPF_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.mcde*, %struct.mcde** %5, align 8
  %87 = getelementptr inbounds %struct.mcde, %struct.mcde* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @writel(i32 %85, i32 %90)
  %92 = load i32, i32* @MCDE_CHNLXSTAT_CHNLBLBCKGND_EN, align 4
  %93 = load i32, i32* @MCDE_CHNLXSTAT_CHNLRD, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.mcde*, %struct.mcde** %5, align 8
  %97 = getelementptr inbounds %struct.mcde, %struct.mcde* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @writel(i32 %95, i32 %100)
  %102 = load %struct.mcde*, %struct.mcde** %5, align 8
  %103 = getelementptr inbounds %struct.mcde, %struct.mcde* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @writel(i32 0, i32 %106)
  %108 = load i32, i32* %7, align 4
  switch i32 %108, label %125 [
    i32 129, label %109
    i32 128, label %117
  ]

109:                                              ; preds = %63
  %110 = load i32, i32* @MCDE_CHNLXMUXING_FIFO_ID_FIFO_A, align 4
  %111 = load %struct.mcde*, %struct.mcde** %5, align 8
  %112 = getelementptr inbounds %struct.mcde, %struct.mcde* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @writel(i32 %110, i32 %115)
  br label %125

117:                                              ; preds = %63
  %118 = load i32, i32* @MCDE_CHNLXMUXING_FIFO_ID_FIFO_B, align 4
  %119 = load %struct.mcde*, %struct.mcde** %5, align 8
  %120 = getelementptr inbounds %struct.mcde, %struct.mcde* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  %124 = call i32 @writel(i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %34, %63, %117, %109
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
