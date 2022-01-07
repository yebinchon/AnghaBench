; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.imx_mu_con_priv*, i32 }
%struct.imx_mu_con_priv = type { i32, i32, i32 }
%struct.imx_mu_priv = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Send data on wrong channel type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*, i8*)* @imx_mu_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_mu_send_data(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.imx_mu_priv*, align 8
  %7 = alloca %struct.imx_mu_con_priv*, align 8
  %8 = alloca i32*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %10 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.imx_mu_priv* @to_imx_mu_priv(i32 %11)
  store %struct.imx_mu_priv* %12, %struct.imx_mu_priv** %6, align 8
  %13 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %14 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %13, i32 0, i32 0
  %15 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %14, align 8
  store %struct.imx_mu_con_priv* %15, %struct.imx_mu_con_priv** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %7, align 8
  %19 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %46 [
    i32 129, label %21
    i32 128, label %36
  ]

21:                                               ; preds = %2
  %22 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %7, align 8
  %26 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IMX_MU_xTRn(i32 %27)
  %29 = call i32 @imx_mu_write(%struct.imx_mu_priv* %22, i32 %24, i32 %28)
  %30 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %31 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %7, align 8
  %32 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IMX_MU_xCR_TIEn(i32 %33)
  %35 = call i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv* %30, i32 %34, i32 0)
  br label %56

36:                                               ; preds = %2
  %37 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %38 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %7, align 8
  %39 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IMX_MU_xCR_GIRn(i32 %40)
  %42 = call i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv* %37, i32 %41, i32 0)
  %43 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %7, align 8
  %44 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %43, i32 0, i32 1
  %45 = call i32 @tasklet_schedule(i32* %44)
  br label %56

46:                                               ; preds = %2
  %47 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %48 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %7, align 8
  %51 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_warn_ratelimited(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %36, %21
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.imx_mu_priv* @to_imx_mu_priv(i32) #1

declare dso_local i32 @imx_mu_write(%struct.imx_mu_priv*, i32, i32) #1

declare dso_local i32 @IMX_MU_xTRn(i32) #1

declare dso_local i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv*, i32, i32) #1

declare dso_local i32 @IMX_MU_xCR_TIEn(i32) #1

declare dso_local i32 @IMX_MU_xCR_GIRn(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
