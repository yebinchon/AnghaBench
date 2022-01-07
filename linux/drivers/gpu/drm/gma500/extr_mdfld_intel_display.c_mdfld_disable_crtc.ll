; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld_disable_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfld_disable_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_offset* }
%struct.psb_offset = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"pipe = %d\0A\00", align 1
@HS_CTRL_FIFO_EMPTY = common dso_local global i32 0, align 4
@HS_DATA_FIFO_EMPTY = common dso_local global i32 0, align 4
@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@PIPEACONF_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_PLANE_OFF = common dso_local global i32 0, align 4
@PIPECONF_CURSOR_OFF = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@PIPEACONF = common dso_local global i32 0, align 4
@PIPECCONF = common dso_local global i32 0, align 4
@MDFLD_PWR_GATE_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_disable_crtc(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_psb_private*, align 8
  %6 = alloca %struct.psb_offset*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %5, align 8
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 0
  %13 = load %struct.psb_offset*, %struct.psb_offset** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %13, i64 %15
  store %struct.psb_offset* %16, %struct.psb_offset** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MIPI_GEN_FIFO_STAT_REG(i32 %26)
  %28 = load i32, i32* @HS_CTRL_FIFO_EMPTY, align 4
  %29 = load i32, i32* @HS_DATA_FIFO_EMPTY, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mdfld_dsi_gen_fifo_ready(%struct.drm_device* %25, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %34 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @REG_READ(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %32
  %42 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %43 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = call i32 @REG_WRITE(i32 %44, i32 %48)
  %50 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %51 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %54 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @REG_READ(i32 %55)
  %57 = call i32 @REG_WRITE(i32 %52, i32 %56)
  %58 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %59 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @REG_READ(i32 %60)
  br label %62

62:                                               ; preds = %41, %32
  %63 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %64 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @REG_READ(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %62
  %72 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @PIPECONF_PLANE_OFF, align 4
  %77 = load i32, i32* @PIPECONF_CURSOR_OFF, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %82 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @REG_WRITE(i32 %83, i32 %84)
  %86 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %87 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @REG_READ(i32 %88)
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @mdfldWaitForPipeDisable(%struct.drm_device* %90, i32 %91)
  br label %93

93:                                               ; preds = %71, %62
  %94 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %95 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @REG_READ(i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %93
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i32, i32* @PIPEACONF, align 4
  %107 = call i32 @REG_READ(i32 %106)
  %108 = load i32, i32* @PIPECCONF, align 4
  %109 = call i32 @REG_READ(i32 %108)
  %110 = or i32 %107, %109
  %111 = load i32, i32* @PIPEACONF_ENABLE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105, %102
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %146

117:                                              ; preds = %114, %105
  %118 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %123 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @REG_WRITE(i32 %124, i32 %125)
  %127 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %128 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @REG_READ(i32 %129)
  %131 = call i32 @udelay(i32 500)
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @MDFLD_PWR_GATE_EN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %117
  %137 = load %struct.psb_offset*, %struct.psb_offset** %6, align 8
  %138 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @MDFLD_PWR_GATE_EN, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @REG_WRITE(i32 %139, i32 %142)
  %144 = call i32 @udelay(i32 5000)
  br label %145

145:                                              ; preds = %136, %117
  br label %146

146:                                              ; preds = %145, %114
  br label %147

147:                                              ; preds = %146, %93
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mdfld_dsi_gen_fifo_ready(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @MIPI_GEN_FIFO_STAT_REG(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @mdfldWaitForPipeDisable(%struct.drm_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
