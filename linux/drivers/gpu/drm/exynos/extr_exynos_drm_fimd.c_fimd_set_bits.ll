; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimd_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimd_context*, i32, i32, i32)* @fimd_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_set_bits(%struct.fimd_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fimd_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fimd_context* %0, %struct.fimd_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %9, %10
  %12 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %13 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @readl(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = or i32 %11, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %24 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @writel(i32 %22, i32 %27)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
