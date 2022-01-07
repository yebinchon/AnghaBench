; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_handle_irq_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_handle_irq_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32 }

@DSI_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DSI error, irqstatus %x\0A\00", align 1
@debug_irq = common dso_local global i64 0, align 8
@DSI_VC_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DSI VC(%d) error, vc irqstatus %x\0A\00", align 1
@DSI_CIO_IRQ_ERROR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"DSI CIO error, cio irqstatus %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*, i32, i32*, i32)* @dsi_handle_irq_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_handle_irq_errors(%struct.dsi_data* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DSI_IRQ_ERROR_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @print_irq_status(i32 %17)
  %19 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DSI_IRQ_ERROR_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %26 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  br label %39

32:                                               ; preds = %4
  %33 = load i64, i64* @debug_irq, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @print_irq_status(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %14
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %80, %39
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %83

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DSI_VC_IRQ_ERROR_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, ...) @DSSERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @print_irq_status_vc(i32 %60, i32 %65)
  br label %79

67:                                               ; preds = %43
  %68 = load i64, i64* @debug_irq, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @print_irq_status_vc(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %40

83:                                               ; preds = %40
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @DSI_CIO_IRQ_ERROR_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i8*, i32, ...) @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @print_irq_status_cio(i32 %91)
  br label %100

93:                                               ; preds = %83
  %94 = load i64, i64* @debug_irq, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @print_irq_status_cio(i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %88
  ret void
}

declare dso_local i32 @DSSERR(i8*, i32, ...) #1

declare dso_local i32 @print_irq_status(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @print_irq_status_vc(i32, i32) #1

declare dso_local i32 @print_irq_status_cio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
