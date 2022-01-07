; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimd_context = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@VIDINTCON1 = common dso_local global i64 0, align 8
@VIDINTCON1_INT_I80 = common dso_local global i32 0, align 4
@VIDINTCON1_INT_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fimd_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimd_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fimd_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fimd_context*
  store %struct.fimd_context* %9, %struct.fimd_context** %5, align 8
  %10 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %11 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VIDINTCON1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %17 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @VIDINTCON1_INT_I80, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @VIDINTCON1_INT_FRAME, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %33 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VIDINTCON1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %40 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %78

44:                                               ; preds = %38
  %45 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %46 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %51 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @drm_crtc_handle_vblank(i32* %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %57 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %62 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %61, i32 0, i32 2
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  br label %77

64:                                               ; preds = %55
  %65 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %66 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %65, i32 0, i32 1
  %67 = call i64 @atomic_read(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %71 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %70, i32 0, i32 1
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %74 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %73, i32 0, i32 0
  %75 = call i32 @wake_up(i32* %74)
  br label %76

76:                                               ; preds = %69, %64
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77, %43
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %79
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
