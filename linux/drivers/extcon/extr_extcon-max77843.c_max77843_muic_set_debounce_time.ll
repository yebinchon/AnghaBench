; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_set_debounce_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_set_debounce_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77843_muic_info = type { i32, %struct.max77693_dev* }
%struct.max77693_dev = type { i32 }

@MAX77843_MUIC_REG_CONTROL4 = common dso_local global i32 0, align 4
@MAX77843_MUIC_CONTROL4_ADCDBSET_MASK = common dso_local global i32 0, align 4
@MAX77843_MUIC_CONTROL4_ADCDBSET_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot write MUIC regmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid ADC debounce time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77843_muic_info*, i32)* @max77843_muic_set_debounce_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_set_debounce_time(%struct.max77843_muic_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77843_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77693_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.max77843_muic_info* %0, %struct.max77843_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %9 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %8, i32 0, i32 1
  %10 = load %struct.max77693_dev*, %struct.max77693_dev** %9, align 8
  store %struct.max77693_dev* %10, %struct.max77693_dev** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
    i32 131, label %12
    i32 130, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %2, %2, %2, %2
  %13 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %14 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX77843_MUIC_REG_CONTROL4, align 4
  %17 = load i32, i32* @MAX77843_MUIC_CONTROL4_ADCDBSET_MASK, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAX77843_MUIC_CONTROL4_ADCDBSET_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %26 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %12
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %4, align 8
  %33 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %31, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
