; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_set_debounce_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_set_debounce_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_info = type { i32, i32 }

@MAX8997_MUIC_REG_CONTROL3 = common dso_local global i32 0, align 4
@CONTROL3_ADCDBSET_SHIFT = common dso_local global i32 0, align 4
@CONTROL3_ADCDBSET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to set ADC debounce time\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid ADC debounce time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_muic_info*, i32)* @max8997_muic_set_debounce_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_set_debounce_time(%struct.max8997_muic_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max8997_muic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max8997_muic_info* %0, %struct.max8997_muic_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %27 [
    i32 131, label %8
    i32 130, label %8
    i32 129, label %8
    i32 128, label %8
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %10 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX8997_MUIC_REG_CONTROL3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CONTROL3_ADCDBSET_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @CONTROL3_ADCDBSET_MASK, align 4
  %17 = call i32 @max8997_update_reg(i32 %11, i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %8
  %21 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %22 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %8
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %4, align 8
  %29 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %27, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @max8997_update_reg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
