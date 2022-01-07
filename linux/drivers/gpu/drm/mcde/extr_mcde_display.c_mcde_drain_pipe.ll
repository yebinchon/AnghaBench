; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_drain_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_drain_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i32 }

@MCDE_CTRLA = common dso_local global i32 0, align 4
@MCDE_CTRLB = common dso_local global i32 0, align 4
@MCDE_CHNL0SYNCHSW = common dso_local global i32 0, align 4
@MCDE_CHNL1SYNCHSW = common dso_local global i32 0, align 4
@MCDE_CHNL2SYNCHSW = common dso_local global i32 0, align 4
@MCDE_CHNL3SYNCHSW = common dso_local global i32 0, align 4
@MCDE_CTRLX_FIFOEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Channel A FIFO not empty (handover)\0A\00", align 1
@MCDE_CHNLXSYNCHSW_SW_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*, i32, i32)* @mcde_drain_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_drain_pipe(%struct.mcde* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mcde*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @MCDE_CTRLA, align 4
  store i32 %12, i32* %8, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @MCDE_CTRLB, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %3, %13, %11
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %25 [
    i32 133, label %17
    i32 132, label %19
    i32 131, label %21
    i32 130, label %23
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @MCDE_CHNL0SYNCHSW, align 4
  store i32 %18, i32* %9, align 4
  br label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @MCDE_CHNL1SYNCHSW, align 4
  store i32 %20, i32* %9, align 4
  br label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @MCDE_CHNL2SYNCHSW, align 4
  store i32 %22, i32* %9, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @MCDE_CHNL3SYNCHSW, align 4
  store i32 %24, i32* %9, align 4
  br label %54

25:                                               ; preds = %15, %21, %19, %17
  %26 = load %struct.mcde*, %struct.mcde** %4, align 8
  %27 = getelementptr inbounds %struct.mcde, %struct.mcde* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @readl(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MCDE_CTRLX_FIFOEMPTY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %25
  %37 = load %struct.mcde*, %struct.mcde** %4, align 8
  %38 = getelementptr inbounds %struct.mcde, %struct.mcde* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.mcde*, %struct.mcde** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @mcde_enable_fifo(%struct.mcde* %41, i32 %42)
  %44 = load i32, i32* @MCDE_CHNLXSYNCHSW_SW_TRIG, align 4
  %45 = load %struct.mcde*, %struct.mcde** %4, align 8
  %46 = getelementptr inbounds %struct.mcde, %struct.mcde* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @writel(i32 %44, i32 %49)
  %51 = load %struct.mcde*, %struct.mcde** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mcde_disable_fifo(%struct.mcde* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %23, %36, %25
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mcde_enable_fifo(%struct.mcde*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @mcde_disable_fifo(%struct.mcde*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
