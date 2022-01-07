; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_gpio_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ts5500.c_ts5500_gpio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ts5500_priv = type { i32, %struct.ts5500_dio* }
%struct.ts5500_dio = type { i32, i32, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ts5500_gpio_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts5500_gpio_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ts5500_priv*, align 8
  %7 = alloca %struct.ts5500_dio, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.ts5500_priv* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ts5500_priv* %10, %struct.ts5500_priv** %6, align 8
  %11 = load %struct.ts5500_priv*, %struct.ts5500_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %11, i32 0, i32 1
  %13 = load %struct.ts5500_dio*, %struct.ts5500_dio** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %13, i64 %15
  %17 = bitcast %struct.ts5500_dio* %7 to i8*
  %18 = bitcast %struct.ts5500_dio* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %7, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %7, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %44

30:                                               ; preds = %25
  %31 = load %struct.ts5500_priv*, %struct.ts5500_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ts5500_dio, %struct.ts5500_dio* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ts5500_clear_mask(i32 %36, i32 %38)
  %40 = load %struct.ts5500_priv*, %struct.ts5500_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ts5500_priv, %struct.ts5500_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %30, %29, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ts5500_priv* @gpiochip_get_data(%struct.gpio_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ts5500_clear_mask(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
