; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_dsi_formatter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_dsi_formatter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MCDE_DSIVID0CONF0 = common dso_local global i32 0, align 4
@MCDE_DSIVID0FRAME = common dso_local global i32 0, align 4
@MCDE_DSIVID0PKT = common dso_local global i32 0, align 4
@MCDE_DSIVID0SYNC = common dso_local global i32 0, align 4
@MCDE_DSIVID0CMDW = common dso_local global i32 0, align 4
@MCDE_DSIVID0DELAY0 = common dso_local global i32 0, align 4
@MCDE_DSIVID0DELAY1 = common dso_local global i32 0, align 4
@MCDE_DSIVID1CONF0 = common dso_local global i32 0, align 4
@MCDE_DSIVID1FRAME = common dso_local global i32 0, align 4
@MCDE_DSIVID1PKT = common dso_local global i32 0, align 4
@MCDE_DSIVID1SYNC = common dso_local global i32 0, align 4
@MCDE_DSIVID1CMDW = common dso_local global i32 0, align 4
@MCDE_DSIVID1DELAY0 = common dso_local global i32 0, align 4
@MCDE_DSIVID1DELAY1 = common dso_local global i32 0, align 4
@MCDE_DSIVID2CONF0 = common dso_local global i32 0, align 4
@MCDE_DSIVID2FRAME = common dso_local global i32 0, align 4
@MCDE_DSIVID2PKT = common dso_local global i32 0, align 4
@MCDE_DSIVID2SYNC = common dso_local global i32 0, align 4
@MCDE_DSIVID2CMDW = common dso_local global i32 0, align 4
@MCDE_DSIVID2DELAY0 = common dso_local global i32 0, align 4
@MCDE_DSIVID2DELAY1 = common dso_local global i32 0, align 4
@MCDE_DSICONF0_CMD8 = common dso_local global i32 0, align 4
@MCDE_DSICONF0_DCSVID_NOTGEN = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MCDE_DSICONF0_VID_MODE_VID = common dso_local global i32 0, align 4
@MCDE_DSICONF0_PACKING_RGB888 = common dso_local global i32 0, align 4
@MCDE_DSICONF0_PACKING_SHIFT = common dso_local global i32 0, align 4
@MCDE_DSICONF0_PACKING_RGB666 = common dso_local global i32 0, align 4
@MCDE_DSICONF0_PACKING_RGB666_PACKED = common dso_local global i32 0, align 4
@MCDE_DSICONF0_PACKING_RGB565 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown DSI format\0A\00", align 1
@MIPI_DCS_WRITE_MEMORY_CONTINUE = common dso_local global i32 0, align 4
@MCDE_DSIVIDXCMDW_CMDW_CONTINUE_SHIFT = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@MCDE_DSIVIDXCMDW_CMDW_START_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*, i32, i32, i32)* @mcde_configure_dsi_formatter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_configure_dsi_formatter(%struct.mcde* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mcde*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %42 [
    i32 134, label %18
    i32 133, label %26
    i32 132, label %34
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @MCDE_DSIVID0CONF0, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @MCDE_DSIVID0FRAME, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @MCDE_DSIVID0PKT, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @MCDE_DSIVID0SYNC, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @MCDE_DSIVID0CMDW, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @MCDE_DSIVID0DELAY0, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @MCDE_DSIVID0DELAY1, align 4
  store i32 %25, i32* %16, align 4
  br label %42

26:                                               ; preds = %4
  %27 = load i32, i32* @MCDE_DSIVID1CONF0, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @MCDE_DSIVID1FRAME, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @MCDE_DSIVID1PKT, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @MCDE_DSIVID1SYNC, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @MCDE_DSIVID1CMDW, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* @MCDE_DSIVID1DELAY0, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* @MCDE_DSIVID1DELAY1, align 4
  store i32 %33, i32* %16, align 4
  br label %42

34:                                               ; preds = %4
  %35 = load i32, i32* @MCDE_DSIVID2CONF0, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @MCDE_DSIVID2FRAME, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @MCDE_DSIVID2PKT, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @MCDE_DSIVID2SYNC, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @MCDE_DSIVID2CMDW, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @MCDE_DSIVID2DELAY0, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* @MCDE_DSIVID2DELAY1, align 4
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %4, %34, %26, %18
  %43 = load i32, i32* @MCDE_DSICONF0_CMD8, align 4
  %44 = load i32, i32* @MCDE_DSICONF0_DCSVID_NOTGEN, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.mcde*, %struct.mcde** %5, align 8
  %47 = getelementptr inbounds %struct.mcde, %struct.mcde* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @MCDE_DSICONF0_VID_MODE_VID, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %42
  %59 = load %struct.mcde*, %struct.mcde** %5, align 8
  %60 = getelementptr inbounds %struct.mcde, %struct.mcde* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %88 [
    i32 128, label %64
    i32 130, label %70
    i32 129, label %76
    i32 131, label %82
  ]

64:                                               ; preds = %58
  %65 = load i32, i32* @MCDE_DSICONF0_PACKING_RGB888, align 4
  %66 = load i32, i32* @MCDE_DSICONF0_PACKING_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %93

70:                                               ; preds = %58
  %71 = load i32, i32* @MCDE_DSICONF0_PACKING_RGB666, align 4
  %72 = load i32, i32* @MCDE_DSICONF0_PACKING_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %93

76:                                               ; preds = %58
  %77 = load i32, i32* @MCDE_DSICONF0_PACKING_RGB666_PACKED, align 4
  %78 = load i32, i32* @MCDE_DSICONF0_PACKING_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %93

82:                                               ; preds = %58
  %83 = load i32, i32* @MCDE_DSICONF0_PACKING_RGB565, align 4
  %84 = load i32, i32* @MCDE_DSICONF0_PACKING_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %93

88:                                               ; preds = %58
  %89 = load %struct.mcde*, %struct.mcde** %5, align 8
  %90 = getelementptr inbounds %struct.mcde, %struct.mcde* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %148

93:                                               ; preds = %82, %76, %70, %64
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.mcde*, %struct.mcde** %5, align 8
  %96 = getelementptr inbounds %struct.mcde, %struct.mcde* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = call i32 @writel(i32 %94, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.mcde*, %struct.mcde** %5, align 8
  %103 = getelementptr inbounds %struct.mcde, %struct.mcde* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @writel(i32 %101, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.mcde*, %struct.mcde** %5, align 8
  %110 = getelementptr inbounds %struct.mcde, %struct.mcde* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @writel(i32 %108, i32 %113)
  %115 = load %struct.mcde*, %struct.mcde** %5, align 8
  %116 = getelementptr inbounds %struct.mcde, %struct.mcde* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @writel(i32 0, i32 %119)
  %121 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_CONTINUE, align 4
  %122 = load i32, i32* @MCDE_DSIVIDXCMDW_CMDW_CONTINUE_SHIFT, align 4
  %123 = shl i32 %121, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %125 = load i32, i32* @MCDE_DSIVIDXCMDW_CMDW_START_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.mcde*, %struct.mcde** %5, align 8
  %131 = getelementptr inbounds %struct.mcde, %struct.mcde* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @writel(i32 %129, i32 %134)
  %136 = load %struct.mcde*, %struct.mcde** %5, align 8
  %137 = getelementptr inbounds %struct.mcde, %struct.mcde* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @writel(i32 0, i32 %140)
  %142 = load %struct.mcde*, %struct.mcde** %5, align 8
  %143 = getelementptr inbounds %struct.mcde, %struct.mcde* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i32 @writel(i32 0, i32 %146)
  br label %148

148:                                              ; preds = %93, %88
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
