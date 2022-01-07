; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.imx_mu_con_priv*, i32 }
%struct.imx_mu_con_priv = type { i64, i32, i32 }
%struct.imx_mu_priv = type { i32 }

@IMX_MU_TYPE_TXDB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @imx_mu_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_mu_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.imx_mu_priv*, align 8
  %4 = alloca %struct.imx_mu_con_priv*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %5 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %6 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.imx_mu_priv* @to_imx_mu_priv(i32 %7)
  store %struct.imx_mu_priv* %8, %struct.imx_mu_priv** %3, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %10 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %9, i32 0, i32 0
  %11 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %10, align 8
  store %struct.imx_mu_con_priv* %11, %struct.imx_mu_con_priv** %4, align 8
  %12 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %4, align 8
  %13 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IMX_MU_TYPE_TXDB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %4, align 8
  %19 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %18, i32 0, i32 2
  %20 = call i32 @tasklet_kill(i32* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %3, align 8
  %23 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %4, align 8
  %24 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IMX_MU_xCR_TIEn(i32 %25)
  %27 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %4, align 8
  %28 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IMX_MU_xCR_RIEn(i32 %29)
  %31 = or i32 %26, %30
  %32 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %4, align 8
  %33 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @IMX_MU_xCR_GIEn(i32 %34)
  %36 = or i32 %31, %35
  %37 = call i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv* %22, i32 0, i32 %36)
  %38 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %3, align 8
  %39 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.mbox_chan* %41)
  ret void
}

declare dso_local %struct.imx_mu_priv* @to_imx_mu_priv(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv*, i32, i32) #1

declare dso_local i32 @IMX_MU_xCR_TIEn(i32) #1

declare dso_local i32 @IMX_MU_xCR_RIEn(i32) #1

declare dso_local i32 @IMX_MU_xCR_GIEn(i32) #1

declare dso_local i32 @free_irq(i32, %struct.mbox_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
