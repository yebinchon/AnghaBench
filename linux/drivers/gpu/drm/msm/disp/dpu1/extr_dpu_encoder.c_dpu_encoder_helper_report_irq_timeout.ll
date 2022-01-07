; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_report_irq_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_helper_report_irq_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 (i32, %struct.dpu_encoder_phys*, i32)* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"irq timeout id=%u, intf=%d, pp=%d, intr=%d\0A\00", align 1
@INTF_0 = common dso_local global i64 0, align 8
@PINGPONG_0 = common dso_local global i64 0, align 8
@DPU_ENCODER_FRAME_EVENT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_helper_report_irq_timeout(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %6 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @DRMID(i32 %7)
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INTF_0, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PINGPONG_0, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %13, i64 %20, i32 %21)
  %23 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %24 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*, i32)** %26, align 8
  %28 = icmp ne i32 (i32, %struct.dpu_encoder_phys*, i32)* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.dpu_encoder_phys*, i32)*, i32 (i32, %struct.dpu_encoder_phys*, i32)** %33, align 8
  %35 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %39 = load i32, i32* @DPU_ENCODER_FRAME_EVENT_ERROR, align 4
  %40 = call i32 %34(i32 %37, %struct.dpu_encoder_phys* %38, i32 %39)
  br label %41

41:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @DRMID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
