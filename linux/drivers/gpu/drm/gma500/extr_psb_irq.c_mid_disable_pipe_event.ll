; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_mid_disable_pipe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_irq.c_mid_disable_pipe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i64*, i32, i32 }

@PSB_INT_MASK_R = common dso_local global i32 0, align 4
@PSB_INT_ENABLE_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, i32)* @mid_disable_pipe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mid_disable_pipe_event(%struct.drm_psb_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @gma_power_begin(i32 %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mid_pipe_event(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @PSB_INT_MASK_R, align 4
  %34 = call i32 @PSB_WVDC32(i32 %32, i32 %33)
  %35 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PSB_INT_ENABLE_R, align 4
  %39 = call i32 @PSB_WVDC32(i32 %37, i32 %38)
  %40 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %41 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gma_power_end(i32 %42)
  br label %44

44:                                               ; preds = %20, %14
  br label %45

45:                                               ; preds = %44, %2
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
