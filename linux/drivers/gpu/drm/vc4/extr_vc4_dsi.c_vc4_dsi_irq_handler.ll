; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dsi = type { i32, i32 }

@INT_STAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DSI1_INT_ERR_SYNC_ESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"LPDT sync\00", align 1
@DSI1_INT_ERR_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"data lane 0 sequence\00", align 1
@DSI1_INT_ERR_CONT_LP0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"LP0 contention\00", align 1
@DSI1_INT_ERR_CONT_LP1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"LP1 contention\00", align 1
@DSI1_INT_HSTX_TO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"HSTX timeout\00", align 1
@DSI1_INT_LPRX_TO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"LPRX timeout\00", align 1
@DSI1_INT_TA_TO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"turnaround timeout\00", align 1
@DSI1_INT_PR_TO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"peripheral reset timeout\00", align 1
@DSI1_INT_TXPKT1_DONE = common dso_local global i32 0, align 4
@DSI1_INT_PHY_DIR_RTF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vc4_dsi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dsi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vc4_dsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vc4_dsi*
  store %struct.vc4_dsi* %9, %struct.vc4_dsi** %5, align 8
  %10 = load i32, i32* @INT_STAT, align 4
  %11 = call i32 @DSI_PORT_READ(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @INT_STAT, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DSI_PORT_WRITE(i32 %13, i32 %14)
  %16 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DSI1_INT_ERR_SYNC_ESC, align 4
  %19 = call i32 @dsi_handle_error(%struct.vc4_dsi* %16, i32* %7, i32 %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DSI1_INT_ERR_CONTROL, align 4
  %23 = call i32 @dsi_handle_error(%struct.vc4_dsi* %20, i32* %7, i32 %21, i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DSI1_INT_ERR_CONT_LP0, align 4
  %27 = call i32 @dsi_handle_error(%struct.vc4_dsi* %24, i32* %7, i32 %25, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DSI1_INT_ERR_CONT_LP1, align 4
  %31 = call i32 @dsi_handle_error(%struct.vc4_dsi* %28, i32* %7, i32 %29, i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DSI1_INT_HSTX_TO, align 4
  %35 = call i32 @dsi_handle_error(%struct.vc4_dsi* %32, i32* %7, i32 %33, i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DSI1_INT_LPRX_TO, align 4
  %39 = call i32 @dsi_handle_error(%struct.vc4_dsi* %36, i32* %7, i32 %37, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DSI1_INT_TA_TO, align 4
  %43 = call i32 @dsi_handle_error(%struct.vc4_dsi* %40, i32* %7, i32 %41, i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @DSI1_INT_PR_TO, align 4
  %47 = call i32 @dsi_handle_error(%struct.vc4_dsi* %44, i32* %7, i32 %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @DSI1_INT_TXPKT1_DONE, align 4
  %50 = load i32, i32* @DSI1_INT_PHY_DIR_RTF, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %56 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %55, i32 0, i32 1
  %57 = call i32 @complete(i32* %56)
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %7, align 4
  br label %74

59:                                               ; preds = %2
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @DSI1_INT_HSTX_TO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %66 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %65, i32 0, i32 1
  %67 = call i32 @complete(i32* %66)
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  %70 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %71 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %64, %59
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @DSI_PORT_READ(i32) #1

declare dso_local i32 @DSI_PORT_WRITE(i32, i32) #1

declare dso_local i32 @dsi_handle_error(%struct.vc4_dsi*, i32*, i32, i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
