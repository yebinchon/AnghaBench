; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.max77843_muic_info = type { i32, %struct.max77693_dev* }
%struct.max77693_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77843_muic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.max77843_muic_info*, align 8
  %4 = alloca %struct.max77693_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.max77843_muic_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.max77843_muic_info* %6, %struct.max77843_muic_info** %3, align 8
  %7 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %8 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %7, i32 0, i32 1
  %9 = load %struct.max77693_dev*, %struct.max77693_dev** %8, align 8
  store %struct.max77693_dev* %9, %struct.max77693_dev** %4, align 8
  %10 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %11 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %10, i32 0, i32 0
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.max77693_dev*, %struct.max77693_dev** %4, align 8
  %14 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.max77693_dev*, %struct.max77693_dev** %4, align 8
  %17 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_del_irq_chip(i32 %15, i32 %18)
  %20 = load %struct.max77693_dev*, %struct.max77693_dev** %4, align 8
  %21 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i2c_unregister_device(i32 %22)
  ret i32 0
}

declare dso_local %struct.max77843_muic_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
