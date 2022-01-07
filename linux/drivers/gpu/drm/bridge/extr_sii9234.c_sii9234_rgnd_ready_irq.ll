; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_rgnd_ready_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_rgnd_ready_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i64, i32 }

@ST_D3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"RGND_READY_INT\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"sii9234_reset() failed\0A\00", align 1
@ST_FAILURE = common dso_local global i32 0, align 4
@ST_RGND_INIT = common dso_local global i32 0, align 4
@MHL_TX_STAT2_REG = common dso_local global i32 0, align 4
@RGND_INTP_MASK = common dso_local global i32 0, align 4
@RGND_INTP_1K = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"RGND is not 1k\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"RGND 1K!!\0A\00", align 1
@MHL_TX_DISC_CTRL4_REG = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL5_REG = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL6_REG = common dso_local global i32 0, align 4
@T_SRC_VBUS_CBUS_TO_STABLE = common dso_local global i32 0, align 4
@ST_RGND_1K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*)* @sii9234_rgnd_ready_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_rgnd_ready_irq(%struct.sii9234* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sii9234*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sii9234* %0, %struct.sii9234** %3, align 8
  %6 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %7 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ST_D3, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %13 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %17 = call i32 @sii9234_hw_reset(%struct.sii9234* %16)
  %18 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %19 = call i32 @sii9234_reset(%struct.sii9234* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %24 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ST_FAILURE, align 4
  store i32 %27, i32* %2, align 4
  br label %83

28:                                               ; preds = %11
  %29 = load i32, i32* @ST_RGND_INIT, align 4
  store i32 %29, i32* %2, align 4
  br label %83

30:                                               ; preds = %1
  %31 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %32 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @ST_RGND_INIT, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ST_FAILURE, align 4
  store i32 %38, i32* %2, align 4
  br label %83

39:                                               ; preds = %30
  %40 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %41 = load i32, i32* @MHL_TX_STAT2_REG, align 4
  %42 = call i32 @mhl_tx_readb(%struct.sii9234* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %44 = call i64 @sii9234_clear_error(%struct.sii9234* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @ST_FAILURE, align 4
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RGND_INTP_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @RGND_INTP_1K, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %56 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ST_RGND_INIT, align 4
  store i32 %59, i32* %2, align 4
  br label %83

60:                                               ; preds = %48
  %61 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %62 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %66 = load i32, i32* @MHL_TX_DISC_CTRL4_REG, align 4
  %67 = call i32 @mhl_tx_writebm(%struct.sii9234* %65, i32 %66, i32 -1, i32 140)
  %68 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %69 = load i32, i32* @MHL_TX_DISC_CTRL5_REG, align 4
  %70 = call i32 @mhl_tx_writeb(%struct.sii9234* %68, i32 %69, i32 119)
  %71 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %72 = load i32, i32* @MHL_TX_DISC_CTRL6_REG, align 4
  %73 = call i32 @mhl_tx_writebm(%struct.sii9234* %71, i32 %72, i32 -1, i32 5)
  %74 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %75 = call i64 @sii9234_clear_error(%struct.sii9234* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %60
  %78 = load i32, i32* @ST_FAILURE, align 4
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %60
  %80 = load i32, i32* @T_SRC_VBUS_CBUS_TO_STABLE, align 4
  %81 = call i32 @msleep(i32 %80)
  %82 = load i32, i32* @ST_RGND_1K, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %77, %54, %46, %37, %28, %22
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sii9234_hw_reset(%struct.sii9234*) #1

declare dso_local i32 @sii9234_reset(%struct.sii9234*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mhl_tx_readb(%struct.sii9234*, i32) #1

declare dso_local i64 @sii9234_clear_error(%struct.sii9234*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mhl_tx_writebm(%struct.sii9234*, i32, i32, i32) #1

declare dso_local i32 @mhl_tx_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
