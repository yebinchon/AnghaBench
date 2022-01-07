; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_last_address_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_last_address_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32 }

@LAST_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master_gpio*, i32, i32, i32)* @last_address_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @last_address_update(%struct.fsi_master_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fsi_master_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load i32, i32* @LAST_ADDR_INVALID, align 4
  %13 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %14 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %24

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 3
  %18 = shl i32 %17, 21
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, -4
  %21 = or i32 %18, %20
  %22 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %5, align 8
  %23 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %15, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
