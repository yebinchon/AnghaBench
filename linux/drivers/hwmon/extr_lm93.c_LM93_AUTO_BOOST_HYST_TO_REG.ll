; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_LM93_AUTO_BOOST_HYST_TO_REG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_LM93_AUTO_BOOST_HYST_TO_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm93_data = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm93_data*, i64, i32, i32)* @LM93_AUTO_BOOST_HYST_TO_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LM93_AUTO_BOOST_HYST_TO_REG(%struct.lm93_data* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lm93_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lm93_data* %0, %struct.lm93_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %11 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @LM93_TEMP_FROM_REG(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @LM93_TEMP_OFFSET_TO_REG(i64 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %55 [
    i32 0, label %23
    i32 1, label %33
    i32 2, label %44
    i32 3, label %54
  ]

23:                                               ; preds = %4
  %24 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %25 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 240
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 15
  %32 = or i32 %29, %31
  store i32 %32, i32* %9, align 4
  br label %66

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 4
  %36 = and i32 %35, 240
  %37 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %38 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 15
  %43 = or i32 %36, %42
  store i32 %43, i32* %9, align 4
  br label %66

44:                                               ; preds = %4
  %45 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %46 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 240
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 15
  %53 = or i32 %50, %52
  store i32 %53, i32* %9, align 4
  br label %66

54:                                               ; preds = %4
  br label %55

55:                                               ; preds = %4, %54
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 4
  %58 = and i32 %57, 240
  %59 = load %struct.lm93_data*, %struct.lm93_data** %5, align 8
  %60 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  %65 = or i32 %58, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %55, %44, %33, %23
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @LM93_TEMP_OFFSET_TO_REG(i64, i32) #1

declare dso_local i64 @LM93_TEMP_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
