; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_prepare_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_prepare_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32, i32, i32, i64 }

@ID_LAST_MSG = common dso_local global i32 0, align 4
@ICMAR = common dso_local global i32 0, align 4
@ID_FIRST_MSG = common dso_local global i32 0, align 4
@ICMSR = common dso_local global i32 0, align 4
@ICMCR = common dso_local global i32 0, align 4
@RCAR_BUS_PHASE_START = common dso_local global i32 0, align 4
@ID_P_REP_AFTER_RD = common dso_local global i32 0, align 4
@ICMIER = common dso_local global i32 0, align 4
@RCAR_IRQ_RECV = common dso_local global i32 0, align 4
@RCAR_IRQ_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_i2c_priv*)* @rcar_i2c_prepare_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_i2c_prepare_msg(%struct.rcar_i2c_priv* %0) #0 {
  %2 = alloca %struct.rcar_i2c_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %2, align 8
  %4 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %5 = call i32 @rcar_i2c_is_recv(%struct.rcar_i2c_priv* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %11 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %13 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @ID_LAST_MSG, align 4
  %18 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %19 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %24 = load i32, i32* @ICMAR, align 4
  %25 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %26 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @i2c_8bit_addr_from_msg(i32 %27)
  %29 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %23, i32 %24, i32 %28)
  %30 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %31 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ID_FIRST_MSG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %22
  %37 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %38 = load i32, i32* @ICMSR, align 4
  %39 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %37, i32 %38, i32 0)
  %40 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %41 = load i32, i32* @ICMCR, align 4
  %42 = load i32, i32* @RCAR_BUS_PHASE_START, align 4
  %43 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %40, i32 %41, i32 %42)
  br label %67

44:                                               ; preds = %22
  %45 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %46 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ID_P_REP_AFTER_RD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* @ID_P_REP_AFTER_RD, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %55 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %63

58:                                               ; preds = %44
  %59 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %60 = load i32, i32* @ICMCR, align 4
  %61 = load i32, i32* @RCAR_BUS_PHASE_START, align 4
  %62 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %65 = load i32, i32* @ICMSR, align 4
  %66 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %36
  %68 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %2, align 8
  %69 = load i32, i32* @ICMIER, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @RCAR_IRQ_RECV, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @RCAR_IRQ_SEND, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %68, i32 %69, i32 %77)
  ret void
}

declare dso_local i32 @rcar_i2c_is_recv(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
