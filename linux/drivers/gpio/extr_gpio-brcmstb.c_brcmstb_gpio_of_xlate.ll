; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-brcmstb.c_brcmstb_gpio_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32, i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.brcmstb_gpio_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmstb_gpio_bank = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Received request for invalid GPIO offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i32*)* @brcmstb_gpio_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_gpio_of_xlate(%struct.gpio_chip* %0, %struct.of_phandle_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.of_phandle_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.brcmstb_gpio_priv*, align 8
  %9 = alloca %struct.brcmstb_gpio_bank*, align 8
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.brcmstb_gpio_priv* @brcmstb_gpio_gc_to_priv(%struct.gpio_chip* %11)
  store %struct.brcmstb_gpio_priv* %12, %struct.brcmstb_gpio_priv** %8, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %14 = call %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.brcmstb_gpio_bank* %14, %struct.brcmstb_gpio_bank** %9, align 8
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i64 @WARN_ON(i32 1)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %94

23:                                               ; preds = %3
  %24 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %25 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %94

37:                                               ; preds = %23
  %38 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %39 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %47 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = sub nsw i32 %42, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %53 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %37
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %94

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.brcmstb_gpio_bank*, %struct.brcmstb_gpio_bank** %9, align 8
  %65 = getelementptr inbounds %struct.brcmstb_gpio_bank, %struct.brcmstb_gpio_bank* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load %struct.brcmstb_gpio_priv*, %struct.brcmstb_gpio_priv** %8, align 8
  %73 = getelementptr inbounds %struct.brcmstb_gpio_priv, %struct.brcmstb_gpio_priv* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %77 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_warn_ratelimited(i32* %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %71, %62
  %83 = load i32*, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %87 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %82
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %59, %34, %19
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.brcmstb_gpio_priv* @brcmstb_gpio_gc_to_priv(%struct.gpio_chip*) #1

declare dso_local %struct.brcmstb_gpio_bank* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
