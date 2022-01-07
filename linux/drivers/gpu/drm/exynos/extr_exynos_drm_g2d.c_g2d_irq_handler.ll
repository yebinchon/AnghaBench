; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32, i32, i32, i64 }

@G2D_INTC_PEND = common dso_local global i64 0, align 8
@G2D_INTP_GCMD_FIN = common dso_local global i32 0, align 4
@G2D_DMA_STATUS = common dso_local global i64 0, align 8
@G2D_DMA_LIST_DONE_COUNT = common dso_local global i32 0, align 4
@G2D_DMA_LIST_DONE_COUNT_OFFSET = common dso_local global i32 0, align 4
@G2D_DMA_HOLD_CMD = common dso_local global i64 0, align 8
@G2D_INTP_ACMD_FIN = common dso_local global i32 0, align 4
@G2D_DMA_CONTINUE = common dso_local global i32 0, align 4
@G2D_DMA_COMMAND = common dso_local global i64 0, align 8
@G2D_BIT_ENGINE_BUSY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @g2d_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.g2d_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.g2d_data*
  store %struct.g2d_data* %9, %struct.g2d_data** %5, align 8
  %10 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %11 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @G2D_INTC_PEND, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %21 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @G2D_INTC_PEND, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %19, i64 %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @G2D_INTP_GCMD_FIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %33 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @G2D_DMA_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @G2D_DMA_LIST_DONE_COUNT, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @G2D_DMA_LIST_DONE_COUNT_OFFSET, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @g2d_finish_event(%struct.g2d_data* %43, i32 %44)
  %46 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %47 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @G2D_DMA_HOLD_CMD, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel_relaxed(i32 0, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @G2D_INTP_ACMD_FIN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %31
  %57 = load i32, i32* @G2D_DMA_CONTINUE, align 4
  %58 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %59 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @G2D_DMA_COMMAND, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel_relaxed(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %56, %31
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @G2D_INTP_ACMD_FIN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i32, i32* @G2D_BIT_ENGINE_BUSY, align 4
  %72 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %73 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %72, i32 0, i32 2
  %74 = call i32 @clear_bit(i32 %71, i32* %73)
  %75 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %76 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.g2d_data*, %struct.g2d_data** %5, align 8
  %79 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %78, i32 0, i32 0
  %80 = call i32 @queue_work(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %70, %65
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %82
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @g2d_finish_event(%struct.g2d_data*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
