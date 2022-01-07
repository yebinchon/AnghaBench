; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_sgx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_psb_sgx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32 }

@_PSB_CE_TWOD_COMPLETE = common dso_local global i32 0, align 4
@PSB_CR_2D_BLIT_STATUS = common dso_local global i32 0, align 4
@_PSB_CE2_BIF_REQUESTER_FAULT = common dso_local global i32 0, align 4
@PSB_CR_BIF_INT_STAT = common dso_local global i32 0, align 4
@PSB_CR_BIF_FAULT = common dso_local global i32 0, align 4
@_PSB_CBI_STAT_PF_N_RW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SGX MMU page fault:\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"SGX MMU read / write protection fault:\00", align 1
@_PSB_CBI_STAT_FAULT_CACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\09Cache requestor\00", align 1
@_PSB_CBI_STAT_FAULT_TA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"\09TA requestor\00", align 1
@_PSB_CBI_STAT_FAULT_VDM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"\09VDM requestor\00", align 1
@_PSB_CBI_STAT_FAULT_2D = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"\092D requestor\00", align 1
@_PSB_CBI_STAT_FAULT_PBE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"\09PBE requestor\00", align 1
@_PSB_CBI_STAT_FAULT_TSP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"\09TSP requestor\00", align 1
@_PSB_CBI_STAT_FAULT_ISP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"\09ISP requestor\00", align 1
@_PSB_CBI_STAT_FAULT_USSEPDS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"\09USSEPDS requestor\00", align 1
@_PSB_CBI_STAT_FAULT_HOST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"\09Host requestor\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\09MMU failing address is 0x%08x.\0A\00", align 1
@PSB_CR_EVENT_HOST_CLEAR = common dso_local global i32 0, align 4
@PSB_CR_EVENT_HOST_CLEAR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32)* @psb_sgx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_sgx_interrupt(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_psb_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_psb_private*, %struct.drm_psb_private** %12, align 8
  store %struct.drm_psb_private* %13, %struct.drm_psb_private** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @_PSB_CE_TWOD_COMPLETE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @PSB_CR_2D_BLIT_STATUS, align 4
  %20 = call i32 @PSB_RSGX32(i32 %19)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @_PSB_CE2_BIF_REQUESTER_FAULT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %109

26:                                               ; preds = %21
  %27 = load i32, i32* @PSB_CR_BIF_INT_STAT, align 4
  %28 = call i32 @PSB_RSGX32(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @PSB_CR_BIF_FAULT, align 4
  %30 = call i32 @PSB_RSGX32(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @_PSB_CBI_STAT_PF_N_RW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @_PSB_CBI_STAT_FAULT_CACHE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @_PSB_CBI_STAT_FAULT_TA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @_PSB_CBI_STAT_FAULT_VDM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @_PSB_CBI_STAT_FAULT_2D, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @_PSB_CBI_STAT_FAULT_PBE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @_PSB_CBI_STAT_FAULT_TSP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @_PSB_CBI_STAT_FAULT_ISP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @_PSB_CBI_STAT_FAULT_USSEPDS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @_PSB_CBI_STAT_FAULT_HOST, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %106)
  store i32 1, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %26
  br label %109

109:                                              ; preds = %108, %21
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @PSB_CR_EVENT_HOST_CLEAR, align 4
  %112 = call i32 @PSB_WSGX32(i32 %110, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @PSB_CR_EVENT_HOST_CLEAR2, align 4
  %115 = call i32 @PSB_WSGX32(i32 %113, i32 %114)
  %116 = load i32, i32* @PSB_CR_EVENT_HOST_CLEAR2, align 4
  %117 = call i32 @PSB_RSGX32(i32 %116)
  ret void
}

declare dso_local i32 @PSB_RSGX32(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @PSB_WSGX32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
