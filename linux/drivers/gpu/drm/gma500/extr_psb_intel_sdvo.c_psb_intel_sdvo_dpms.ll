; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.psb_intel_sdvo = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"DPMS_ON\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"DPMS_OFF\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DPMS: %d\00", align 1
@SDVO_ENABLE = common dso_local global i32 0, align 4
@SDVO_CMD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"First %s output reported failure to sync\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @psb_intel_sdvo_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.psb_intel_sdvo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder* %16)
  store %struct.psb_intel_sdvo* %17, %struct.psb_intel_sdvo** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call i64 @IS_MRST(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %28 [
    i32 128, label %24
    i32 129, label %26
  ]

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %31

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %26, %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %36 = call i32 @psb_intel_sdvo_set_active_outputs(%struct.psb_intel_sdvo* %35, i32 0)
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 129
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %44 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_READ_AUX(i32 %45)
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %39
  %48 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %49 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @REG_READ(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SDVO_ENABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SDVO_ENABLE, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 @psb_intel_sdvo_write_sdvox(%struct.psb_intel_sdvo* %58, i32 %62)
  br label %64

64:                                               ; preds = %57, %52
  br label %65

65:                                               ; preds = %64, %34
  br label %119

66:                                               ; preds = %31
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %71 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_READ_AUX(i32 %72)
  store i32 %73, i32* %7, align 4
  br label %79

74:                                               ; preds = %66
  %75 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %76 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @REG_READ(i32 %77)
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @SDVO_ENABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SDVO_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @psb_intel_sdvo_write_sdvox(%struct.psb_intel_sdvo* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %79
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %97, %90
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %96 = call i32 @gma_wait_for_vblank(%struct.drm_device* %95)
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %91

100:                                              ; preds = %91
  %101 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %102 = call i64 @psb_intel_sdvo_get_trained_inputs(%struct.psb_intel_sdvo* %101, i32* %10, i32* %11)
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* @SDVO_CMD_STATUS_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %111 = call i32 @SDVO_NAME(%struct.psb_intel_sdvo* %110)
  %112 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %106, %100
  %114 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %115 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %6, align 8
  %116 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @psb_intel_sdvo_set_active_outputs(%struct.psb_intel_sdvo* %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %65
  ret void
}

declare dso_local %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder*) #1

declare dso_local i64 @IS_MRST(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @psb_intel_sdvo_set_active_outputs(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @REG_READ_AUX(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @psb_intel_sdvo_write_sdvox(%struct.psb_intel_sdvo*, i32) #1

declare dso_local i32 @gma_wait_for_vblank(%struct.drm_device*) #1

declare dso_local i64 @psb_intel_sdvo_get_trained_inputs(%struct.psb_intel_sdvo*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @SDVO_NAME(%struct.psb_intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
