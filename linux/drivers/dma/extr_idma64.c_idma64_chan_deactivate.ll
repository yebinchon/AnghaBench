; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_chan_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chan = type { i32 }

@CFG_LO = common dso_local global i32 0, align 4
@IDMA64C_CFGL_CH_DRAIN = common dso_local global i32 0, align 4
@IDMA64C_CFGL_CH_SUSP = common dso_local global i32 0, align 4
@IDMA64C_CFGL_FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64_chan*, i32)* @idma64_chan_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_chan_deactivate(%struct.idma64_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.idma64_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.idma64_chan* %0, %struct.idma64_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  store i16 100, i16* %5, align 2
  %7 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %8 = load i32, i32* @CFG_LO, align 4
  %9 = call i32 @channel_readl(%struct.idma64_chan* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @IDMA64C_CFGL_CH_DRAIN, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @IDMA64C_CFGL_CH_DRAIN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %23 = load i32, i32* @CFG_LO, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IDMA64C_CFGL_CH_SUSP, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @channel_writel(%struct.idma64_chan* %22, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %43, %21
  %29 = call i32 @udelay(i32 1)
  %30 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %31 = load i32, i32* @CFG_LO, align 4
  %32 = call i32 @channel_readl(%struct.idma64_chan* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IDMA64C_CFGL_FIFO_EMPTY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i16, i16* %5, align 2
  %40 = add i16 %39, -1
  store i16 %40, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %28, label %45

45:                                               ; preds = %43
  ret void
}

declare dso_local i32 @channel_readl(%struct.idma64_chan*, i32) #1

declare dso_local i32 @channel_writel(%struct.idma64_chan*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
