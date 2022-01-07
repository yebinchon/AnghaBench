; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpr0521_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RPR0521_REG_PXS_CTRL = common dso_local global i32 0, align 4
@RPR0521_PXS_PERSISTENCE_MASK = common dso_local global i32 0, align 4
@RPR0521_PXS_PERSISTENCE_DRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PS control reg write fail.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RPR0521_REG_INTERRUPT = common dso_local global i32 0, align 4
@RPR0521_INTERRUPT_INT_REASSERT_DISABLE = common dso_local global i32 0, align 4
@RPR0521_INTERRUPT_INT_TRIG_ALS_DISABLE = common dso_local global i32 0, align 4
@RPR0521_INTERRUPT_INT_TRIG_PS_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Interrupt setup write fail.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpr0521_data*)* @rpr0521_write_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_write_int_enable(%struct.rpr0521_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpr0521_data*, align 8
  %4 = alloca i32, align 4
  store %struct.rpr0521_data* %0, %struct.rpr0521_data** %3, align 8
  %5 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %6 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RPR0521_REG_PXS_CTRL, align 4
  %9 = load i32, i32* @RPR0521_PXS_PERSISTENCE_MASK, align 4
  %10 = load i32, i32* @RPR0521_PXS_PERSISTENCE_DRDY, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %16 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %24 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RPR0521_REG_INTERRUPT, align 4
  %27 = load i32, i32* @RPR0521_INTERRUPT_INT_REASSERT_DISABLE, align 4
  %28 = load i32, i32* @RPR0521_INTERRUPT_INT_TRIG_ALS_DISABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RPR0521_INTERRUPT_INT_TRIG_PS_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_write(i32 %25, i32 %26, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.rpr0521_data*, %struct.rpr0521_data** %3, align 8
  %37 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %35, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
