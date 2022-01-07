; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_trigger_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c__dpu_encoder_trigger_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.dpu_encoder_phys.0*)* }
%struct.dpu_encoder_phys.0 = type opaque

@.str = private unnamed_addr constant [21 x i8] c"invalid argument(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid pingpong hw\0A\00", align 1
@DPU_ENC_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @_dpu_encoder_trigger_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_trigger_start(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %3 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %4 = icmp ne %struct.dpu_encoder_phys* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %34

7:                                                ; preds = %1
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %34

14:                                               ; preds = %7
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dpu_encoder_phys.0*)*, i32 (%struct.dpu_encoder_phys.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.dpu_encoder_phys.0*)* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DPU_ENC_DISABLED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %28 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dpu_encoder_phys.0*)*, i32 (%struct.dpu_encoder_phys.0*)** %29, align 8
  %31 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %32 = bitcast %struct.dpu_encoder_phys* %31 to %struct.dpu_encoder_phys.0*
  %33 = call i32 %30(%struct.dpu_encoder_phys.0* %32)
  br label %34

34:                                               ; preds = %5, %12, %26, %20, %14
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
