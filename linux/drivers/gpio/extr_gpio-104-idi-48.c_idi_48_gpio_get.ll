; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idi-48.c_idi_48_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-104-idi-48.c_idi_48_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.idi_48_gpio = type { i64 }

@__const.idi_48_gpio_get.register_offset = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 4, i32 5, i32 6], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @idi_48_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idi_48_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idi_48_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.idi_48_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.idi_48_gpio* %12, %struct.idi_48_gpio** %6, align 8
  %13 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([6 x i32]* @__const.idi_48_gpio_get.register_offset to i8*), i64 24, i1 false)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %46, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %15, 48
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 8
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = udiv i32 %23, 8
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %28, %29
  %31 = call i32 @BIT(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.idi_48_gpio*, %struct.idi_48_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.idi_48_gpio, %struct.idi_48_gpio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @inb(i64 %37)
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 8
  store i32 %48, i32* %7, align 4
  br label %14

49:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.idi_48_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
