; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@D40_MEM_LCSP2_ECNT_MASK = common dso_local global i32 0, align 4
@D40_MEM_LCSP2_ECNT_POS = common dso_local global i32 0, align 4
@D40_CHAN_REG_SDELT = common dso_local global i32 0, align 4
@D40_SREG_ELEM_PHY_ECNT_MASK = common dso_local global i32 0, align 4
@D40_SREG_ELEM_PHY_ECNT_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*)* @d40_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_residue(%struct.d40_chan* %0) #0 {
  %2 = alloca %struct.d40_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %2, align 8
  %5 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %6 = call i64 @chan_is_logical(%struct.d40_chan* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %10 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @readl(i32* %12)
  %14 = load i32, i32* @D40_MEM_LCSP2_ECNT_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @D40_MEM_LCSP2_ECNT_POS, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %20 = call i32* @chan_base(%struct.d40_chan* %19)
  %21 = load i32, i32* @D40_CHAN_REG_SDELT, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @D40_SREG_ELEM_PHY_ECNT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @D40_SREG_ELEM_PHY_ECNT_POS, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %33 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %31, %36
  ret i32 %37
}

declare dso_local i64 @chan_is_logical(%struct.d40_chan*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32* @chan_base(%struct.d40_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
