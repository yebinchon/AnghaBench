; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_gpio_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_gpio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ts5500_priv = type { i32, %struct.ts5500_dio* }
%struct.ts5500_dio = type { i32, i32, i32, i32, i32, i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @ts5500_gpio_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts5500_gpio_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ts5500_priv*, align 8
  %9 = alloca %struct.ts5500_dio, align 8
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %12 = call %struct.ts5500_priv* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.ts5500_priv* %12, %struct.ts5500_priv** %8, align 8
  %13 = load %struct.ts5500_priv*, %struct.ts5500_priv** %8, align 8
  %14 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %13, i32 0, i32 1
  %15 = load %struct.ts5500_dio*, %struct.ts5500_dio** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %15, i64 %17
  %19 = bitcast %struct.ts5500_dio* %9 to i8*
  %20 = bitcast %struct.ts5500_dio* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  %21 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %3
  %28 = load %struct.ts5500_priv*, %struct.ts5500_priv** %8, align 8
  %29 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ts5500_set_mask(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %27
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ts5500_set_mask(i32 %46, i32 %48)
  br label %56

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ts5500_clear_mask(i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.ts5500_priv*, %struct.ts5500_priv** %8, align 8
  %58 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.ts5500_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ts5500_set_mask(i32, i32) #1

declare dso_local i32 @ts5500_clear_mask(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
