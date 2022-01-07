; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_irq_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_irq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32* }

@MDR = common dso_local global i32 0, align 4
@MAT = common dso_local global i32 0, align 4
@ICRXTX = common dso_local global i32 0, align 4
@ID_LAST_MSG = common dso_local global i32 0, align 4
@ICMCR = common dso_local global i32 0, align 4
@RCAR_BUS_PHASE_STOP = common dso_local global i32 0, align 4
@RCAR_BUS_PHASE_START = common dso_local global i32 0, align 4
@ID_P_REP_AFTER_RD = common dso_local global i32 0, align 4
@ICMSR = common dso_local global i32 0, align 4
@RCAR_IRQ_ACK_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*, i32)* @rcar_i2c_irq_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_irq_recv(%struct.rcar_i2c_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_i2c_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_msg*, align 8
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %6, i32 0, i32 2
  %8 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  store %struct.i2c_msg* %8, %struct.i2c_msg** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MDR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %102

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %21 = call i32 @rcar_i2c_dma(%struct.rcar_i2c_priv* %20)
  br label %47

22:                                               ; preds = %14
  %23 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %32 = load i32, i32* @ICRXTX, align 4
  %33 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %31, i32 %32)
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32 %33, i32* %41, align 4
  %42 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %30, %22
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %47
  %57 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %58 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ID_LAST_MSG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %65 = load i32, i32* @ICMCR, align 4
  %66 = load i32, i32* @RCAR_BUS_PHASE_STOP, align 4
  %67 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %64, i32 %65, i32 %66)
  br label %78

68:                                               ; preds = %56
  %69 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %70 = load i32, i32* @ICMCR, align 4
  %71 = load i32, i32* @RCAR_BUS_PHASE_START, align 4
  %72 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @ID_P_REP_AFTER_RD, align 4
  %74 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %68, %63
  br label %79

79:                                               ; preds = %78, %47
  %80 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %89 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ID_LAST_MSG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %96 = call i32 @rcar_i2c_next_msg(%struct.rcar_i2c_priv* %95)
  br label %102

97:                                               ; preds = %87, %79
  %98 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %99 = load i32, i32* @ICMSR, align 4
  %100 = load i32, i32* @RCAR_IRQ_ACK_RECV, align 4
  %101 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %13, %97, %94
  ret void
}

declare dso_local i32 @rcar_i2c_dma(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @rcar_i2c_read(%struct.rcar_i2c_priv*, i32) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

declare dso_local i32 @rcar_i2c_next_msg(%struct.rcar_i2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
