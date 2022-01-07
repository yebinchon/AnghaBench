; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_hw_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_hw_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ep93xx_dma_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@M2M_STATUS = common dso_local global i64 0, align 8
@M2M_STATUS_CTL_MASK = common dso_local global i64 0, align 8
@M2M_STATUS_BUF_MASK = common dso_local global i64 0, align 8
@M2M_STATUS_DONE = common dso_local global i64 0, align 8
@M2M_INTERRUPT = common dso_local global i64 0, align 8
@M2M_INTERRUPT_MASK = common dso_local global i64 0, align 8
@INTERRUPT_UNKNOWN = common dso_local global i32 0, align 4
@M2M_STATUS_BUF_NO = common dso_local global i64 0, align 8
@M2M_STATUS_BUF_ON = common dso_local global i64 0, align 8
@M2M_CONTROL = common dso_local global i64 0, align 8
@M2M_CONTROL_START = common dso_local global i64 0, align 8
@INTERRUPT_NEXT_BUFFER = common dso_local global i32 0, align 4
@M2M_STATUS_CTL_STALL = common dso_local global i64 0, align 8
@M2M_CONTROL_DONEINT = common dso_local global i64 0, align 8
@M2M_CONTROL_NFBINT = common dso_local global i64 0, align 8
@M2M_CONTROL_ENABLE = common dso_local global i64 0, align 8
@INTERRUPT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ep93xx_dma_chan*)* @m2m_hw_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m2m_hw_interrupt(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ep93xx_dma_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ep93xx_dma_desc*, align 8
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %3, align 8
  %11 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @M2M_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @M2M_STATUS_CTL_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @M2M_STATUS_BUF_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @M2M_STATUS_DONE, align 8
  %25 = and i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @M2M_INTERRUPT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @readl(i64 %31)
  %33 = load i64, i64* @M2M_INTERRUPT_MASK, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @INTERRUPT_UNKNOWN, align 4
  store i32 %37, i32* %2, align 4
  br label %144

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %43 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @M2M_INTERRUPT, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i64 0, i64 %46)
  br label %48

48:                                               ; preds = %41, %38
  %49 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %50 = call %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan* %49)
  store %struct.ep93xx_dma_desc* %50, %struct.ep93xx_dma_desc** %10, align 8
  %51 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %10, align 8
  %52 = icmp ne %struct.ep93xx_dma_desc* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %10, align 8
  %55 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi i1 [ true, %48 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %108, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @M2M_STATUS_BUF_NO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @M2M_STATUS_BUF_ON, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %68, %64
  %73 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %74 = call i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %78 = call i32 @m2m_fill_desc(%struct.ep93xx_dma_chan* %77)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %83 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %81
  %88 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %89 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @M2M_CONTROL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i64 @readl(i64 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* @M2M_CONTROL_START, align 8
  %95 = load i64, i64* %9, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %99 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @M2M_CONTROL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i64 %97, i64 %102)
  br label %104

104:                                              ; preds = %87, %81, %76
  %105 = load i32, i32* @INTERRUPT_NEXT_BUFFER, align 4
  store i32 %105, i32* %2, align 4
  br label %144

106:                                              ; preds = %72
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %68, %59
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %108
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @M2M_STATUS_BUF_NO, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @M2M_STATUS_CTL_STALL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %115
  %120 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %121 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @M2M_CONTROL, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i64 @readl(i64 %124)
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* @M2M_CONTROL_DONEINT, align 8
  %127 = load i64, i64* @M2M_CONTROL_NFBINT, align 8
  %128 = or i64 %126, %127
  %129 = load i64, i64* @M2M_CONTROL_ENABLE, align 8
  %130 = or i64 %128, %129
  %131 = xor i64 %130, -1
  %132 = load i64, i64* %9, align 8
  %133 = and i64 %132, %131
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %3, align 8
  %136 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @M2M_CONTROL, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i64 %134, i64 %139)
  %141 = load i32, i32* @INTERRUPT_DONE, align 4
  store i32 %141, i32* %2, align 4
  br label %144

142:                                              ; preds = %115, %111, %108
  %143 = load i32, i32* @INTERRUPT_NEXT_BUFFER, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %119, %104, %36
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @m2m_fill_desc(%struct.ep93xx_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
