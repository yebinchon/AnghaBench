; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_lvds_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_lvds_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_clock_t = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gma_clock_t*)* @mrst_lvds_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrst_lvds_clock(i32 %0, %struct.gma_clock_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gma_clock_t*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gma_clock_t* %1, %struct.gma_clock_t** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %7 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %5, %8
  %10 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %11 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 14, %12
  %14 = sdiv i32 %9, %13
  %15 = load %struct.gma_clock_t*, %struct.gma_clock_t** %4, align 8
  %16 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
