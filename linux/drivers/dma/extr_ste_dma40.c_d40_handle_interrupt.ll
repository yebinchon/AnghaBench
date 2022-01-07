; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { i32 }
%struct.d40_base = type { i32*, i32, i32, i64, %struct.d40_chan**, %struct.d40_chan**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.d40_interrupt_lookup* }
%struct.d40_interrupt_lookup = type { i32, i32, i64, i64 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@D40_PHY_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IRQ chan: %ld offset %d idx %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @d40_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_handle_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.d40_chan*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.d40_base*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.d40_interrupt_lookup*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i64 -1, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.d40_base*
  store %struct.d40_base* %16, %struct.d40_base** %11, align 8
  %17 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %18 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %21 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.d40_interrupt_lookup*, %struct.d40_interrupt_lookup** %22, align 8
  store %struct.d40_interrupt_lookup* %23, %struct.d40_interrupt_lookup** %13, align 8
  %24 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %25 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %14, align 4
  %28 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %29 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %28, i32 0, i32 1
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %52, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %38 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.d40_interrupt_lookup*, %struct.d40_interrupt_lookup** %13, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %40, i64 %42
  %44 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %39, %45
  %47 = call i32 @readl(i64 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %32

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %159, %118, %55
  %57 = load i32*, i32** %12, align 8
  %58 = bitcast i32* %57 to i64*
  %59 = load i32, i32* @BITS_PER_LONG, align 4
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 1
  %64 = call i64 @find_next_bit(i64* %58, i32 %61, i64 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @BITS_PER_LONG, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  br label %163

72:                                               ; preds = %56
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* @BITS_PER_LONG, align 4
  %75 = sext i32 %74 to i64
  %76 = sdiv i64 %73, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %7, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* @BITS_PER_LONG, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = and i64 %78, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load %struct.d40_interrupt_lookup*, %struct.d40_interrupt_lookup** %13, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %84, i64 %86
  %88 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @D40_PHY_CHAN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %72
  %93 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %94 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %93, i32 0, i32 5
  %95 = load %struct.d40_chan**, %struct.d40_chan*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.d40_chan*, %struct.d40_chan** %95, i64 %97
  %99 = load %struct.d40_chan*, %struct.d40_chan** %98, align 8
  store %struct.d40_chan* %99, %struct.d40_chan** %9, align 8
  br label %115

100:                                              ; preds = %72
  %101 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %102 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %101, i32 0, i32 4
  %103 = load %struct.d40_chan**, %struct.d40_chan*** %102, align 8
  %104 = load %struct.d40_interrupt_lookup*, %struct.d40_interrupt_lookup** %13, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %104, i64 %106
  %108 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.d40_chan*, %struct.d40_chan** %103, i64 %112
  %114 = load %struct.d40_chan*, %struct.d40_chan** %113, align 8
  store %struct.d40_chan* %114, %struct.d40_chan** %9, align 8
  br label %115

115:                                              ; preds = %100, %92
  %116 = load %struct.d40_chan*, %struct.d40_chan** %9, align 8
  %117 = icmp ne %struct.d40_chan* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  br label %56

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @BIT(i32 %120)
  %122 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %123 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.d40_interrupt_lookup*, %struct.d40_interrupt_lookup** %13, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %125, i64 %127
  %129 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %124, %130
  %132 = call i32 @writel(i32 %121, i64 %131)
  %133 = load %struct.d40_chan*, %struct.d40_chan** %9, align 8
  %134 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %133, i32 0, i32 0
  %135 = call i32 @spin_lock(i32* %134)
  %136 = load %struct.d40_interrupt_lookup*, %struct.d40_interrupt_lookup** %13, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %136, i64 %138
  %140 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %119
  %144 = load %struct.d40_chan*, %struct.d40_chan** %9, align 8
  %145 = call i32 @dma_tc_handle(%struct.d40_chan* %144)
  br label %159

146:                                              ; preds = %119
  %147 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %148 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %8, align 8
  %151 = load %struct.d40_interrupt_lookup*, %struct.d40_interrupt_lookup** %13, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %151, i64 %153
  %155 = getelementptr inbounds %struct.d40_interrupt_lookup, %struct.d40_interrupt_lookup* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @d40_err(i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %150, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %146, %143
  %160 = load %struct.d40_chan*, %struct.d40_chan** %9, align 8
  %161 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %160, i32 0, i32 0
  %162 = call i32 @spin_unlock(i32* %161)
  br label %56

163:                                              ; preds = %71
  %164 = load %struct.d40_base*, %struct.d40_base** %11, align 8
  %165 = getelementptr inbounds %struct.d40_base, %struct.d40_base* %164, i32 0, i32 1
  %166 = load i64, i64* %10, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %168
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @find_next_bit(i64*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dma_tc_handle(%struct.d40_chan*) #1

declare dso_local i32 @d40_err(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
