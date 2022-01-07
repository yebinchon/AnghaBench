; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_virt_enable_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_virt_enable_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32)* }
%struct.dpu_kms = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid dpu_kms\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid dpu encoder/master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @_dpu_encoder_virt_enable_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_virt_enable_helper(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.dpu_kms*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %3, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = icmp ne %struct.drm_encoder* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %17, align 8
  %19 = icmp ne %struct.msm_drm_private* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13, %8, %1
  %21 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %88

22:                                               ; preds = %13
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %24 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.msm_drm_private*, %struct.msm_drm_private** %26, align 8
  store %struct.msm_drm_private* %27, %struct.msm_drm_private** %4, align 8
  %28 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %29 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.dpu_kms* @to_dpu_kms(i32 %30)
  store %struct.dpu_kms* %31, %struct.dpu_kms** %5, align 8
  %32 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %33 = icmp ne %struct.dpu_kms* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %22
  %35 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %88

36:                                               ; preds = %22
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %38 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %37)
  store %struct.dpu_encoder_virt* %38, %struct.dpu_encoder_virt** %3, align 8
  %39 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %40 = icmp ne %struct.dpu_encoder_virt* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %43 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41, %36
  %47 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %88

48:                                               ; preds = %41
  %49 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %50 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %83

55:                                               ; preds = %48
  %56 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %57 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_8__*, i32)* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %67 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %72, align 8
  %74 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %75 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %80 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 %73(%struct.TYPE_8__* %78, i32 %81)
  br label %83

83:                                               ; preds = %65, %55, %48
  %84 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %85 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %86 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %85, i32 0, i32 0
  %87 = call i32 @_dpu_encoder_update_vsync_source(%struct.dpu_encoder_virt* %84, i32* %86)
  br label %88

88:                                               ; preds = %83, %46, %34, %20
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @_dpu_encoder_update_vsync_source(%struct.dpu_encoder_virt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
