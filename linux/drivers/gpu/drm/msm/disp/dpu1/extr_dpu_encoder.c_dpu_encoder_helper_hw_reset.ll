; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, i32, %struct.dpu_hw_ctl* }
%struct.dpu_hw_ctl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*)* }
%struct.dpu_hw_ctl.0 = type opaque
%struct.dpu_encoder_virt = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"id:%u ctl %d reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ctl %d reset failure\0A\00", align 1
@DPU_ENC_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_helper_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_helper_hw_reset(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.dpu_hw_ctl*, align 8
  %5 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %12 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(i32 %13)
  store %struct.dpu_encoder_virt* %14, %struct.dpu_encoder_virt** %3, align 8
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %15, i32 0, i32 2
  %17 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %16, align 8
  store %struct.dpu_hw_ctl* %17, %struct.dpu_hw_ctl** %4, align 8
  %18 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %19 = icmp ne %struct.dpu_hw_ctl* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %22 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %23, align 8
  %25 = icmp ne i32 (%struct.dpu_hw_ctl.0*)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %10
  br label %55

27:                                               ; preds = %20
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DRMID(i32 %30)
  %32 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %33 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %37 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %38, align 8
  %40 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %41 = bitcast %struct.dpu_hw_ctl* %40 to %struct.dpu_hw_ctl.0*
  %42 = call i32 %39(%struct.dpu_hw_ctl.0* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %27
  %46 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %47 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %48 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %27
  %52 = load i32, i32* @DPU_ENC_ENABLED, align 4
  %53 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %54 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %26, %8
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
