; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_trigger_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_trigger_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.dpu_hw_ctl* }
%struct.dpu_hw_ctl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*)* }
%struct.dpu_hw_ctl.0 = type opaque

@.str = private unnamed_addr constant [17 x i8] c"invalid encoder\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_helper_trigger_start(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_hw_ctl*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %4 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %5 = icmp ne %struct.dpu_encoder_phys* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %9, i32 0, i32 1
  %11 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %10, align 8
  store %struct.dpu_hw_ctl* %11, %struct.dpu_hw_ctl** %3, align 8
  %12 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %13 = icmp ne %struct.dpu_hw_ctl* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.dpu_hw_ctl.0*)* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %22 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dpu_hw_ctl.0*)*, i32 (%struct.dpu_hw_ctl.0*)** %23, align 8
  %25 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %26 = bitcast %struct.dpu_hw_ctl* %25 to %struct.dpu_hw_ctl.0*
  %27 = call i32 %24(%struct.dpu_hw_ctl.0* %26)
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DRMID(i32 %30)
  %32 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %33 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @trace_dpu_enc_trigger_start(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %6, %20, %14, %8
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @trace_dpu_enc_trigger_start(i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
