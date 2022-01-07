; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_adrenoadreno_gpu.h_OUT_PKT7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_adrenoadreno_gpu.h_OUT_PKT7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_ringbuffer = type { i32 }

@CP_TYPE7_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_ringbuffer*, i32, i32)* @OUT_PKT7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OUT_PKT7(%struct.msm_ringbuffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_ringbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msm_ringbuffer* %0, %struct.msm_ringbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, 1
  %10 = call i32 @adreno_wait_ring(%struct.msm_ringbuffer* %7, i32 %9)
  %11 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %4, align 8
  %12 = load i32, i32* @CP_TYPE7_PKT, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 0
  %15 = or i32 %12, %14
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @PM4_PARITY(i32 %16)
  %18 = shl i32 %17, 15
  %19 = or i32 %15, %18
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 127
  %22 = shl i32 %21, 16
  %23 = or i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @PM4_PARITY(i32 %24)
  %26 = shl i32 %25, 23
  %27 = or i32 %23, %26
  %28 = call i32 @OUT_RING(%struct.msm_ringbuffer* %11, i32 %27)
  ret void
}

declare dso_local i32 @adreno_wait_ring(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @OUT_RING(%struct.msm_ringbuffer*, i32) #1

declare dso_local i32 @PM4_PARITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
