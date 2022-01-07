; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_irq_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_irq_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32* }

@MDE = common dso_local global i32 0, align 4
@ICRXTX = common dso_local global i32 0, align 4
@ID_LAST_MSG = common dso_local global i32 0, align 4
@ICMCR = common dso_local global i32 0, align 4
@RCAR_BUS_PHASE_STOP = common dso_local global i32 0, align 4
@ICMSR = common dso_local global i32 0, align 4
@RCAR_IRQ_ACK_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*, i32)* @rcar_i2c_irq_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_irq_send(%struct.rcar_i2c_priv* %0, i32 %1) #0 {
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
  %10 = load i32, i32* @MDE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %21 = call i64 @rcar_i2c_dma(%struct.rcar_i2c_priv* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %70

24:                                               ; preds = %19, %14
  %25 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %34 = load i32, i32* @ICRXTX, align 4
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %33, i32 %34, i32 %43)
  %45 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %65

49:                                               ; preds = %24
  %50 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ID_LAST_MSG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %58 = load i32, i32* @ICMCR, align 4
  %59 = load i32, i32* @RCAR_BUS_PHASE_STOP, align 4
  %60 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %57, i32 %58, i32 %59)
  br label %64

61:                                               ; preds = %49
  %62 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %63 = call i32 @rcar_i2c_next_msg(%struct.rcar_i2c_priv* %62)
  br label %70

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %67 = load i32, i32* @ICMSR, align 4
  %68 = load i32, i32* @RCAR_IRQ_ACK_SEND, align 4
  %69 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %61, %23, %13
  ret void
}

declare dso_local i64 @rcar_i2c_dma(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

declare dso_local i32 @rcar_i2c_next_msg(%struct.rcar_i2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
