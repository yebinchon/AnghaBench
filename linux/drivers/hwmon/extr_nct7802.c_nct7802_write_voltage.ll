; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_write_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_write_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct7802_data = type { i32, i32 }

@REG_VOLTAGE_LIMIT_MSB_SHIFT = common dso_local global i32** null, align 8
@nct7802_vmul = common dso_local global i32* null, align 8
@REG_VOLTAGE_LIMIT_LSB = common dso_local global i32** null, align 8
@REG_VOLTAGE_LIMIT_MSB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct7802_data*, i32, i32, i64)* @nct7802_write_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7802_write_voltage(%struct.nct7802_data* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.nct7802_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nct7802_data* %0, %struct.nct7802_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32**, i32*** @REG_VOLTAGE_LIMIT_MSB_SHIFT, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %11, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 8, %20
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i32*, i32** @nct7802_vmul, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 1023, %27
  %29 = call i64 @clamp_val(i64 %22, i32 0, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** @nct7802_vmul, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @DIV_ROUND_CLOSEST(i64 %30, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %38 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %41 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32**, i32*** @REG_VOLTAGE_LIMIT_LSB, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %43, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %8, align 8
  %54 = and i64 %53, 255
  %55 = call i32 @regmap_write(i32 %42, i32 %52, i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %4
  br label %76

59:                                               ; preds = %4
  %60 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %61 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @REG_VOLTAGE_LIMIT_MSB, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 768, %68
  %70 = load i64, i64* %8, align 8
  %71 = and i64 %70, 768
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = lshr i64 %71, %73
  %75 = call i32 @regmap_update_bits(i32 %62, i32 %67, i32 %69, i64 %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %59, %58
  %77 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %78 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
