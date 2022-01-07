; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { %struct.d71_dev* }
%struct.d71_dev = type { i32*, i32 }
%struct.komeda_events = type { i32*, i32 }

@GLB_IRQ_STATUS = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_GCU = common dso_local global i32 0, align 4
@BLK_IRQ_RAW_STATUS = common dso_local global i32 0, align 4
@GCU_IRQ_CVAL0 = common dso_local global i32 0, align 4
@KOMEDA_EVENT_FLIP = common dso_local global i32 0, align 4
@GCU_IRQ_CVAL1 = common dso_local global i32 0, align 4
@GCU_IRQ_ERR = common dso_local global i32 0, align 4
@BLK_STATUS = common dso_local global i32 0, align 4
@GCU_STATUS_MERR = common dso_local global i32 0, align 4
@KOMEDA_ERR_MERR = common dso_local global i32 0, align 4
@BLK_IRQ_CLEAR = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_PIPE0 = common dso_local global i32 0, align 4
@GLB_IRQ_STATUS_PIPE1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_dev*, %struct.komeda_events*)* @d71_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d71_irq_handler(%struct.komeda_dev* %0, %struct.komeda_events* %1) #0 {
  %3 = alloca %struct.komeda_dev*, align 8
  %4 = alloca %struct.komeda_events*, align 8
  %5 = alloca %struct.d71_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.komeda_dev* %0, %struct.komeda_dev** %3, align 8
  store %struct.komeda_events* %1, %struct.komeda_events** %4, align 8
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %3, align 8
  %10 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %9, i32 0, i32 0
  %11 = load %struct.d71_dev*, %struct.d71_dev** %10, align 8
  store %struct.d71_dev* %11, %struct.d71_dev** %5, align 8
  %12 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  %13 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GLB_IRQ_STATUS, align 4
  %16 = call i32 @malidp_read32(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GLB_IRQ_STATUS_GCU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %2
  %22 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  %23 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BLK_IRQ_RAW_STATUS, align 4
  %26 = call i32 @malidp_read32(i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GCU_IRQ_CVAL0, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32, i32* @KOMEDA_EVENT_FLIP, align 4
  %33 = load %struct.komeda_events*, %struct.komeda_events** %4, align 8
  %34 = getelementptr inbounds %struct.komeda_events, %struct.komeda_events* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %21
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GCU_IRQ_CVAL1, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @KOMEDA_EVENT_FLIP, align 4
  %46 = load %struct.komeda_events*, %struct.komeda_events** %4, align 8
  %47 = getelementptr inbounds %struct.komeda_events, %struct.komeda_events* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @GCU_IRQ_ERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  %59 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BLK_STATUS, align 4
  %62 = call i32 @malidp_read32(i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @GCU_STATUS_MERR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load i32, i32* @KOMEDA_ERR_MERR, align 4
  %69 = load %struct.komeda_events*, %struct.komeda_events** %4, align 8
  %70 = getelementptr inbounds %struct.komeda_events, %struct.komeda_events* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  %74 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BLK_STATUS, align 4
  %77 = load i32, i32* @GCU_STATUS_MERR, align 4
  %78 = call i32 @malidp_write32_mask(i32 %75, i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %67, %57
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  %82 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BLK_IRQ_CLEAR, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @malidp_write32(i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %2
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @GLB_IRQ_STATUS_PIPE0, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  %94 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @get_pipeline_event(i32 %97, i32 %98)
  %100 = load %struct.komeda_events*, %struct.komeda_events** %4, align 8
  %101 = getelementptr inbounds %struct.komeda_events, %struct.komeda_events* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %92, %87
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @GLB_IRQ_STATUS_PIPE1, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load %struct.d71_dev*, %struct.d71_dev** %5, align 8
  %113 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @get_pipeline_event(i32 %116, i32 %117)
  %119 = load %struct.komeda_events*, %struct.komeda_events** %4, align 8
  %120 = getelementptr inbounds %struct.komeda_events, %struct.komeda_events* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %111, %106
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  br label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @IRQ_NONE, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  ret i32 %133
}

declare dso_local i32 @malidp_read32(i32, i32) #1

declare dso_local i32 @malidp_write32_mask(i32, i32, i32, i32) #1

declare dso_local i32 @malidp_write32(i32, i32, i32) #1

declare dso_local i32 @get_pipeline_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
