; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_omap_dsi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_omap_dsi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DSI_IRQSTATUS = common dso_local global i32 0, align 4
@DSI_IRQ_CHANNEL_MASK = common dso_local global i32 0, align 4
@DSI_IRQ_COMPLEXIO_ERR = common dso_local global i32 0, align 4
@DSI_COMPLEXIO_IRQ_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DSI_IRQ_TE_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_dsi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dsi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dsi_data*
  store %struct.dsi_data* %12, %struct.dsi_data** %6, align 8
  %13 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %123

19:                                               ; preds = %2
  %20 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %24 = load i32, i32* @DSI_IRQSTATUS, align 4
  %25 = call i32 @dsi_read_reg(%struct.dsi_data* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %123

33:                                               ; preds = %19
  %34 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %35 = load i32, i32* @DSI_IRQSTATUS, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @DSI_IRQ_CHANNEL_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @dsi_write_reg(%struct.dsi_data* %34, i32 %35, i32 %39)
  %41 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %42 = load i32, i32* @DSI_IRQSTATUS, align 4
  %43 = call i32 @dsi_read_reg(%struct.dsi_data* %41, i32 %42)
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %77, %33
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %55
  store i32 0, i32* %56, align 4
  br label %77

57:                                               ; preds = %47
  %58 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @DSI_VC_IRQSTATUS(i32 %59)
  %61 = call i32 @dsi_read_reg(%struct.dsi_data* %58, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @DSI_VC_IRQSTATUS(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dsi_write_reg(%struct.dsi_data* %65, i32 %67, i32 %71)
  %73 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @DSI_VC_IRQSTATUS(i32 %74)
  %76 = call i32 @dsi_read_reg(%struct.dsi_data* %73, i32 %75)
  br label %77

77:                                               ; preds = %57, %53
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %44

80:                                               ; preds = %44
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @DSI_IRQ_COMPLEXIO_ERR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %87 = load i32, i32* @DSI_COMPLEXIO_IRQ_STATUS, align 4
  %88 = call i32 @dsi_read_reg(%struct.dsi_data* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %90 = load i32, i32* @DSI_COMPLEXIO_IRQ_STATUS, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dsi_write_reg(%struct.dsi_data* %89, i32 %90, i32 %91)
  %93 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %94 = load i32, i32* @DSI_COMPLEXIO_IRQ_STATUS, align 4
  %95 = call i32 @dsi_read_reg(%struct.dsi_data* %93, i32 %94)
  br label %97

96:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %85
  %98 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %99 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %98, i32 0, i32 0
  %100 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %101 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %100, i32 0, i32 2
  %102 = call i32 @memcpy(i32* %99, i32* %101, i32 4)
  %103 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %104 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %107 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %106, i32 0, i32 0
  %108 = load i32, i32* %7, align 4
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dsi_handle_isrs(i32* %107, i32 %108, i32* %109, i32 %110)
  %112 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @dsi_handle_irq_errors(%struct.dsi_data* %112, i32 %113, i32* %114, i32 %115)
  %117 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @dsi_collect_irq_stats(%struct.dsi_data* %117, i32 %118, i32* %119, i32 %120)
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %97, %28, %17
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @DSI_VC_IRQSTATUS(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dsi_handle_isrs(i32*, i32, i32*, i32) #1

declare dso_local i32 @dsi_handle_irq_errors(%struct.dsi_data*, i32, i32*, i32) #1

declare dso_local i32 @dsi_collect_irq_stats(%struct.dsi_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
