; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.gma_encoder = type { i64 }
%struct.psb_intel_lvds_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"(0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x)\0A\00", align 1
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@LVDSPP_ON = common dso_local global i32 0, align 4
@LVDSPP_OFF = common dso_local global i32 0, align 4
@PP_CYCLE = common dso_local global i32 0, align 4
@PP_CONTROL = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@PP_STATUS = common dso_local global i32 0, align 4
@PP_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @psb_intel_lvds_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_lvds_restore(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca %struct.psb_intel_lvds_priv*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %10)
  store %struct.gma_encoder* %11, %struct.gma_encoder** %5, align 8
  %12 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.psb_intel_lvds_priv*
  store %struct.psb_intel_lvds_priv* %15, %struct.psb_intel_lvds_priv** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %20 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %23 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %26 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %29 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %32 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %35 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* @BLC_PWM_CTL, align 4
  %39 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %40 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_WRITE(i32 %38, i32 %41)
  %43 = load i32, i32* @PFIT_CONTROL, align 4
  %44 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %45 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @REG_WRITE(i32 %43, i32 %46)
  %48 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %49 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %50 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @REG_WRITE(i32 %48, i32 %51)
  %53 = load i32, i32* @LVDSPP_ON, align 4
  %54 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %55 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REG_WRITE(i32 %53, i32 %56)
  %58 = load i32, i32* @LVDSPP_OFF, align 4
  %59 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %60 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @REG_WRITE(i32 %58, i32 %61)
  %63 = load i32, i32* @PP_CYCLE, align 4
  %64 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %65 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_WRITE(i32 %63, i32 %66)
  %68 = load i32, i32* @PP_CONTROL, align 4
  %69 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %70 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @REG_WRITE(i32 %68, i32 %71)
  %73 = load i32, i32* @LVDS, align 4
  %74 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %75 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @REG_WRITE(i32 %73, i32 %76)
  %78 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %79 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @POWER_TARGET_ON, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %1
  %85 = load i32, i32* @PP_CONTROL, align 4
  %86 = load i32, i32* @PP_CONTROL, align 4
  %87 = call i32 @REG_READ(i32 %86)
  %88 = load i32, i32* @POWER_TARGET_ON, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @REG_WRITE(i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %94, %84
  %92 = load i32, i32* @PP_STATUS, align 4
  %93 = call i32 @REG_READ(i32 %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @PP_ON, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %91, label %99

99:                                               ; preds = %94
  br label %117

100:                                              ; preds = %1
  %101 = load i32, i32* @PP_CONTROL, align 4
  %102 = load i32, i32* @PP_CONTROL, align 4
  %103 = call i32 @REG_READ(i32 %102)
  %104 = load i32, i32* @POWER_TARGET_ON, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = call i32 @REG_WRITE(i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %111, %100
  %109 = load i32, i32* @PP_STATUS, align 4
  %110 = call i32 @REG_READ(i32 %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @PP_ON, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %108, label %116

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %99
  ret void
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
