; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_mid_enable_pipe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_mid_enable_pipe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32, i32 }

@PSB_INT_MASK_R = common dso_local global i32 0, align 4
@PSB_INT_ENABLE_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, i32)* @mid_enable_pipe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mid_enable_pipe_event(%struct.drm_psb_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @gma_power_begin(i32 %8, i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mid_pipe_event(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @PSB_INT_MASK_R, align 4
  %24 = call i32 @PSB_WVDC32(i32 %22, i32 %23)
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PSB_INT_ENABLE_R, align 4
  %29 = call i32 @PSB_WVDC32(i32 %27, i32 %28)
  %30 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gma_power_end(i32 %32)
  br label %34

34:                                               ; preds = %11, %2
  ret void
}

declare dso_local i64 @gma_power_begin(i32, i32) #1

declare dso_local i32 @mid_pipe_event(i32) #1

declare dso_local i32 @PSB_WVDC32(i32, i32) #1

declare dso_local i32 @gma_power_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
