; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct7802_data = type { i32 }

@REG_START = common dso_local global i32 0, align 4
@REG_MODE = common dso_local global i32 0, align 4
@REG_VMON_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct7802_data*)* @nct7802_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7802_init_chip(%struct.nct7802_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nct7802_data*, align 8
  %4 = alloca i32, align 4
  store %struct.nct7802_data* %0, %struct.nct7802_data** %3, align 8
  %5 = load %struct.nct7802_data*, %struct.nct7802_data** %3, align 8
  %6 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REG_START, align 4
  %9 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 1, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.nct7802_data*, %struct.nct7802_data** %3, align 8
  %16 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REG_MODE, align 4
  %19 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 64, i32 64)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %14
  %25 = load %struct.nct7802_data*, %struct.nct7802_data** %3, align 8
  %26 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REG_VMON_ENABLE, align 4
  %29 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 3, i32 3)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %22, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
