; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_read_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_read_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct7802_data = type { i32, i32 }

@REG_VOLTAGE = common dso_local global i32* null, align 8
@REG_VOLTAGE_LOW = common dso_local global i32 0, align 4
@nct7802_vmul = common dso_local global i32* null, align 8
@REG_VOLTAGE_LIMIT_MSB_SHIFT = common dso_local global i32** null, align 8
@REG_VOLTAGE_LIMIT_LSB = common dso_local global i32** null, align 8
@REG_VOLTAGE_LIMIT_MSB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct7802_data*, i32, i32)* @nct7802_read_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7802_read_voltage(%struct.nct7802_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nct7802_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nct7802_data* %0, %struct.nct7802_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nct7802_data*, %struct.nct7802_data** %4, align 8
  %12 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load %struct.nct7802_data*, %struct.nct7802_data** %4, align 8
  %18 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @REG_VOLTAGE, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_read(i32 %19, i32 %24, i32* %7)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %106

29:                                               ; preds = %16
  %30 = load %struct.nct7802_data*, %struct.nct7802_data** %4, align 8
  %31 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REG_VOLTAGE_LOW, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %106

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 2
  %41 = load i32, i32* %8, align 4
  %42 = lshr i32 %41, 6
  %43 = or i32 %40, %42
  %44 = load i32*, i32** @nct7802_vmul, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = mul i32 %43, %48
  store i32 %49, i32* %9, align 4
  br label %105

50:                                               ; preds = %3
  %51 = load i32**, i32*** @REG_VOLTAGE_LIMIT_MSB_SHIFT, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 8, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.nct7802_data*, %struct.nct7802_data** %4, align 8
  %63 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32**, i32*** @REG_VOLTAGE_LIMIT_LSB, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %65, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @regmap_read(i32 %64, i32 %74, i32* %7)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %50
  br label %106

79:                                               ; preds = %50
  %80 = load %struct.nct7802_data*, %struct.nct7802_data** %4, align 8
  %81 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @REG_VOLTAGE_LIMIT_MSB, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @regmap_read(i32 %82, i32 %87, i32* %8)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %106

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = shl i32 %94, %95
  %97 = and i32 %96, 768
  %98 = or i32 %93, %97
  %99 = load i32*, i32** @nct7802_vmul, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul i32 %98, %103
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %92, %38
  br label %106

106:                                              ; preds = %105, %91, %78, %37, %28
  %107 = load %struct.nct7802_data*, %struct.nct7802_data** %4, align 8
  %108 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
