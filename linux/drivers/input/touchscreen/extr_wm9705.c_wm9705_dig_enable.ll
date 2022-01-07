; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_dig_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm9705.c_wm9705_dig_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32* }

@AC97_WM97XX_DIGITISER2 = common dso_local global i32 0, align 4
@WM97XX_PRP_DET_DIG = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*, i32)* @wm9705_dig_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm9705_dig_enable(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %9 = load i32, i32* @AC97_WM97XX_DIGITISER2, align 4
  %10 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %11 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WM97XX_PRP_DET_DIG, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @wm97xx_reg_write(%struct.wm97xx* %8, i32 %9, i32 %16)
  %18 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %19 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %20 = call i32 @wm97xx_reg_read(%struct.wm97xx* %18, i32 %19)
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %23 = load i32, i32* @AC97_WM97XX_DIGITISER2, align 4
  %24 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %25 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WM97XX_PRP_DET_DIG, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @wm97xx_reg_write(%struct.wm97xx* %22, i32 %23, i32 %31)
  br label %33

33:                                               ; preds = %21, %7
  ret void
}

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
