; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tc3589x.c_tc3589x_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc3589x_gpio = type { %struct.TYPE_4__, %struct.tc3589x* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tc3589x = type { i32 }

@CACHE_NR_BANKS = common dso_local global i32 0, align 4
@TC3589x_GPIOMIS0 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@TC3589x_GPIOIC0 = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tc3589x_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_gpio_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc3589x_gpio*, align 8
  %7 = alloca %struct.tc3589x*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.tc3589x_gpio*
  store %struct.tc3589x_gpio* %18, %struct.tc3589x_gpio** %6, align 8
  %19 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %20 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %19, i32 0, i32 1
  %21 = load %struct.tc3589x*, %struct.tc3589x** %20, align 8
  store %struct.tc3589x* %21, %struct.tc3589x** %7, align 8
  %22 = load i32, i32* @CACHE_NR_BANKS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.tc3589x*, %struct.tc3589x** %7, align 8
  %27 = load i32, i32* @TC3589x_GPIOMIS0, align 4
  %28 = call i32 @ARRAY_SIZE(i32* %25)
  %29 = call i32 @tc3589x_block_read(%struct.tc3589x* %26, i32 %27, i32 %28, i32* %25)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %88

34:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %83, %34
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ARRAY_SIZE(i32* %25)
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %25, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %83

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %51, %47
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @__ffs(i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %54, 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %15, align 4
  %58 = load %struct.tc3589x_gpio*, %struct.tc3589x_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.tc3589x_gpio, %struct.tc3589x_gpio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @irq_find_mapping(i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @handle_nested_irq(i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %13, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.tc3589x*, %struct.tc3589x** %7, align 8
  %74 = load i64, i64* @TC3589x_GPIOIC0, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %25, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @tc3589x_reg_write(%struct.tc3589x* %73, i64 %77, i32 %81)
  br label %83

83:                                               ; preds = %72, %46
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %35

86:                                               ; preds = %35
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %32
  %89 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tc3589x_block_read(%struct.tc3589x*, i32, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @__ffs(i32) #2

declare dso_local i32 @irq_find_mapping(i32, i32) #2

declare dso_local i32 @handle_nested_irq(i32) #2

declare dso_local i32 @tc3589x_reg_write(%struct.tc3589x*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
