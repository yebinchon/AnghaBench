; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca963x_led = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PCA963X_MODE2 = common dso_local global i32 0, align 4
@PCA963X_MODE2_DMBLNK = common dso_local global i32 0, align 4
@PCA963X_LED_GRP_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pca963x_led*)* @pca963x_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca963x_blink(%struct.pca963x_led* %0) #0 {
  %2 = alloca %struct.pca963x_led*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pca963x_led* %0, %struct.pca963x_led** %2, align 8
  %8 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %9 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %16 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 4
  %19 = add nsw i32 %14, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %21 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCA963X_MODE2, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %28 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %29, 4
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 3, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %35 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %40 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %39, i32 0, i32 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %47 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @i2c_smbus_write_byte_data(i32 %38, i32 %45, i32 %48)
  %50 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %51 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %56 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %63 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @i2c_smbus_write_byte_data(i32 %54, i32 %61, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PCA963X_MODE2_DMBLNK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %1
  %71 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %72 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PCA963X_MODE2, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @PCA963X_MODE2_DMBLNK, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @i2c_smbus_write_byte_data(i32 %75, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %70, %1
  %82 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %83 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %88 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @i2c_smbus_read_byte_data(i32 %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @PCA963X_LED_GRP_PWM, align 4
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %97, %98
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %81
  %102 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %103 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %7, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* @PCA963X_LED_GRP_PWM, align 4
  %113 = load i32, i32* %6, align 4
  %114 = shl i32 %112, %113
  %115 = or i32 %111, %114
  %116 = call i32 @i2c_smbus_write_byte_data(i32 %106, i32 %107, i32 %115)
  br label %117

117:                                              ; preds = %101, %81
  %118 = load %struct.pca963x_led*, %struct.pca963x_led** %2, align 8
  %119 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %118, i32 0, i32 3
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  ret void
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
