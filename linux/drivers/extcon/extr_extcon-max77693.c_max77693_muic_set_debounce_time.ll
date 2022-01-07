; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_set_debounce_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_set_debounce_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_muic_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX77693_MUIC_REG_CTRL3 = common dso_local global i32 0, align 4
@MAX77693_CONTROL3_ADCDBSET_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to set ADC debounce time\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid ADC debounce time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_muic_info*, i32)* @max77693_muic_set_debounce_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_muic_set_debounce_time(%struct.max77693_muic_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_muic_info* %0, %struct.max77693_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %28 [
    i32 128, label %8
    i32 131, label %8
    i32 130, label %8
    i32 129, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %10 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX77693_MUIC_REG_CTRL3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX77693_CONTROL3_ADCDBSET_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @regmap_write(i32 %13, i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %23 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %8
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %4, align 8
  %30 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %28, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
