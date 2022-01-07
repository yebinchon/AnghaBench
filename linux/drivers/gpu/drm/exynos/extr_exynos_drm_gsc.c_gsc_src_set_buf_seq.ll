; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_buf_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_buf_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@GSC_IN_BASE_ADDR_Y_MASK = common dso_local global i32 0, align 4
@GSC_IN_BASE_ADDR_CB_MASK = common dso_local global i32 0, align 4
@GSC_IN_BASE_ADDR_CR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, i32, i32)* @gsc_src_set_buf_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_src_set_buf_seq(%struct.gsc_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gsc_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @GSC_IN_BASE_ADDR_Y_MASK, align 4
  %17 = call i32 @gsc_read(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GSC_IN_BASE_ADDR_Y_MASK, align 4
  %29 = call i32 @gsc_write(i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GSC_IN_BASE_ADDR_CB_MASK, align 4
  %32 = call i32 @gsc_write(i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @GSC_IN_BASE_ADDR_CR_MASK, align 4
  %35 = call i32 @gsc_write(i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
