; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_packet_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_packet_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32 }

@ADV7511_REG_PACKET_ENABLE0 = common dso_local global i32 0, align 4
@ADV7511_REG_PACKET_ENABLE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7511*, i32)* @adv7511_packet_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_packet_disable(%struct.adv7511* %0, i32 %1) #0 {
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %10 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ADV7511_REG_PACKET_ENABLE0, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 0)
  br label %15

15:                                               ; preds = %8, %2
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 65280
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = lshr i32 %20, 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %23 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ADV7511_REG_PACKET_ENABLE1, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %19, %15
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
