; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, i32, i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@REG_DSI_INTR_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"isr=0x%x, id=%d\00", align 1
@DSI_IRQ_ERROR = common dso_local global i32 0, align 4
@DSI_IRQ_VIDEO_DONE = common dso_local global i32 0, align 4
@DSI_IRQ_CMD_DMA_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dsi_host_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_host_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.msm_dsi_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.msm_dsi_host*
  store %struct.msm_dsi_host* %10, %struct.msm_dsi_host** %6, align 8
  %11 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %12 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %19 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %18, i32 0, i32 3
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %23 = load i32, i32* @REG_DSI_INTR_CTRL, align 4
  %24 = call i32 @dsi_read(%struct.msm_dsi_host* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %26 = load i32, i32* @REG_DSI_INTR_CTRL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dsi_write(%struct.msm_dsi_host* %25, i32 %26, i32 %27)
  %29 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %30 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %29, i32 0, i32 3
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %35 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DSI_IRQ_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %44 = call i32 @dsi_error(%struct.msm_dsi_host* %43)
  br label %45

45:                                               ; preds = %42, %17
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @DSI_IRQ_VIDEO_DONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %52 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %51, i32 0, i32 1
  %53 = call i32 @complete(i32* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DSI_IRQ_CMD_DMA_DONE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %6, align 8
  %61 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %60, i32 0, i32 0
  %62 = call i32 @complete(i32* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dsi_read(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @dsi_error(%struct.msm_dsi_host*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
