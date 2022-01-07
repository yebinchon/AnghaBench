; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm97xx = type { i32, %struct.device* }
%struct.wm97xx_pdata = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @wm97xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm97xx_pdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.wm97xx_pdata* @dev_get_platdata(%struct.device* %7)
  store %struct.wm97xx_pdata* %8, %struct.wm97xx_pdata** %6, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wm97xx* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.wm97xx* %11, %struct.wm97xx** %4, align 8
  %12 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %13 = icmp ne %struct.wm97xx* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %20 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %19, i32 0, i32 1
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @to_ac97_t(%struct.device* %21)
  %23 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %24 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %26 = call i32 @_wm97xx_probe(%struct.wm97xx* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %17
  %32 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %33 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %6, align 8
  %34 = icmp ne %struct.wm97xx_pdata* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %6, align 8
  %37 = getelementptr inbounds %struct.wm97xx_pdata, %struct.wm97xx_pdata* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32* [ %38, %35 ], [ null, %39 ]
  %42 = call i32 @wm97xx_add_battery(%struct.wm97xx* %32, i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %45
  %49 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %50 = call i32 @wm97xx_unregister_touch(%struct.wm97xx* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %46, %29, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.wm97xx_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.wm97xx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @to_ac97_t(%struct.device*) #1

declare dso_local i32 @_wm97xx_probe(%struct.wm97xx*) #1

declare dso_local i32 @wm97xx_add_battery(%struct.wm97xx*, i32*) #1

declare dso_local i32 @wm97xx_unregister_touch(%struct.wm97xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
