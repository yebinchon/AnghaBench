; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp03.c_hp03_update_temp_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp03.c_hp03_update_temp_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp03_priv = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@HP03_EEPROM_CX_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to read EEPROM (reg=%02x)\0A\00", align 1
@HP03_ADC_READ_PRESSURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to read pressure\0A\00", align 1
@HP03_ADC_READ_TEMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to read temperature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hp03_priv*)* @hp03_update_temp_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp03_update_temp_pressure(%struct.hp03_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hp03_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca [18 x i32], align 16
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hp03_priv* %0, %struct.hp03_priv** %3, align 8
  %17 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %22 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HP03_EEPROM_CX_OFFSET, align 4
  %25 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  %26 = call i32 @regmap_bulk_read(i32 %23, i32 %24, i32* %25, i32 72)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* @HP03_EEPROM_CX_OFFSET, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %2, align 4
  br label %183

34:                                               ; preds = %1
  %35 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %36 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gpiod_set_value_cansleep(i32 %37, i32 1)
  %39 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %40 = load i32, i32* @HP03_ADC_READ_PRESSURE, align 4
  %41 = call i32 @hp03_get_temp_pressure(%struct.hp03_priv* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %177

47:                                               ; preds = %34
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %8, align 4
  %49 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %50 = load i32, i32* @HP03_ADC_READ_TEMP, align 4
  %51 = call i32 @hp03_get_temp_pressure(%struct.hp03_priv* %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %177

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %60 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @gpiod_set_value_cansleep(i32 %61, i32 0)
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %84, %57
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 7
  br i1 %65, label %66, label %87

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = mul nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %15, align 4
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 0
  %80 = or i32 %72, %79
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 %82
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %66
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %63

87:                                               ; preds = %63
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 255
  %93 = shl i32 %92, 8
  %94 = or i32 %90, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 255
  %100 = shl i32 %99, 8
  %101 = or i32 %97, %100
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  %104 = load i32, i32* %103, align 16
  %105 = icmp sge i32 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 14
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %7, align 4
  br label %112

109:                                              ; preds = %87
  %110 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 15
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %9, align 4
  %114 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  %115 = load i32, i32* %114, align 16
  %116 = sub nsw i32 %113, %115
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 7
  %120 = mul nsw i32 %117, %119
  %121 = load i32, i32* %10, align 4
  %122 = ashr i32 %121, 7
  %123 = mul nsw i32 %120, %122
  %124 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 16
  %125 = load i32, i32* %124, align 16
  %126 = ashr i32 %123, %125
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %11, align 4
  %130 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, 1024
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %134, %135
  %137 = ashr i32 %136, 14
  %138 = add nsw i32 %131, %137
  %139 = mul nsw i32 %138, 4
  store i32 %139, i32* %12, align 4
  %140 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = mul nsw i32 %143, %144
  %146 = ashr i32 %145, 10
  %147 = add nsw i32 %141, %146
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 7168
  %151 = mul nsw i32 %148, %150
  %152 = ashr i32 %151, 14
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = mul nsw i32 %155, 100
  %157 = ashr i32 %156, 5
  %158 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %159, 10
  %161 = add nsw i32 %157, %160
  %162 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %163 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %11, align 4
  %165 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %164, %166
  %168 = ashr i32 %167, 16
  %169 = add nsw i32 250, %168
  %170 = load i32, i32* %11, align 4
  %171 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 17
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %170, %172
  %174 = sub nsw i32 %169, %173
  %175 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %176 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  store i32 0, i32* %2, align 4
  br label %183

177:                                              ; preds = %54, %44
  %178 = load %struct.hp03_priv*, %struct.hp03_priv** %3, align 8
  %179 = getelementptr inbounds %struct.hp03_priv, %struct.hp03_priv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @gpiod_set_value_cansleep(i32 %180, i32 0)
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %177, %112, %29
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @hp03_get_temp_pressure(%struct.hp03_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
