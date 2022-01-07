; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.sti_dvo* }
%struct.sti_dvo = type { i32, i64, i32, i32, i32, %struct.dvo_config* }
%struct.dvo_config = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DVO_DOF_CFG = common dso_local global i64 0, align 8
@DVO_AWG_DIGSYNC_CTRL = common dso_local global i64 0, align 8
@AWG_MAX_INST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to prepare/enable dvo_pix clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to prepare/enable dvo clk\0A\00", align 1
@DVO_LUT_PROG_LOW = common dso_local global i64 0, align 8
@DVO_LUT_PROG_MID = common dso_local global i64 0, align 8
@DVO_LUT_PROG_HIGH = common dso_local global i64 0, align 8
@DVO_DOF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @sti_dvo_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_dvo_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.sti_dvo*, align 8
  %4 = alloca %struct.dvo_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %10 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %11 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %10, i32 0, i32 0
  %12 = load %struct.sti_dvo*, %struct.sti_dvo** %11, align 8
  store %struct.sti_dvo* %12, %struct.sti_dvo** %3, align 8
  %13 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %14 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %13, i32 0, i32 5
  %15 = load %struct.dvo_config*, %struct.dvo_config** %14, align 8
  store %struct.dvo_config* %15, %struct.dvo_config** %4, align 8
  %16 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %18 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %119

22:                                               ; preds = %1
  %23 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %24 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DVO_DOF_CFG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  %29 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %30 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DVO_AWG_DIGSYNC_CTRL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load %struct.dvo_config*, %struct.dvo_config** %4, align 8
  %36 = getelementptr inbounds %struct.dvo_config, %struct.dvo_config* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %22
  %40 = load i32, i32* @AWG_MAX_INST, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %7, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %8, align 8
  %44 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %45 = call i32 @dvo_awg_generate_code(%struct.sti_dvo* %44, i32* %6, i32* %43)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dvo_awg_configure(%struct.sti_dvo* %48, i32* %43, i32 %49)
  br label %52

51:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %53

52:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %120 [
    i32 0, label %56
    i32 1, label %119
  ]

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %22
  %58 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %59 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @clk_prepare_enable(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %67 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @clk_prepare_enable(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %75 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @drm_panel_enable(i32 %76)
  %78 = load %struct.dvo_config*, %struct.dvo_config** %4, align 8
  %79 = getelementptr inbounds %struct.dvo_config, %struct.dvo_config* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %82 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DVO_LUT_PROG_LOW, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load %struct.dvo_config*, %struct.dvo_config** %4, align 8
  %88 = getelementptr inbounds %struct.dvo_config, %struct.dvo_config* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %91 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DVO_LUT_PROG_MID, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load %struct.dvo_config*, %struct.dvo_config** %4, align 8
  %97 = getelementptr inbounds %struct.dvo_config, %struct.dvo_config* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %100 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DVO_LUT_PROG_HIGH, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load %struct.dvo_config*, %struct.dvo_config** %4, align 8
  %106 = getelementptr inbounds %struct.dvo_config, %struct.dvo_config* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DVO_DOF_EN, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %112 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @DVO_DOF_CFG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load %struct.sti_dvo*, %struct.sti_dvo** %3, align 8
  %118 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %73, %53, %21
  ret void

120:                                              ; preds = %53
  unreachable
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dvo_awg_generate_code(%struct.sti_dvo*, i32*, i32*) #1

declare dso_local i32 @dvo_awg_configure(%struct.sti_dvo*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_panel_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
