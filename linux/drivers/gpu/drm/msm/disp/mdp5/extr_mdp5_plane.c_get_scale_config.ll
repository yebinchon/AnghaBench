; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_get_scale_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_get_scale_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_format = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_format_info = type { i32, i32 }

@SCALE_FILTER_BIL = common dso_local global i32 0, align 4
@SCALE_FILTER_PCMN = common dso_local global i32 0, align 4
@MDP5_PIPE_SCALE_CONFIG_SCALEX_EN = common dso_local global i32 0, align 4
@MDP5_PIPE_SCALE_CONFIG_SCALEY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp_format*, i32, i32, i32)* @get_scale_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scale_config(%struct.mdp_format* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdp_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mdp_format* %0, %struct.mdp_format** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mdp_format*, %struct.mdp_format** %6, align 8
  %17 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_format_info* @drm_format_info(i32 %19)
  store %struct.drm_format_info* %20, %struct.drm_format_info** %10, align 8
  %21 = load %struct.mdp_format*, %struct.mdp_format** %6, align 8
  %22 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %26, %25
  %32 = phi i32 [ 1, %25 ], [ %30, %26 ]
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mdp_format*, %struct.mdp_format** %6, align 8
  %34 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %104

39:                                               ; preds = %31
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %47 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %51 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sdiv i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @SCALE_FILTER_BIL, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @SCALE_FILTER_PCMN, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %39
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @SCALE_FILTER_BIL, align 4
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @SCALE_FILTER_PCMN, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32, i32* @MDP5_PIPE_SCALE_CONFIG_SCALEX_EN, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_0(i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_3(i32 %83)
  %85 = or i32 %82, %84
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_1_2(i32 %87)
  %89 = call i32 @COND(i32 %86, i32 %88)
  %90 = or i32 %85, %89
  store i32 %90, i32* %5, align 4
  br label %104

91:                                               ; preds = %74
  %92 = load i32, i32* @MDP5_PIPE_SCALE_CONFIG_SCALEY_EN, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_0(i32 %93)
  %95 = or i32 %92, %94
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_3(i32 %96)
  %98 = or i32 %95, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_1_2(i32 %100)
  %102 = call i32 @COND(i32 %99, i32 %101)
  %103 = or i32 %98, %102
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %91, %78, %38
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i32 @MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_0(i32) #1

declare dso_local i32 @MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_3(i32) #1

declare dso_local i32 @COND(i32, i32) #1

declare dso_local i32 @MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_1_2(i32) #1

declare dso_local i32 @MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_0(i32) #1

declare dso_local i32 @MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_3(i32) #1

declare dso_local i32 @MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_1_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
