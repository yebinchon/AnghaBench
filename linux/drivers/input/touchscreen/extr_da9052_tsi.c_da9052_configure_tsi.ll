; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_configure_tsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_da9052_tsi.c_da9052_configure_tsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_tsi = type { i32 }

@DA9052_ADC_CONT_REG = common dso_local global i32 0, align 4
@DA9052_TSI_CONT_A_REG = common dso_local global i32 0, align 4
@DA9052_LDO9_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9052_tsi*)* @da9052_configure_tsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_configure_tsi(%struct.da9052_tsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9052_tsi*, align 8
  %4 = alloca i32, align 4
  store %struct.da9052_tsi* %0, %struct.da9052_tsi** %3, align 8
  %5 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %6 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @da9052_ts_configure_gpio(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %15 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DA9052_ADC_CONT_REG, align 4
  %18 = call i32 @da9052_reg_update(i32 %16, i32 %17, i32 64, i32 64)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %13
  %24 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %25 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DA9052_TSI_CONT_A_REG, align 4
  %28 = call i32 @da9052_reg_update(i32 %26, i32 %27, i32 252, i32 192)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.da9052_tsi*, %struct.da9052_tsi** %3, align 8
  %35 = getelementptr inbounds %struct.da9052_tsi, %struct.da9052_tsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DA9052_LDO9_REG, align 4
  %38 = call i32 @da9052_reg_write(i32 %36, i32 %37, i32 89)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %31, %21, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @da9052_ts_configure_gpio(i32) #1

declare dso_local i32 @da9052_reg_update(i32, i32, i32, i32) #1

declare dso_local i32 @da9052_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
