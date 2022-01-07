; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"failed to disable the panel\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to do link train, ret=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"can not enable scramble\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to config video\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable the panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_commit(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %5 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %6 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @drm_panel_disable(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %24 = call i32 @analogix_dp_train_link(%struct.analogix_dp_device* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %29 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %99

34:                                               ; preds = %22
  %35 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %36 = call i32 @analogix_dp_enable_scramble(%struct.analogix_dp_device* %35, i32 1)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %41 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %34
  %46 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %47 = call i32 @analogix_dp_init_video(%struct.analogix_dp_device* %46)
  %48 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %49 = call i32 @analogix_dp_config_video(%struct.analogix_dp_device* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %54 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %99

58:                                               ; preds = %45
  %59 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %60 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %67 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @drm_panel_enable(i64 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %99

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %80 = call i32 @analogix_dp_fast_link_train_detection(%struct.analogix_dp_device* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %99

85:                                               ; preds = %78
  %86 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %87 = call i64 @analogix_dp_detect_sink_psr(%struct.analogix_dp_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %91 = call i32 @analogix_dp_enable_sink_psr(%struct.analogix_dp_device* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %94, %83, %74, %52, %39, %27
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @drm_panel_disable(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @analogix_dp_train_link(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @analogix_dp_enable_scramble(%struct.analogix_dp_device*, i32) #1

declare dso_local i32 @analogix_dp_init_video(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_config_video(%struct.analogix_dp_device*) #1

declare dso_local i32 @drm_panel_enable(i64) #1

declare dso_local i32 @analogix_dp_fast_link_train_detection(%struct.analogix_dp_device*) #1

declare dso_local i64 @analogix_dp_detect_sink_psr(%struct.analogix_dp_device*) #1

declare dso_local i32 @analogix_dp_enable_sink_psr(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
