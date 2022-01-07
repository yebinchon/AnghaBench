; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcie-idio-24.c_idio_24_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcie-idio-24.c_idio_24_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.idio_24_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @idio_24_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idio_24_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idio_24_gpio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.idio_24_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.idio_24_gpio* %10, %struct.idio_24_gpio** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = urem i32 %11, 8
  %13 = call i64 @BIT(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = call i64 @BIT(i32 1)
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %19 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 8
  %22 = call i64 @ioread8(i32* %21)
  %23 = load i64, i64* %7, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %137

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %30, 16
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %34 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 7
  %37 = call i64 @ioread8(i32* %36)
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %137

44:                                               ; preds = %29
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %45, 24
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %49 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = call i64 @ioread8(i32* %51)
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %137

59:                                               ; preds = %44
  %60 = load i32, i32* %5, align 4
  %61 = icmp ult i32 %60, 32
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %64 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = call i64 @ioread8(i32* %66)
  %68 = load i64, i64* %7, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %137

74:                                               ; preds = %59
  %75 = load i32, i32* %5, align 4
  %76 = icmp ult i32 %75, 40
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %79 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = call i64 @ioread8(i32* %81)
  %83 = load i64, i64* %7, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %137

89:                                               ; preds = %74
  %90 = load i32, i32* %5, align 4
  %91 = icmp ult i32 %90, 48
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %94 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = call i64 @ioread8(i32* %96)
  %98 = load i64, i64* %7, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %137

104:                                              ; preds = %89
  %105 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %106 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = call i64 @ioread8(i32* %108)
  %110 = load i64, i64* %8, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %104
  %114 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %115 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = call i64 @ioread8(i32* %117)
  %119 = load i64, i64* %7, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %3, align 4
  br label %137

125:                                              ; preds = %104
  %126 = load %struct.idio_24_gpio*, %struct.idio_24_gpio** %6, align 8
  %127 = getelementptr inbounds %struct.idio_24_gpio, %struct.idio_24_gpio* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = call i64 @ioread8(i32* %129)
  %131 = load i64, i64* %7, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %125, %113, %92, %77, %62, %47, %32, %17
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.idio_24_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @ioread8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
