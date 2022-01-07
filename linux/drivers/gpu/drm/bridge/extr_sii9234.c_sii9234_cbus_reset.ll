; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cbus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_cbus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i32 }

@MHL_TX_SRST = common dso_local global i32 0, align 4
@BIT_CBUS_RESET = common dso_local global i32 0, align 4
@T_SRC_CBUS_DEGLITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*)* @sii9234_cbus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_cbus_reset(%struct.sii9234* %0) #0 {
  %2 = alloca %struct.sii9234*, align 8
  %3 = alloca i32, align 4
  store %struct.sii9234* %0, %struct.sii9234** %2, align 8
  %4 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %5 = load i32, i32* @MHL_TX_SRST, align 4
  %6 = load i32, i32* @BIT_CBUS_RESET, align 4
  %7 = call i32 @mhl_tx_writebm(%struct.sii9234* %4, i32 %5, i32 -1, i32 %6)
  %8 = load i32, i32* @T_SRC_CBUS_DEGLITCH, align 4
  %9 = call i32 @msleep(i32 %8)
  %10 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %11 = load i32, i32* @MHL_TX_SRST, align 4
  %12 = load i32, i32* @BIT_CBUS_RESET, align 4
  %13 = call i32 @mhl_tx_writebm(%struct.sii9234* %10, i32 %11, i32 0, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 224, %19
  %21 = call i32 @cbus_writeb(%struct.sii9234* %18, i32 %20, i32 242)
  %22 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 240, %23
  %25 = call i32 @cbus_writeb(%struct.sii9234* %22, i32 %24, i32 242)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %31 = call i32 @sii9234_clear_error(%struct.sii9234* %30)
  ret i32 %31
}

declare dso_local i32 @mhl_tx_writebm(%struct.sii9234*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cbus_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @sii9234_clear_error(%struct.sii9234*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
