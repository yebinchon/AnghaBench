; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_underrun_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_underrun_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_phys = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"encoder_underrun_callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.dpu_encoder_phys*)* @dpu_encoder_underrun_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_underrun_callback(%struct.drm_encoder* %0, %struct.dpu_encoder_phys* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.dpu_encoder_phys* %1, %struct.dpu_encoder_phys** %4, align 8
  %5 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %6 = icmp ne %struct.dpu_encoder_phys* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %20

8:                                                ; preds = %2
  %9 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = call i32 @DRMID(%struct.drm_encoder* %13)
  %15 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = call i32 @trace_dpu_enc_underrun_cb(i32 %14, i32 %17)
  %19 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_dpu_enc_underrun_cb(i32, i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
