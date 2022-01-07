; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_set_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-74x164.c_gen_74x164_set_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.gen_74x164_chip = type { i32, i64*, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i64*, i64*)* @gen_74x164_set_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_74x164_set_multiple(%struct.gpio_chip* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.gen_74x164_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = call %struct.gen_74x164_chip* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.gen_74x164_chip* %14, %struct.gen_74x164_chip** %7, align 8
  %15 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %16 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %8, align 4
  %18 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %19 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  br label %23

23:                                               ; preds = %79, %3
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %26 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %84

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = urem i64 %35, 8
  %37 = load i32, i32* @BITS_PER_BYTE, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %36, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i64*, i64** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = lshr i64 %45, %47
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %29
  br label %79

52:                                               ; preds = %29
  %53 = load i64, i64* %12, align 8
  %54 = xor i64 %53, -1
  %55 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %56 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, %54
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = lshr i64 %67, %69
  %71 = and i64 %62, %70
  %72 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %73 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = or i64 %77, %71
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %52, %51
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %11, align 8
  br label %23

84:                                               ; preds = %23
  %85 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %86 = call i32 @__gen_74x164_write_config(%struct.gen_74x164_chip* %85)
  %87 = load %struct.gen_74x164_chip*, %struct.gen_74x164_chip** %7, align 8
  %88 = getelementptr inbounds %struct.gen_74x164_chip, %struct.gen_74x164_chip* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  ret void
}

declare dso_local %struct.gen_74x164_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__gen_74x164_write_config(%struct.gen_74x164_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
