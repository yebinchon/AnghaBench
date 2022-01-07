; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.h_gpu_read64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.h_gpu_read64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, i32, i32)* @gpu_read64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpu_read64(%struct.msm_gpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %9 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = call i64 @msm_readl(i64 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i64 @msm_readl(i64 %23)
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 32
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i64 @msm_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
