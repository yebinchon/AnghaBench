; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_psr_event_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_psr_event_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"PSR exit events: 0x%x\0A\00", align 1
@PSR_EVENT_PSR2_WD_TIMER_EXPIRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\09PSR2 watchdog timer expired\0A\00", align 1
@PSR_EVENT_PSR2_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09PSR2 disabled\0A\00", align 1
@PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"\09SU dirty FIFO underrun\0A\00", align 1
@PSR_EVENT_SU_CRC_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"\09SU CRC FIFO underrun\0A\00", align 1
@PSR_EVENT_GRAPHICS_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"\09Graphics reset\0A\00", align 1
@PSR_EVENT_PCH_INTERRUPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"\09PCH interrupt\0A\00", align 1
@PSR_EVENT_MEMORY_UP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"\09Memory up\0A\00", align 1
@PSR_EVENT_FRONT_BUFFER_MODIFY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"\09Front buffer modification\0A\00", align 1
@PSR_EVENT_WD_TIMER_EXPIRE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"\09PSR watchdog timer expired\0A\00", align 1
@PSR_EVENT_PIPE_REGISTERS_UPDATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"\09PIPE registers updated\0A\00", align 1
@PSR_EVENT_REGISTER_UPDATE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"\09Register updated\0A\00", align 1
@PSR_EVENT_HDCP_ENABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"\09HDCP enabled\0A\00", align 1
@PSR_EVENT_KVMR_SESSION_ENABLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"\09KVMR session enabled\0A\00", align 1
@PSR_EVENT_VBI_ENABLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"\09VBI enabled\0A\00", align 1
@PSR_EVENT_LPSP_MODE_EXIT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"\09LPSP mode exited\0A\00", align 1
@PSR_EVENT_PSR_DISABLE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"\09PSR disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @psr_event_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psr_event_print(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PSR_EVENT_PSR2_WD_TIMER_EXPIRE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PSR_EVENT_PSR2_DISABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18, %13
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PSR_EVENT_SU_CRC_FIFO_UNDERRUN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PSR_EVENT_GRAPHICS_RESET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PSR_EVENT_PCH_INTERRUPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PSR_EVENT_MEMORY_UP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PSR_EVENT_FRONT_BUFFER_MODIFY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @PSR_EVENT_WD_TIMER_EXPIRE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @PSR_EVENT_PIPE_REGISTERS_UPDATE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @PSR_EVENT_REGISTER_UPDATE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @PSR_EVENT_HDCP_ENABLE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @PSR_EVENT_KVMR_SESSION_ENABLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @PSR_EVENT_VBI_ENABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @PSR_EVENT_LPSP_MODE_EXIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @PSR_EVENT_PSR_DISABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %119, %114
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
