; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_update_split_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_update_split_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*)* @update_split_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_split_timeout(%struct.fw_card* %0) #0 {
  %2 = alloca %struct.fw_card*, align 8
  %3 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %2, align 8
  %4 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %5 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 %6, 8000
  %8 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %9 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 19
  %12 = add nsw i32 %7, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @clamp(i32 %13, i32 800, i32 24000)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %17 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = mul i32 %18, %19
  %21 = call i32 @DIV_ROUND_UP(i32 %20, i32 8000)
  %22 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %23 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
