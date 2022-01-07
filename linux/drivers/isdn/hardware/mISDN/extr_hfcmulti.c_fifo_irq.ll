; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_fifo_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_fifo_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, %struct.bchannel*, %struct.dchannel* }
%struct.bchannel = type { i32 }
%struct.dchannel = type { i32 }

@R_IRQ_FIFO_BL0 = common dso_local global i64 0, align 8
@FLG_ACTIVE = common dso_local global i32 0, align 4
@R_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i32)* @fifo_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fifo_irq(%struct.hfc_multi* %0, i32 %1) #0 {
  %3 = alloca %struct.hfc_multi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dchannel*, align 8
  %8 = alloca %struct.bchannel*, align 8
  %9 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %11 = load i64, i64* @R_IRQ_FIFO_BL0, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = call i32 @HFC_inb_nodebug(%struct.hfc_multi* %10, i64 %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %152, %61, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %155

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 2
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 1
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %26 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.dchannel*, %struct.dchannel** %31, align 8
  store %struct.dchannel* %32, %struct.dchannel** %7, align 8
  %33 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %34 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.bchannel*, %struct.bchannel** %39, align 8
  store %struct.bchannel* %40, %struct.bchannel** %8, align 8
  %41 = load %struct.dchannel*, %struct.dchannel** %7, align 8
  %42 = icmp ne %struct.dchannel* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %19
  %44 = load %struct.bchannel*, %struct.bchannel** %8, align 8
  %45 = icmp ne %struct.bchannel* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %43, %19
  %47 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %48 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %51 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %49, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %46, %43
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %6, align 4
  br label %16

64:                                               ; preds = %46
  %65 = load %struct.dchannel*, %struct.dchannel** %7, align 8
  %66 = icmp ne %struct.dchannel* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = load i32, i32* @FLG_ACTIVE, align 4
  %75 = load %struct.dchannel*, %struct.dchannel** %7, align 8
  %76 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %75, i32 0, i32 0
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @hfcmulti_tx(%struct.hfc_multi* %80, i32 %81)
  %83 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %84 = load i32, i32* @R_FIFO, align 4
  %85 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %83, i32 %84, i32 0)
  %86 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %87 = call i32 @HFC_wait_nodebug(%struct.hfc_multi* %86)
  br label %88

88:                                               ; preds = %79, %73, %67, %64
  %89 = load %struct.bchannel*, %struct.bchannel** %8, align 8
  %90 = icmp ne %struct.bchannel* %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load i32, i32* @FLG_ACTIVE, align 4
  %99 = load %struct.bchannel*, %struct.bchannel** %8, align 8
  %100 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %99, i32 0, i32 0
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @hfcmulti_tx(%struct.hfc_multi* %104, i32 %105)
  %107 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %108 = load i32, i32* @R_FIFO, align 4
  %109 = call i32 @HFC_outb_nodebug(%struct.hfc_multi* %107, i32 %108, i32 0)
  %110 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %111 = call i32 @HFC_wait_nodebug(%struct.hfc_multi* %110)
  br label %112

112:                                              ; preds = %103, %97, %91, %88
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  %115 = load %struct.dchannel*, %struct.dchannel** %7, align 8
  %116 = icmp ne %struct.dchannel* %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load i32, i32* @FLG_ACTIVE, align 4
  %125 = load %struct.dchannel*, %struct.dchannel** %7, align 8
  %126 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %125, i32 0, i32 0
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @hfcmulti_rx(%struct.hfc_multi* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %123, %117, %112
  %134 = load %struct.bchannel*, %struct.bchannel** %8, align 8
  %135 = icmp ne %struct.bchannel* %134, null
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %6, align 4
  %139 = shl i32 1, %138
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load i32, i32* @FLG_ACTIVE, align 4
  %144 = load %struct.bchannel*, %struct.bchannel** %8, align 8
  %145 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %144, i32 0, i32 0
  %146 = call i64 @test_bit(i32 %143, i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.hfc_multi*, %struct.hfc_multi** %3, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @hfcmulti_rx(%struct.hfc_multi* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %142, %136, %133
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %16

155:                                              ; preds = %16
  ret void
}

declare dso_local i32 @HFC_inb_nodebug(%struct.hfc_multi*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hfcmulti_tx(%struct.hfc_multi*, i32) #1

declare dso_local i32 @HFC_outb_nodebug(%struct.hfc_multi*, i32, i32) #1

declare dso_local i32 @HFC_wait_nodebug(%struct.hfc_multi*) #1

declare dso_local i32 @hfcmulti_rx(%struct.hfc_multi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
