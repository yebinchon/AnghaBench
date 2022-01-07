; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_vid_encoder_set_split_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_encoder.c_mdp5_vid_encoder_set_split_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_encoder = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mdp5_kms = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MDP5_SPLIT_DPL_LOWER_INTF2_TG_SYNC = common dso_local global i32 0, align 4
@MDP5_SPLIT_DPL_LOWER_INTF1_TG_SYNC = common dso_local global i32 0, align 4
@REG_MDP5_SPLIT_DPL_UPPER = common dso_local global i32 0, align 4
@REG_MDP5_SPLIT_DPL_LOWER = common dso_local global i32 0, align 4
@REG_MDP5_SPLIT_DPL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_vid_encoder_set_split_display(%struct.drm_encoder* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.mdp5_encoder*, align 8
  %7 = alloca %struct.mdp5_encoder*, align 8
  %8 = alloca %struct.mdp5_kms*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %12)
  store %struct.mdp5_encoder* %13, %struct.mdp5_encoder** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %15 = call %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder* %14)
  store %struct.mdp5_encoder* %15, %struct.mdp5_encoder** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = icmp ne %struct.drm_encoder* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %20 = icmp ne %struct.drm_encoder* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %18
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %26 = call %struct.mdp5_kms* @get_kms(%struct.drm_encoder* %25)
  store %struct.mdp5_kms* %26, %struct.mdp5_kms** %8, align 8
  %27 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32, i32* @MDP5_SPLIT_DPL_LOWER_INTF2_TG_SYNC, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %49

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @MDP5_SPLIT_DPL_LOWER_INTF1_TG_SYNC, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %75

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.mdp5_kms*, %struct.mdp5_kms** %8, align 8
  %51 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.device* %53, %struct.device** %9, align 8
  %54 = load %struct.device*, %struct.device** %9, align 8
  %55 = call i32 @pm_runtime_get_sync(%struct.device* %54)
  %56 = load %struct.mdp5_kms*, %struct.mdp5_kms** %8, align 8
  %57 = load i32, i32* @REG_MDP5_SPLIT_DPL_UPPER, align 4
  %58 = call i32 @mdp5_write(%struct.mdp5_kms* %56, i32 %57, i32 0)
  %59 = load %struct.mdp5_kms*, %struct.mdp5_kms** %8, align 8
  %60 = load i32, i32* @REG_MDP5_SPLIT_DPL_LOWER, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @mdp5_write(%struct.mdp5_kms* %59, i32 %60, i32 %61)
  %63 = load %struct.mdp5_kms*, %struct.mdp5_kms** %8, align 8
  %64 = load i32, i32* @REG_MDP5_SPLIT_DPL_EN, align 4
  %65 = call i32 @mdp5_write(%struct.mdp5_kms* %63, i32 %64, i32 1)
  %66 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %6, align 8
  %67 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mdp5_encoder*, %struct.mdp5_encoder** %7, align 8
  %70 = getelementptr inbounds %struct.mdp5_encoder, %struct.mdp5_encoder* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mdp5_ctl_pair(i32 %68, i32 %71, i32 1)
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = call i32 @pm_runtime_put_sync(%struct.device* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %49, %45, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.mdp5_encoder* @to_mdp5_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_encoder*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @mdp5_ctl_pair(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
