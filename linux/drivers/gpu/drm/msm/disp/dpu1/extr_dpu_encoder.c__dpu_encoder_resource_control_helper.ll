; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_resource_control_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_resource_control_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.dpu_kms = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dpu_encoder_virt = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"encoder master not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @_dpu_encoder_resource_control_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_resource_control_helper(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.dpu_kms*, align 8
  %7 = alloca %struct.dpu_encoder_virt*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %8)
  store %struct.dpu_encoder_virt* %9, %struct.dpu_encoder_virt** %7, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %13, align 8
  store %struct.msm_drm_private* %14, %struct.msm_drm_private** %5, align 8
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %16 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.dpu_kms* @to_dpu_kms(i32 %17)
  store %struct.dpu_kms* %18, %struct.dpu_kms** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call i32 @DRMID(%struct.drm_encoder* %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @trace_dpu_enc_rc_helper(i32 %20, i32 %21)
  %23 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %24 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %48

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.dpu_kms*, %struct.dpu_kms** %6, align 8
  %34 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_get_sync(i32* %36)
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %39 = call i32 @_dpu_encoder_irq_control(%struct.drm_encoder* %38, i32 1)
  br label %48

40:                                               ; preds = %29
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %42 = call i32 @_dpu_encoder_irq_control(%struct.drm_encoder* %41, i32 0)
  %43 = load %struct.dpu_kms*, %struct.dpu_kms** %6, align 8
  %44 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @pm_runtime_put_sync(i32* %46)
  br label %48

48:                                               ; preds = %27, %40, %32
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local i32 @trace_dpu_enc_rc_helper(i32, i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @_dpu_encoder_irq_control(%struct.drm_encoder*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
