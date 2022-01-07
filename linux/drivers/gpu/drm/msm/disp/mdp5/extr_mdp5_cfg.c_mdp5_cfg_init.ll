; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cfg.c_mdp5_cfg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_cfg.c_mdp5_cfg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_cfg_handler = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mdp5_kms = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.mdp5_cfg_platform = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cfg_handlers_v1 = common dso_local global %struct.mdp5_cfg_handler* null, align 8
@cfg_handlers_v3 = common dso_local global %struct.mdp5_cfg_handler* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"unexpected MDP major version: v%d.%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@mdp5_cfg = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"unexpected MDP minor revision: v%d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MDP5: %s hw config selected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mdp5_cfg_handler* @mdp5_cfg_init(%struct.mdp5_kms* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mdp5_cfg_handler*, align 8
  %5 = alloca %struct.mdp5_kms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.mdp5_cfg_handler*, align 8
  %11 = alloca %struct.mdp5_cfg_handler*, align 8
  %12 = alloca %struct.mdp5_cfg_platform*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %17 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %8, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.platform_device* @to_platform_device(i32 %21)
  store %struct.platform_device* %22, %struct.platform_device** %9, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mdp5_cfg_handler* @kzalloc(i32 24, i32 %23)
  store %struct.mdp5_cfg_handler* %24, %struct.mdp5_cfg_handler** %10, align 8
  %25 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %10, align 8
  %26 = icmp ne %struct.mdp5_cfg_handler* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %14, align 4
  br label %115

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %44 [
    i32 1, label %36
    i32 3, label %40
  ]

36:                                               ; preds = %34
  %37 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** @cfg_handlers_v1, align 8
  store %struct.mdp5_cfg_handler* %37, %struct.mdp5_cfg_handler** %11, align 8
  %38 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** @cfg_handlers_v1, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.mdp5_cfg_handler* %38)
  store i32 %39, i32* %15, align 4
  br label %53

40:                                               ; preds = %34
  %41 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** @cfg_handlers_v3, align 8
  store %struct.mdp5_cfg_handler* %41, %struct.mdp5_cfg_handler** %11, align 8
  %42 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** @cfg_handlers_v3, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.mdp5_cfg_handler* %42)
  store i32 %43, i32* %15, align 4
  br label %53

44:                                               ; preds = %34
  %45 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @DRM_DEV_ERROR(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %115

53:                                               ; preds = %40, %36
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mdp5_cfg_handler, %struct.mdp5_cfg_handler* %59, i64 %61
  %63 = getelementptr inbounds %struct.mdp5_cfg_handler, %struct.mdp5_cfg_handler* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %76

68:                                               ; preds = %58
  %69 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mdp5_cfg_handler, %struct.mdp5_cfg_handler* %69, i64 %71
  %73 = getelementptr inbounds %struct.mdp5_cfg_handler, %struct.mdp5_cfg_handler* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  store %struct.TYPE_4__* %75, %struct.TYPE_4__** @mdp5_cfg, align 8
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %54

79:                                               ; preds = %68, %54
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mdp5_cfg, align 8
  %81 = icmp ne %struct.TYPE_4__* %80, null
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @DRM_DEV_ERROR(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @ENXIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %115

95:                                               ; preds = %79
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %10, align 8
  %98 = getelementptr inbounds %struct.mdp5_cfg_handler, %struct.mdp5_cfg_handler* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mdp5_cfg, align 8
  %100 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %10, align 8
  %101 = getelementptr inbounds %struct.mdp5_cfg_handler, %struct.mdp5_cfg_handler* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %102, align 8
  %103 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %104 = call %struct.mdp5_cfg_platform* @mdp5_get_config(%struct.platform_device* %103)
  store %struct.mdp5_cfg_platform* %104, %struct.mdp5_cfg_platform** %12, align 8
  %105 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %10, align 8
  %106 = getelementptr inbounds %struct.mdp5_cfg_handler, %struct.mdp5_cfg_handler* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.mdp5_cfg_platform*, %struct.mdp5_cfg_platform** %12, align 8
  %109 = call i32 @memcpy(i32* %107, %struct.mdp5_cfg_platform* %108, i32 4)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mdp5_cfg, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %10, align 8
  store %struct.mdp5_cfg_handler* %114, %struct.mdp5_cfg_handler** %4, align 8
  br label %124

115:                                              ; preds = %86, %44, %31
  %116 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %10, align 8
  %117 = icmp ne %struct.mdp5_cfg_handler* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %10, align 8
  %120 = call i32 @mdp5_cfg_destroy(%struct.mdp5_cfg_handler* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %14, align 4
  %123 = call %struct.mdp5_cfg_handler* @ERR_PTR(i32 %122)
  store %struct.mdp5_cfg_handler* %123, %struct.mdp5_cfg_handler** %4, align 8
  br label %124

124:                                              ; preds = %121, %95
  %125 = load %struct.mdp5_cfg_handler*, %struct.mdp5_cfg_handler** %4, align 8
  ret %struct.mdp5_cfg_handler* %125
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.mdp5_cfg_handler* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mdp5_cfg_handler*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

declare dso_local %struct.mdp5_cfg_platform* @mdp5_get_config(%struct.platform_device*) #1

declare dso_local i32 @memcpy(i32*, %struct.mdp5_cfg_platform*, i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @mdp5_cfg_destroy(%struct.mdp5_cfg_handler*) #1

declare dso_local %struct.mdp5_cfg_handler* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
