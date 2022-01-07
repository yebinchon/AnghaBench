; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_vblank_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_vblank_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_phys = type { i32 }
%struct.dpu_encoder_virt = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"encoder_vblank_callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.dpu_encoder_phys*)* @dpu_encoder_vblank_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_vblank_callback(%struct.drm_encoder* %0, %struct.dpu_encoder_phys* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca %struct.dpu_encoder_virt*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.dpu_encoder_phys* %1, %struct.dpu_encoder_phys** %4, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %5, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = icmp ne %struct.drm_encoder* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %11 = icmp ne %struct.dpu_encoder_phys* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %39

13:                                               ; preds = %9
  %14 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %15)
  store %struct.dpu_encoder_virt* %16, %struct.dpu_encoder_virt** %5, align 8
  %17 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %27 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dpu_crtc_vblank_callback(i64 %28)
  br label %30

30:                                               ; preds = %25, %13
  %31 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %32 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  %38 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dpu_crtc_vblank_callback(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
