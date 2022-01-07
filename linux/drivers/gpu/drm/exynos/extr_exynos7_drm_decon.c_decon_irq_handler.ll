; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i32, i32, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@VIDINTCON1 = common dso_local global i64 0, align 8
@VIDINTCON1_INT_I80 = common dso_local global i32 0, align 4
@VIDINTCON1_INT_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @decon_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decon_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.decon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.decon_context*
  store %struct.decon_context* %9, %struct.decon_context** %5, align 8
  %10 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %11 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VIDINTCON1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %17 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %16, i32 0, i32 3
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
  %32 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %33 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VIDINTCON1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %40 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %68

44:                                               ; preds = %38
  %45 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %46 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %51 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @drm_crtc_handle_vblank(i32* %53)
  %55 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %56 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %55, i32 0, i32 1
  %57 = call i64 @atomic_read(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %61 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %60, i32 0, i32 1
  %62 = call i32 @atomic_set(i32* %61, i32 0)
  %63 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %64 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %63, i32 0, i32 0
  %65 = call i32 @wake_up(i32* %64)
  br label %66

66:                                               ; preds = %59, %49
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %69
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
