; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.imx_mu_con_priv*, i32 }
%struct.imx_mu_con_priv = type { i32, i32, i32, i32 }
%struct.imx_mu_priv = type { i32, i32 }

@IMX_MU_TYPE_TXDB = common dso_local global i32 0, align 4
@imx_mu_txdb_tasklet = common dso_local global i32 0, align 4
@imx_mu_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to acquire IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @imx_mu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_mu_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.imx_mu_priv*, align 8
  %5 = alloca %struct.imx_mu_con_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.imx_mu_priv* @to_imx_mu_priv(i32 %9)
  store %struct.imx_mu_priv* %10, %struct.imx_mu_priv** %4, align 8
  %11 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %11, i32 0, i32 0
  %13 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %12, align 8
  store %struct.imx_mu_con_priv* %13, %struct.imx_mu_con_priv** %5, align 8
  %14 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %5, align 8
  %15 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IMX_MU_TYPE_TXDB, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %5, align 8
  %21 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %20, i32 0, i32 3
  %22 = load i32, i32* @imx_mu_txdb_tasklet, align 4
  %23 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %5, align 8
  %24 = ptrtoint %struct.imx_mu_con_priv* %23 to i64
  %25 = call i32 @tasklet_init(i32* %21, i32 %22, i64 %24)
  store i32 0, i32* %2, align 4
  br label %70

26:                                               ; preds = %1
  %27 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %4, align 8
  %28 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @imx_mu_isr, align 4
  %31 = load i32, i32* @IRQF_SHARED, align 4
  %32 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %5, align 8
  %35 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %38 = call i32 @request_irq(i32 %29, i32 %30, i32 %33, i32 %36, %struct.mbox_chan* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %26
  %42 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %4, align 8
  %43 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %4, align 8
  %46 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %70

50:                                               ; preds = %26
  %51 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %5, align 8
  %52 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %68 [
    i32 129, label %54
    i32 128, label %61
  ]

54:                                               ; preds = %50
  %55 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %4, align 8
  %56 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %5, align 8
  %57 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @IMX_MU_xCR_RIEn(i32 %58)
  %60 = call i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv* %55, i32 %59, i32 0)
  br label %69

61:                                               ; preds = %50
  %62 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %4, align 8
  %63 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %5, align 8
  %64 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IMX_MU_xCR_GIEn(i32 %65)
  %67 = call i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv* %62, i32 %66, i32 0)
  br label %69

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %61, %54
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %41, %19
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.imx_mu_priv* @to_imx_mu_priv(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mbox_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv*, i32, i32) #1

declare dso_local i32 @IMX_MU_xCR_RIEn(i32) #1

declare dso_local i32 @IMX_MU_xCR_GIEn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
