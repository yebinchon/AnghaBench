; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_set_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32, i32, i32, i32, %struct.mdp5_ctl_manager* }
%struct.mdp5_ctl_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mdp5_pipeline = type { i64, %struct.mdp5_hw_mixer* }
%struct.mdp5_hw_mixer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"CTL %d cannot find LM\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported configuration\00", align 1
@MDP5_CTL_LAYER_REG_CURSOR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_ctl_set_cursor(%struct.mdp5_ctl* %0, %struct.mdp5_pipeline* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdp5_ctl*, align 8
  %7 = alloca %struct.mdp5_pipeline*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdp5_ctl_manager*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mdp5_hw_mixer*, align 8
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %6, align 8
  store %struct.mdp5_pipeline* %1, %struct.mdp5_pipeline** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %15 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %14, i32 0, i32 4
  %16 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %15, align 8
  store %struct.mdp5_ctl_manager* %16, %struct.mdp5_ctl_manager** %10, align 8
  %17 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %18 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %17, i32 0, i32 1
  %19 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %18, align 8
  store %struct.mdp5_hw_mixer* %19, %struct.mdp5_hw_mixer** %13, align 8
  %20 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %13, align 8
  %21 = icmp ne %struct.mdp5_hw_mixer* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %10, align 8
  %28 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %33 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %99

38:                                               ; preds = %4
  %39 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %7, align 8
  %40 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %10, align 8
  %45 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %99

52:                                               ; preds = %38
  %53 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %54 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %53, i32 0, i32 2
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %58 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %59 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %13, align 8
  %62 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @REG_MDP5_CTL_LAYER_REG(i32 %60, i32 %63)
  %65 = call i32 @ctl_read(%struct.mdp5_ctl* %57, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %52
  %69 = load i32, i32* @MDP5_CTL_LAYER_REG_CURSOR_OUT, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %77

72:                                               ; preds = %52
  %73 = load i32, i32* @MDP5_CTL_LAYER_REG_CURSOR_OUT, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %79 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %80 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %13, align 8
  %83 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @REG_MDP5_CTL_LAYER_REG(i32 %81, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @ctl_write(%struct.mdp5_ctl* %78, i32 %85, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %90 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %92 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %91, i32 0, i32 2
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @mdp_ctl_flush_mask_cursor(i32 %95)
  %97 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %6, align 8
  %98 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %77, %43, %26
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ctl_read(%struct.mdp5_ctl*, i32) #1

declare dso_local i32 @REG_MDP5_CTL_LAYER_REG(i32, i32) #1

declare dso_local i32 @ctl_write(%struct.mdp5_ctl*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp_ctl_flush_mask_cursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
