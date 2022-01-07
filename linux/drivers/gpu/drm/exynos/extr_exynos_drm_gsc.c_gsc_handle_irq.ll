; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"enable[%d]overflow[%d]level[%d]\0A\00", align 1
@GSC_IRQ = common dso_local global i32 0, align 4
@GSC_IRQ_OR_MASK = common dso_local global i32 0, align 4
@GSC_IRQ_FRMDONE_MASK = common dso_local global i32 0, align 4
@GSC_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, i32, i32, i32)* @gsc_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_handle_irq(%struct.gsc_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gsc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.gsc_context*, %struct.gsc_context** %5, align 8
  %11 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @DRM_DEV_DEBUG_KMS(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @GSC_IRQ, align 4
  %18 = call i32 @gsc_read(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @GSC_IRQ_OR_MASK, align 4
  %20 = load i32, i32* @GSC_IRQ_FRMDONE_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @GSC_IRQ_ENABLE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %4
  %31 = load i32, i32* @GSC_IRQ_ENABLE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @GSC_IRQ_OR_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @GSC_IRQ_OR_MASK, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @GSC_IRQ_FRMDONE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @GSC_IRQ_FRMDONE_MASK, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @GSC_IRQ, align 4
  %62 = call i32 @gsc_write(i32 %60, i32 %61)
  ret void
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
