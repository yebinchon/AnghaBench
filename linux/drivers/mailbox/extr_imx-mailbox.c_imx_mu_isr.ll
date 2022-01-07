; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.imx_mu_con_priv*, i32 }
%struct.imx_mu_con_priv = type { i32, i32 }
%struct.imx_mu_priv = type { i32 }

@IMX_MU_xCR = common dso_local global i32 0, align 4
@IMX_MU_xSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Not handled interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_mu_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_mu_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca %struct.imx_mu_priv*, align 8
  %8 = alloca %struct.imx_mu_con_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mbox_chan*
  store %struct.mbox_chan* %13, %struct.mbox_chan** %6, align 8
  %14 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %15 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.imx_mu_priv* @to_imx_mu_priv(i32 %16)
  store %struct.imx_mu_priv* %17, %struct.imx_mu_priv** %7, align 8
  %18 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %19 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %18, i32 0, i32 0
  %20 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %19, align 8
  store %struct.imx_mu_con_priv* %20, %struct.imx_mu_con_priv** %8, align 8
  %21 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %7, align 8
  %22 = load i32, i32* @IMX_MU_xCR, align 4
  %23 = call i64 @imx_mu_read(%struct.imx_mu_priv* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %7, align 8
  %25 = load i32, i32* @IMX_MU_xSR, align 4
  %26 = call i64 @imx_mu_read(%struct.imx_mu_priv* %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %28 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %72 [
    i32 128, label %30
    i32 130, label %44
    i32 129, label %58
  ]

30:                                               ; preds = %2
  %31 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %32 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IMX_MU_xSR_TEn(i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %37 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IMX_MU_xCR_TIEn(i32 %38)
  %40 = and i64 %35, %39
  %41 = and i64 %34, %40
  %42 = load i64, i64* %9, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %9, align 8
  br label %73

44:                                               ; preds = %2
  %45 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %46 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IMX_MU_xSR_RFn(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %51 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IMX_MU_xCR_RIEn(i32 %52)
  %54 = and i64 %49, %53
  %55 = and i64 %48, %54
  %56 = load i64, i64* %9, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %73

58:                                               ; preds = %2
  %59 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %60 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IMX_MU_xSR_GIPn(i32 %61)
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %65 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @IMX_MU_xCR_GIEn(i32 %66)
  %68 = and i64 %63, %67
  %69 = and i64 %62, %68
  %70 = load i64, i64* %9, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %9, align 8
  br label %73

72:                                               ; preds = %2
  br label %73

73:                                               ; preds = %72, %58, %44, %30
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @IRQ_NONE, align 4
  store i32 %77, i32* %3, align 4
  br label %138

78:                                               ; preds = %73
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %81 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IMX_MU_xSR_TEn(i32 %82)
  %84 = icmp eq i64 %79, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %7, align 8
  %87 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %88 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IMX_MU_xCR_TIEn(i32 %89)
  %91 = call i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv* %86, i32 0, i64 %90)
  %92 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %93 = call i32 @mbox_chan_txdone(%struct.mbox_chan* %92, i32 0)
  br label %136

94:                                               ; preds = %78
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %97 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @IMX_MU_xSR_RFn(i32 %98)
  %100 = icmp eq i64 %95, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %7, align 8
  %103 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %104 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IMX_MU_xRRn(i32 %105)
  %107 = call i64 @imx_mu_read(%struct.imx_mu_priv* %102, i32 %106)
  store i64 %107, i64* %11, align 8
  %108 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %109 = bitcast i64* %11 to i8*
  %110 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %108, i8* %109)
  br label %135

111:                                              ; preds = %94
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %114 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @IMX_MU_xSR_GIPn(i32 %115)
  %117 = icmp eq i64 %112, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %7, align 8
  %120 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %8, align 8
  %121 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @IMX_MU_xSR_GIPn(i32 %122)
  %124 = load i32, i32* @IMX_MU_xSR, align 4
  %125 = call i32 @imx_mu_write(%struct.imx_mu_priv* %119, i64 %123, i32 %124)
  %126 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %127 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %126, i8* null)
  br label %134

128:                                              ; preds = %111
  %129 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %7, align 8
  %130 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_warn_ratelimited(i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* @IRQ_NONE, align 4
  store i32 %133, i32* %3, align 4
  br label %138

134:                                              ; preds = %118
  br label %135

135:                                              ; preds = %134, %101
  br label %136

136:                                              ; preds = %135, %85
  %137 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %128, %76
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.imx_mu_priv* @to_imx_mu_priv(i32) #1

declare dso_local i64 @imx_mu_read(%struct.imx_mu_priv*, i32) #1

declare dso_local i64 @IMX_MU_xSR_TEn(i32) #1

declare dso_local i64 @IMX_MU_xCR_TIEn(i32) #1

declare dso_local i64 @IMX_MU_xSR_RFn(i32) #1

declare dso_local i64 @IMX_MU_xCR_RIEn(i32) #1

declare dso_local i64 @IMX_MU_xSR_GIPn(i32) #1

declare dso_local i64 @IMX_MU_xCR_GIEn(i32) #1

declare dso_local i32 @imx_mu_xcr_rmw(%struct.imx_mu_priv*, i32, i64) #1

declare dso_local i32 @mbox_chan_txdone(%struct.mbox_chan*, i32) #1

declare dso_local i32 @IMX_MU_xRRn(i32) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, i8*) #1

declare dso_local i32 @imx_mu_write(%struct.imx_mu_priv*, i64, i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
