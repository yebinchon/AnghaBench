; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@GSC_ENABLE = common dso_local global i32 0, align 4
@GSC_ENABLE_ON_CLEAR_MASK = common dso_local global i32 0, align 4
@GSC_ENABLE_CLK_GATE_MODE_MASK = common dso_local global i32 0, align 4
@GSC_ENABLE_ON_CLEAR_ONESHOT = common dso_local global i32 0, align 4
@GSC_IN_CON = common dso_local global i32 0, align 4
@GSC_IN_PATH_MASK = common dso_local global i32 0, align 4
@GSC_IN_LOCAL_SEL_MASK = common dso_local global i32 0, align 4
@GSC_IN_PATH_MEMORY = common dso_local global i32 0, align 4
@GSC_OUT_CON = common dso_local global i32 0, align 4
@GSC_OUT_PATH_MEMORY = common dso_local global i32 0, align 4
@GSC_ENABLE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*)* @gsc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_start(%struct.gsc_context* %0) #0 {
  %2 = alloca %struct.gsc_context*, align 8
  %3 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %2, align 8
  %4 = load %struct.gsc_context*, %struct.gsc_context** %2, align 8
  %5 = call i32 @gsc_handle_irq(%struct.gsc_context* %4, i32 1, i32 0, i32 1)
  %6 = load i32, i32* @GSC_ENABLE, align 4
  %7 = call i32 @gsc_read(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @GSC_ENABLE_ON_CLEAR_MASK, align 4
  %9 = load i32, i32* @GSC_ENABLE_CLK_GATE_MODE_MASK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @GSC_ENABLE_ON_CLEAR_ONESHOT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GSC_ENABLE, align 4
  %19 = call i32 @gsc_write(i32 %17, i32 %18)
  %20 = load i32, i32* @GSC_IN_CON, align 4
  %21 = call i32 @gsc_read(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @GSC_IN_PATH_MASK, align 4
  %23 = load i32, i32* @GSC_IN_LOCAL_SEL_MASK, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @GSC_IN_PATH_MEMORY, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @GSC_IN_CON, align 4
  %33 = call i32 @gsc_write(i32 %31, i32 %32)
  %34 = load i32, i32* @GSC_OUT_CON, align 4
  %35 = call i32 @gsc_read(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @GSC_OUT_PATH_MEMORY, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @GSC_OUT_CON, align 4
  %41 = call i32 @gsc_write(i32 %39, i32 %40)
  %42 = load %struct.gsc_context*, %struct.gsc_context** %2, align 8
  %43 = load %struct.gsc_context*, %struct.gsc_context** %2, align 8
  %44 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %43, i32 0, i32 0
  %45 = call i32 @gsc_set_scaler(%struct.gsc_context* %42, i32* %44)
  %46 = load i32, i32* @GSC_ENABLE, align 4
  %47 = call i32 @gsc_read(i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @GSC_ENABLE_ON, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @GSC_ENABLE, align 4
  %53 = call i32 @gsc_write(i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @gsc_handle_irq(%struct.gsc_context*, i32, i32, i32) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

declare dso_local i32 @gsc_set_scaler(%struct.gsc_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
