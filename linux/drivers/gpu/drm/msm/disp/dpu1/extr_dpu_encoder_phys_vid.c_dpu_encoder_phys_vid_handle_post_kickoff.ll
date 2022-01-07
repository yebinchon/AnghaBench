; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_handle_post_kickoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_handle_post_kickoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@DPU_ENC_ENABLING = common dso_local global i64 0, align 8
@INTF_0 = common dso_local global i64 0, align 8
@DPU_ENC_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_vid_handle_post_kickoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_handle_post_kickoff(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca i64, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %4 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %5 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DPU_ENC_ENABLING, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DRMID(i32 %12)
  %14 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INTF_0, align 8
  %20 = sub nsw i64 %18, %19
  %21 = call i32 @trace_dpu_enc_phys_vid_post_kickoff(i32 %13, i64 %20)
  %22 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %23 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_lock_irqsave(i32 %24, i64 %25)
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %28 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %31, align 8
  %33 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 %32(%struct.TYPE_4__* %35, i32 1)
  %37 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  %42 = load i64, i64* @DPU_ENC_ENABLED, align 8
  %43 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @trace_dpu_enc_phys_vid_post_kickoff(i32, i64) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
