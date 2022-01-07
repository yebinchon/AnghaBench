; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_store_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_store_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_led_data = type { %struct.mlxreg_core_data*, %struct.mlxreg_led_priv_data* }
%struct.mlxreg_core_data = type { i32, i32, i64 }
%struct.mlxreg_led_priv_data = type { i32, %struct.mlxreg_core_platform_data* }
%struct.mlxreg_core_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxreg_led_data*, i32)* @mlxreg_led_store_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_led_store_hw(%struct.mlxreg_led_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxreg_led_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxreg_led_priv_data*, align 8
  %6 = alloca %struct.mlxreg_core_platform_data*, align 8
  %7 = alloca %struct.mlxreg_core_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxreg_led_data* %0, %struct.mlxreg_led_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %3, align 8
  %12 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %11, i32 0, i32 1
  %13 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %12, align 8
  store %struct.mlxreg_led_priv_data* %13, %struct.mlxreg_led_priv_data** %5, align 8
  %14 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %15 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %14, i32 0, i32 1
  %16 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %15, align 8
  store %struct.mlxreg_core_platform_data* %16, %struct.mlxreg_core_platform_data** %6, align 8
  %17 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %3, align 8
  %18 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %17, i32 0, i32 0
  %19 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %18, align 8
  store %struct.mlxreg_core_data* %19, %struct.mlxreg_core_data** %7, align 8
  %20 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %21 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %6, align 8
  %24 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %27 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_read(i32 %25, i32 %28, i32* %8)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %72

33:                                               ; preds = %2
  %34 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %35 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %38 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ror32(i32 %36, i64 %39)
  %41 = icmp eq i32 %40, 240
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %45 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @rol32(i32 %43, i64 %46)
  br label %55

48:                                               ; preds = %33
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %51 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 4
  %54 = call i32 @rol32(i32 %49, i64 %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = phi i32 [ %47, %42 ], [ %54, %48 ]
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %59 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %6, align 8
  %65 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %7, align 8
  %68 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @regmap_write(i32 %66, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %55, %32
  %73 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %74 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ror32(i32, i64) #1

declare dso_local i32 @rol32(i32, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
