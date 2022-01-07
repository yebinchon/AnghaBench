; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-card.c_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fw_card*, i32, i32, i32)* }

@PHY_BUS_SHORT_RESET = common dso_local global i32 0, align 4
@PHY_BUS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32)* @reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_bus(%struct.fw_card* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 5, i32 1
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @PHY_BUS_SHORT_RESET, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @PHY_BUS_RESET, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %6, align 4
  %19 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %20 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fw_card*, i32, i32, i32)*, i32 (%struct.fw_card*, i32, i32, i32)** %22, align 8
  %24 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %23(%struct.fw_card* %24, i32 %25, i32 0, i32 %26)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
