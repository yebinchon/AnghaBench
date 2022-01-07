; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap-keypad.c_omap_kp_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap-keypad.c_omap_kp_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.omap_kp = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@kp_enable_mutex = common dso_local global i32 0, align 4
@kp_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @omap_kp_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_kp_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.omap_kp*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.omap_kp* @dev_get_drvdata(%struct.device* %12)
  store %struct.omap_kp* %13, %struct.omap_kp** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %54

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %54

29:                                               ; preds = %23, %20
  %30 = call i32 @mutex_lock(i32* @kp_enable_mutex)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @kp_enable, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.omap_kp*, %struct.omap_kp** %10, align 8
  %39 = getelementptr inbounds %struct.omap_kp, %struct.omap_kp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @enable_irq(i32 %40)
  br label %47

42:                                               ; preds = %34
  %43 = load %struct.omap_kp*, %struct.omap_kp** %10, align 8
  %44 = getelementptr inbounds %struct.omap_kp, %struct.omap_kp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @disable_irq(i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* @kp_enable, align 4
  br label %49

49:                                               ; preds = %47, %29
  %50 = call i32 @mutex_unlock(i32* @kp_enable_mutex)
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @strnlen(i8* %51, i64 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %26, %17
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.omap_kp* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
