; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, i32, %struct.dpu_encoder_phys**, i32, i32 }
%struct.dpu_encoder_phys = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.dpu_encoder_phys*)* }
%struct.dpu_kms = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid dev\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid dev_private\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MSM_ENC_TX_COMPLETE = common dso_local global i32 0, align 4
@DPU_ENC_RC_EVENT_PRE_STOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"enc%d timeout pending\0A\00", align 1
@DPU_ENC_RC_EVENT_STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"encoder disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dpu_encoder_virt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_virt_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.dpu_kms*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = icmp ne %struct.drm_encoder* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %154

13:                                               ; preds = %1
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %154

20:                                               ; preds = %13
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.msm_drm_private*, %struct.msm_drm_private** %24, align 8
  %26 = icmp ne %struct.msm_drm_private* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %154

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %33 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %32)
  store %struct.dpu_encoder_virt* %33, %struct.dpu_encoder_virt** %3, align 8
  %34 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %35 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %37 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %42 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store %struct.drm_display_mode* %46, %struct.drm_display_mode** %6, align 8
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %48 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.msm_drm_private*, %struct.msm_drm_private** %50, align 8
  store %struct.msm_drm_private* %51, %struct.msm_drm_private** %4, align 8
  %52 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %53 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.dpu_kms* @to_dpu_kms(i32 %54)
  store %struct.dpu_kms* %55, %struct.dpu_kms** %5, align 8
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %57 = call i32 @DRMID(%struct.drm_encoder* %56)
  %58 = call i32 @trace_dpu_enc_disable(i32 %57)
  %59 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %60 = load i32, i32* @MSM_ENC_TX_COMPLETE, align 4
  %61 = call i32 @dpu_encoder_wait_for_event(%struct.drm_encoder* %59, i32 %60)
  %62 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %63 = load i32, i32* @DPU_ENC_RC_EVENT_PRE_STOP, align 4
  %64 = call i32 @dpu_encoder_resource_control(%struct.drm_encoder* %62, i32 %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %95, %31
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %68 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %65
  %72 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %73 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %72, i32 0, i32 3
  %74 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %74, i64 %76
  %78 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %77, align 8
  store %struct.dpu_encoder_phys* %78, %struct.dpu_encoder_phys** %8, align 8
  %79 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %80 = icmp ne %struct.dpu_encoder_phys* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %71
  %82 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %83 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %84, align 8
  %86 = icmp ne i32 (%struct.dpu_encoder_phys*)* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %89 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %90, align 8
  %92 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %93 = call i32 %91(%struct.dpu_encoder_phys* %92)
  br label %94

94:                                               ; preds = %87, %81, %71
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %65

98:                                               ; preds = %65
  %99 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %100 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %99, i32 0, i32 5
  %101 = call i64 @atomic_xchg(i32* %100, i32 0)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %105 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %110 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %109, i32 0, i32 4
  %111 = call i32 @del_timer_sync(i32* %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %114 = load i32, i32* @DPU_ENC_RC_EVENT_STOP, align 4
  %115 = call i32 @dpu_encoder_resource_control(%struct.drm_encoder* %113, i32 %114)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %141, %112
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %119 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %124 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %123, i32 0, i32 3
  %125 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %125, i64 %127
  %129 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %128, align 8
  %130 = icmp ne %struct.dpu_encoder_phys* %129, null
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %133 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %132, i32 0, i32 3
  %134 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %134, i64 %136
  %138 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %137, align 8
  %139 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %131, %122
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %116

144:                                              ; preds = %116
  %145 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %146 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %148 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %147, i32 0, i32 0
  %149 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %150 = call i32 @dpu_rm_release(i32* %148, %struct.drm_encoder* %149)
  %151 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %152 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %151, i32 0, i32 2
  %153 = call i32 @mutex_unlock(i32* %152)
  br label %154

154:                                              ; preds = %144, %27, %18, %11
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local i32 @trace_dpu_enc_disable(i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @dpu_encoder_wait_for_event(%struct.drm_encoder*, i32) #1

declare dso_local i32 @dpu_encoder_resource_control(%struct.drm_encoder*, i32) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @dpu_rm_release(i32*, %struct.drm_encoder*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
