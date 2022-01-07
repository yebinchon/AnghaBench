; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32 }

@MCDE_CTRLA = common dso_local global i32 0, align 4
@MCDE_CRA0 = common dso_local global i32 0, align 4
@MCDE_CRA1 = common dso_local global i32 0, align 4
@MCDE_CTRLB = common dso_local global i32 0, align 4
@MCDE_CRB0 = common dso_local global i32 0, align 4
@MCDE_CRB1 = common dso_local global i32 0, align 4
@MCDE_CTRLX_FIFOWTRMRK_SHIFT = common dso_local global i32 0, align 4
@MCDE_CTRLX_FORMTYPE_DSI = common dso_local global i32 0, align 4
@MCDE_CTRLX_FORMTYPE_SHIFT = common dso_local global i32 0, align 4
@MCDE_CTRLX_FORMID_SHIFT = common dso_local global i32 0, align 4
@MCDE_CRX0_BLENDEN = common dso_local global i32 0, align 4
@MCDE_CRX0_ALPHABLEND_SHIFT = common dso_local global i32 0, align 4
@MCDE_CRX1_CLKSEL_MCDECLK = common dso_local global i32 0, align 4
@MCDE_CRX1_CLKSEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde*, i32, i32, i32)* @mcde_configure_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_configure_fifo(%struct.mcde* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mcde*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 128, label %18
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @MCDE_CTRLA, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @MCDE_CRA0, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @MCDE_CRA1, align 4
  store i32 %17, i32* %12, align 4
  br label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @MCDE_CTRLB, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @MCDE_CRB0, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @MCDE_CRB1, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %4, %18, %14
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MCDE_CTRLX_FIFOWTRMRK_SHIFT, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @MCDE_CTRLX_FORMTYPE_DSI, align 4
  %27 = load i32, i32* @MCDE_CTRLX_FORMTYPE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MCDE_CTRLX_FORMID_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mcde*, %struct.mcde** %5, align 8
  %38 = getelementptr inbounds %struct.mcde, %struct.mcde* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @writel(i32 %36, i32 %41)
  %43 = load i32, i32* @MCDE_CRX0_BLENDEN, align 4
  %44 = load i32, i32* @MCDE_CRX0_ALPHABLEND_SHIFT, align 4
  %45 = shl i32 255, %44
  %46 = or i32 %43, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mcde*, %struct.mcde** %5, align 8
  %49 = getelementptr inbounds %struct.mcde, %struct.mcde* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @writel(i32 %47, i32 %52)
  %54 = load i32, i32* @MCDE_CRX1_CLKSEL_MCDECLK, align 4
  %55 = load i32, i32* @MCDE_CRX1_CLKSEL_SHIFT, align 4
  %56 = shl i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.mcde*, %struct.mcde** %5, align 8
  %59 = getelementptr inbounds %struct.mcde, %struct.mcde* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @writel(i32 %57, i32 %62)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
