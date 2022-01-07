; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_mdp5_cmd_encoder_set_split_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cmd_encoder.c_mdp5_cmd_encoder_set_split_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mdp5_kms = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MDP5_SPLIT_DPL_UPPER_INTF2_SW_TRG_MUX = common dso_local global i32 0, align 4
@MDP5_SPLIT_DPL_UPPER_INTF1_SW_TRG_MUX = common dso_local global i32 0, align 4
@MDP5_SPLIT_DPL_UPPER_SMART_PANEL = common dso_local global i32 0, align 4
@REG_MDP5_SPLIT_DPL_UPPER = common dso_local global i32 0, align 4
@REG_MDP5_SPLIT_DPL_LOWER = common dso_local global i32 0, align 4
@MDP5_SPLIT_DPL_LOWER_SMART_PANEL = common dso_local global i32 0, align 4
@REG_MDP5_SPLIT_DPL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_cmd_encoder_set_split_display(%struct.drm_encoder* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.mdp5_encoder*, align 8
  %7 = alloca %struct.mdp5_kms*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %11)
  store %struct.mdp5_encoder* %12, %struct.mdp5_encoder** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = icmp ne %struct.drm_encoder* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %17 = icmp ne %struct.drm_encoder* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %15
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = call %struct.mdp5_kms* @get_kms(%struct.drm_encoder* %22)
  store %struct.mdp5_kms* %23, %struct.mdp5_kms** %7, align 8
  %24 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @MDP5_SPLIT_DPL_UPPER_INTF2_SW_TRG_MUX, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %46

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @MDP5_SPLIT_DPL_UPPER_INTF1_SW_TRG_MUX, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* @MDP5_SPLIT_DPL_UPPER_SMART_PANEL, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %51 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.device* %53, %struct.device** %8, align 8
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = call i32 @pm_runtime_get_sync(%struct.device* %54)
  %56 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %57 = load i32, i32* @REG_MDP5_SPLIT_DPL_UPPER, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @mdp5_write(%struct.mdp5_kms* %56, i32 %57, i32 %58)
  %60 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %61 = load i32, i32* @REG_MDP5_SPLIT_DPL_LOWER, align 4
  %62 = load i32, i32* @MDP5_SPLIT_DPL_LOWER_SMART_PANEL, align 4
  %63 = call i32 @mdp5_write(%struct.mdp5_kms* %60, i32 %61, i32 %62)
  %64 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %65 = load i32, i32* @REG_MDP5_SPLIT_DPL_EN, align 4
  %66 = call i32 @mdp5_write(%struct.mdp5_kms* %64, i32 %65, i32 1)
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = call i32 @pm_runtime_put_sync(%struct.device* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %46, %42, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
