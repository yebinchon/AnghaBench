; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_lvds.c_psb_intel_lvds_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32, i64 }
%struct.drm_psb_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gma_encoder = type { i64 }
%struct.psb_intel_lvds_priv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@LVDSPP_ON = common dso_local global i32 0, align 4
@LVDSPP_OFF = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@PP_CONTROL = common dso_local global i32 0, align 4
@PP_CYCLE = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@PFIT_CONTROL = common dso_local global i32 0, align 4
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@BACKLIGHT_DUTY_CYCLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"(0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @psb_intel_lvds_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_lvds_save(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca %struct.psb_intel_lvds_priv*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.drm_psb_private*
  store %struct.drm_psb_private* %13, %struct.drm_psb_private** %4, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %15 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %14)
  store %struct.gma_encoder* %15, %struct.gma_encoder** %5, align 8
  %16 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.psb_intel_lvds_priv*
  store %struct.psb_intel_lvds_priv* %19, %struct.psb_intel_lvds_priv** %6, align 8
  %20 = load i32, i32* @LVDSPP_ON, align 4
  %21 = call i8* @REG_READ(i32 %20)
  %22 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %23 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @LVDSPP_OFF, align 4
  %25 = call i8* @REG_READ(i32 %24)
  %26 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %27 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @LVDS, align 4
  %29 = call i8* @REG_READ(i32 %28)
  %30 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %31 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @PP_CONTROL, align 4
  %33 = call i8* @REG_READ(i32 %32)
  %34 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %35 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @PP_CYCLE, align 4
  %37 = call i8* @REG_READ(i32 %36)
  %38 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %39 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @BLC_PWM_CTL, align 4
  %41 = call i8* @REG_READ(i32 %40)
  %42 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %43 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @PFIT_CONTROL, align 4
  %45 = call i8* @REG_READ(i32 %44)
  %46 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %47 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %49 = call i8* @REG_READ(i32 %48)
  %50 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %51 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %53 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BACKLIGHT_DUTY_CYCLE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %59 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %61 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %1
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = call i32 @psb_intel_lvds_get_max_backlight(%struct.drm_device* %65)
  %67 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %68 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %1
  %70 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %74 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %77 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %80 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %83 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %86 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.psb_intel_lvds_priv*, %struct.psb_intel_lvds_priv** %6, align 8
  %89 = getelementptr inbounds %struct.psb_intel_lvds_priv, %struct.psb_intel_lvds_priv* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %75, i8* %78, i8* %81, i8* %84, i8* %87, i8* %90)
  ret void
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i8* @REG_READ(i32) #1

declare dso_local i32 @psb_intel_lvds_get_max_backlight(%struct.drm_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
