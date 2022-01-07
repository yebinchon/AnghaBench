; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@DPU_ENC_RC_EVENT_KICKOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dpu resource control failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dpu_encoder_virt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_virt_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = icmp ne %struct.drm_encoder* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %98

10:                                               ; preds = %1
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %11)
  store %struct.dpu_encoder_virt* %12, %struct.dpu_encoder_virt** %3, align 8
  %13 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %5, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %24 = call i32 @DRMID(%struct.drm_encoder* %23)
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @trace_dpu_enc_enable(i32 %24, i32 %27, i32 %30)
  %32 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %32, i32 0, i32 3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %10
  %37 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_14__*)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %46 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %45, i32 0, i32 3
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %49, align 8
  %51 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %52 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %51, i32 0, i32 3
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_14__* %53)
  br label %55

55:                                               ; preds = %44, %36, %10
  %56 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %57 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %56, i32 0, i32 2
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %62 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %65, align 8
  %67 = icmp ne i32 (%struct.TYPE_13__*)* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %70 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %69, i32 0, i32 2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %73, align 8
  %75 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %76 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %75, i32 0, i32 2
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = call i32 %74(%struct.TYPE_13__* %77)
  br label %79

79:                                               ; preds = %68, %60, %55
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %81 = load i32, i32* @DPU_ENC_RC_EVENT_KICKOFF, align 4
  %82 = call i32 @dpu_encoder_resource_control(%struct.drm_encoder* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %94

89:                                               ; preds = %79
  %90 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %91 = call i32 @_dpu_encoder_virt_enable_helper(%struct.drm_encoder* %90)
  %92 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %93 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %85
  %95 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %96 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  br label %98

98:                                               ; preds = %94, %8
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trace_dpu_enc_enable(i32, i32, i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @dpu_encoder_resource_control(%struct.drm_encoder*, i32) #1

declare dso_local i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt*, i8*, i32) #1

declare dso_local i32 @_dpu_encoder_virt_enable_helper(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
