; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_update_int_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_update_int_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_gpio = type { i64 }

@int_en_register_offset = common dso_local global i64* null, align 8
@gpio_int_type2 = common dso_local global i32* null, align 8
@int_type2_register_offset = common dso_local global i64* null, align 8
@gpio_int_type1 = common dso_local global i32* null, align 8
@int_type1_register_offset = common dso_local global i64* null, align 8
@gpio_int_unmasked = common dso_local global i32* null, align 8
@gpio_int_enabled = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_gpio*, i32)* @ep93xx_gpio_update_int_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_gpio_update_int_params(%struct.ep93xx_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.ep93xx_gpio*, align 8
  %4 = alloca i32, align 4
  store %struct.ep93xx_gpio* %0, %struct.ep93xx_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ugt i32 %5, 2
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %3, align 8
  %10 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** @int_en_register_offset, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %11, %16
  %18 = call i32 @writeb_relaxed(i32 0, i64 %17)
  %19 = load i32*, i32** @gpio_int_type2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %3, align 8
  %25 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** @int_type2_register_offset, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = call i32 @writeb_relaxed(i32 %23, i64 %32)
  %34 = load i32*, i32** @gpio_int_type1, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %3, align 8
  %40 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** @int_type1_register_offset, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = call i32 @writeb_relaxed(i32 %38, i64 %47)
  %49 = load i32*, i32** @gpio_int_unmasked, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @gpio_int_enabled, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %53, %58
  %60 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %3, align 8
  %61 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** @int_en_register_offset, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %62, %67
  %69 = call i32 @writeb(i32 %59, i64 %68)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
