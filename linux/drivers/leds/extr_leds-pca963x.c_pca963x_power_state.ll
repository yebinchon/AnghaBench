; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca963x_led = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@PCA963X_MODE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca963x_led*)* @pca963x_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca963x_power_state(%struct.pca963x_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pca963x_led*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.pca963x_led* %0, %struct.pca963x_led** %3, align 8
  %6 = load %struct.pca963x_led*, %struct.pca963x_led** %3, align 8
  %7 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64* %9, i64** %4, align 8
  %10 = load %struct.pca963x_led*, %struct.pca963x_led** %3, align 8
  %11 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.pca963x_led*, %struct.pca963x_led** %3, align 8
  %16 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.pca963x_led*, %struct.pca963x_led** %3, align 8
  %22 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = call i32 @set_bit(i32 %23, i64* %24)
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.pca963x_led*, %struct.pca963x_led** %3, align 8
  %28 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64*, i64** %4, align 8
  %31 = call i32 @clear_bit(i32 %29, i64* %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %32
  %44 = load %struct.pca963x_led*, %struct.pca963x_led** %3, align 8
  %45 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PCA963X_MODE1, align 4
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %56

54:                                               ; preds = %43
  %55 = call i32 @BIT(i32 4)
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  %58 = call i32 @i2c_smbus_write_byte_data(i32 %48, i32 %49, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
