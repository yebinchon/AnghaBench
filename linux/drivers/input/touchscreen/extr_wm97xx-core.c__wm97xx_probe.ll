; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c__wm97xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c__wm97xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }
%struct.wm97xx = type { i32, i8**, %struct.TYPE_4__*, i32, i32, i32 }

@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@WM97XX_ID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Device with vendor %04x is not a wm97xx\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@WM97xx_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"detected a wm97%02x codec\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Support for wm97%02x not compiled in.\0A\00", align 1
@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@AC97_GPIO_POLARITY = common dso_local global i32 0, align 4
@AC97_GPIO_STATUS = common dso_local global i32 0, align 4
@AC97_GPIO_STICKY = common dso_local global i32 0, align 4
@AC97_GPIO_WAKEUP = common dso_local global i32 0, align 4
@AC97_MISC_AFE = common dso_local global i32 0, align 4
@wm9705_codec = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@wm9712_codec = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@wm9713_codec = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @_wm97xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wm97xx_probe(%struct.wm97xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %6 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %5, i32 0, i32 5
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %12 = call i32 @dev_set_drvdata(i32 %10, %struct.wm97xx* %11)
  %13 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %14 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %15 = call i8* @wm97xx_reg_read(%struct.wm97xx* %13, i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @WM97XX_ID1, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %22 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %1
  %29 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %30 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %31 = call i8* @wm97xx_reg_read(%struct.wm97xx* %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %34 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @WM97xx_GENERIC, align 4
  %36 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %37 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %39 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %42 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 255
  %45 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %47 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  switch i32 %49, label %50 [
  ]

50:                                               ; preds = %28
  %51 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %52 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %55 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 255
  %58 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %50, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.wm97xx*) #1

declare dso_local i8* @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
