; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32, i32, i32 }

@ID_P_REP_AFTER_RD = common dso_local global i32 0, align 4
@ICMCR = common dso_local global i32 0, align 4
@RCAR_BUS_MASK_DATA = common dso_local global i32 0, align 4
@ICMSR = common dso_local global i32 0, align 4
@ICMIER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MAL = common dso_local global i32 0, align 4
@ID_DONE = common dso_local global i32 0, align 4
@ID_ARBLOST = common dso_local global i32 0, align 4
@MNR = common dso_local global i32 0, align 4
@RCAR_IRQ_STOP = common dso_local global i32 0, align 4
@ID_NACK = common dso_local global i32 0, align 4
@MST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rcar_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rcar_i2c_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rcar_i2c_priv*
  store %struct.rcar_i2c_priv* %10, %struct.rcar_i2c_priv** %6, align 8
  %11 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %12 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ID_P_REP_AFTER_RD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %23 = load i32, i32* @ICMCR, align 4
  %24 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %26 = load i32, i32* @ICMCR, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RCAR_BUS_MASK_DATA, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %2
  %32 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %33 = load i32, i32* @ICMSR, align 4
  %34 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %36 = load i32, i32* @ICMIER, align 4
  %37 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %31
  %43 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %44 = call i64 @rcar_i2c_slave_irq(%struct.rcar_i2c_priv* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %125

48:                                               ; preds = %42
  %49 = load i32, i32* @IRQ_NONE, align 4
  store i32 %49, i32* %3, align 4
  br label %125

50:                                               ; preds = %31
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MAL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @ID_DONE, align 4
  %57 = load i32, i32* @ID_ARBLOST, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %60 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %106

63:                                               ; preds = %50
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MNR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %70 = load i32, i32* @ICMIER, align 4
  %71 = load i32, i32* @RCAR_IRQ_STOP, align 4
  %72 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @ID_NACK, align 4
  %74 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %75 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %106

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MST, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %85 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @ID_DONE, align 4
  %89 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %90 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %106

93:                                               ; preds = %78
  %94 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %95 = call i64 @rcar_i2c_is_recv(%struct.rcar_i2c_priv* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @rcar_i2c_irq_recv(%struct.rcar_i2c_priv* %98, i32 %99)
  br label %105

101:                                              ; preds = %93
  %102 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @rcar_i2c_irq_send(%struct.rcar_i2c_priv* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %83, %68, %55
  %107 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %108 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ID_DONE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %115 = load i32, i32* @ICMIER, align 4
  %116 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %114, i32 %115, i32 0)
  %117 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %118 = load i32, i32* @ICMSR, align 4
  %119 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %117, i32 %118, i32 0)
  %120 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %6, align 8
  %121 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %120, i32 0, i32 1
  %122 = call i32 @wake_up(i32* %121)
  br label %123

123:                                              ; preds = %113, %106
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %48, %46
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcar_i2c_read(%struct.rcar_i2c_priv*, i32) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

declare dso_local i64 @rcar_i2c_slave_irq(%struct.rcar_i2c_priv*) #1

declare dso_local i64 @rcar_i2c_is_recv(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @rcar_i2c_irq_recv(%struct.rcar_i2c_priv*, i32) #1

declare dso_local i32 @rcar_i2c_irq_send(%struct.rcar_i2c_priv*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
