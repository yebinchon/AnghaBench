; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_mdp4_lcdc_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_lcdc_encoder.c_mdp4_lcdc_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.mdp4_lcdc_encoder = type { i32, i32*, i32, i32 }
%struct.mdp4_kms = type { i32 }
%struct.drm_panel = type { i32 }

@REG_MDP4_LCDC_ENABLE = common dso_local global i32 0, align 4
@MDP4_IRQ_PRIMARY_VSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to disable regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @mdp4_lcdc_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_lcdc_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mdp4_lcdc_encoder*, align 8
  %5 = alloca %struct.mdp4_kms*, align 8
  %6 = alloca %struct.drm_panel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %13 = call %struct.mdp4_lcdc_encoder* @to_mdp4_lcdc_encoder(%struct.drm_encoder* %12)
  store %struct.mdp4_lcdc_encoder* %13, %struct.mdp4_lcdc_encoder** %4, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = call %struct.mdp4_kms* @get_kms(%struct.drm_encoder* %14)
  store %struct.mdp4_kms* %15, %struct.mdp4_kms** %5, align 8
  %16 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %83

25:                                               ; preds = %1
  %26 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %27 = load i32, i32* @REG_MDP4_LCDC_ENABLE, align 4
  %28 = call i32 @mdp4_write(%struct.mdp4_kms* %26, i32 %27, i32 0)
  %29 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.drm_panel* @of_drm_find_panel(i32 %31)
  store %struct.drm_panel* %32, %struct.drm_panel** %6, align 8
  %33 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %34 = call i32 @IS_ERR(%struct.drm_panel* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %38 = call i32 @drm_panel_disable(%struct.drm_panel* %37)
  %39 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %40 = call i32 @drm_panel_unprepare(%struct.drm_panel* %39)
  br label %41

41:                                               ; preds = %36, %25
  %42 = load %struct.mdp4_kms*, %struct.mdp4_kms** %5, align 8
  %43 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %42, i32 0, i32 0
  %44 = load i32, i32* @MDP4_IRQ_PRIMARY_VSYNC, align 4
  %45 = call i32 @mdp_irq_wait(i32* %43, i32 %44)
  %46 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %47 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %75, %41
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %53 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %50
  %58 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %59 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @regulator_disable(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @DRM_DEV_ERROR(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %80 = call i32 @bs_set(%struct.mdp4_lcdc_encoder* %79, i32 0)
  %81 = load %struct.mdp4_lcdc_encoder*, %struct.mdp4_lcdc_encoder** %4, align 8
  %82 = getelementptr inbounds %struct.mdp4_lcdc_encoder, %struct.mdp4_lcdc_encoder* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %24
  ret void
}

declare dso_local %struct.mdp4_lcdc_encoder* @to_mdp4_lcdc_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(i32) #1

declare dso_local i32 @IS_ERR(%struct.drm_panel*) #1

declare dso_local i32 @drm_panel_disable(%struct.drm_panel*) #1

declare dso_local i32 @drm_panel_unprepare(%struct.drm_panel*) #1

declare dso_local i32 @mdp_irq_wait(i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @bs_set(%struct.mdp4_lcdc_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
