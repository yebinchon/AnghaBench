; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_i8xx_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_i8xx_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_clock_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gma_clock_t*)* @i8xx_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8xx_clock(i32 %0, %struct.gma_clock_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gma_clock_t*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gma_clock_t* %1, %struct.gma_clock_t** %4, align 8
  %5 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %6 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 2
  %9 = mul nsw i32 5, %8
  %10 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %11 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 2
  %14 = add nsw i32 %9, %13
  %15 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %16 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %18 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %21 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %25 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %28 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %32 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 2
  %35 = sdiv i32 %30, %34
  %36 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %37 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %39 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %42 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %46 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
