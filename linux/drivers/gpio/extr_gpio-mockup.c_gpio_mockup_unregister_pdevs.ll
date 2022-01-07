; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mockup.c_gpio_mockup_unregister_pdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mockup.c_gpio_mockup_unregister_pdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@GPIO_MOCKUP_MAX_GC = common dso_local global i32 0, align 4
@gpio_mockup_pdevs = common dso_local global %struct.platform_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gpio_mockup_unregister_pdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_mockup_unregister_pdevs() #0 {
  %1 = alloca %struct.platform_device*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @GPIO_MOCKUP_MAX_GC, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load %struct.platform_device**, %struct.platform_device*** @gpio_mockup_pdevs, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %8, i64 %10
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %1, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %1, align 8
  %14 = icmp ne %struct.platform_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.platform_device*, %struct.platform_device** %1, align 8
  %17 = call i32 @platform_device_unregister(%struct.platform_device* %16)
  br label %18

18:                                               ; preds = %15, %7
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %3

22:                                               ; preds = %3
  ret void
}

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
