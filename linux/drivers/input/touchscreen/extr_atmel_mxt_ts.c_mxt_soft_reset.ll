; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Resetting device\0A\00", align 1
@MXT_COMMAND_RESET = common dso_local global i32 0, align 4
@MXT_RESET_VALUE = common dso_local global i32 0, align 4
@MXT_RESET_INVALID_CHG = common dso_local global i32 0, align 4
@MXT_RESET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_soft_reset(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %6 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %7 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @dev_info(%struct.device* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %13 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @disable_irq(i32 %14)
  %16 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %17 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %16, i32 0, i32 0
  %18 = call i32 @reinit_completion(i32* %17)
  %19 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %20 = load i32, i32* @MXT_COMMAND_RESET, align 4
  %21 = load i32, i32* @MXT_RESET_VALUE, align 4
  %22 = call i32 @mxt_t6_command(%struct.mxt_data* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load i32, i32* @MXT_RESET_INVALID_CHG, align 4
  %29 = call i32 @msleep(i32 %28)
  %30 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %31 = call i32 @mxt_acquire_irq(%struct.mxt_data* %30)
  %32 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %33 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %34 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %33, i32 0, i32 0
  %35 = load i32, i32* @MXT_RESET_TIMEOUT, align 4
  %36 = call i32 @mxt_wait_for_completion(%struct.mxt_data* %32, i32* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %25
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @mxt_t6_command(%struct.mxt_data*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mxt_acquire_irq(%struct.mxt_data*) #1

declare dso_local i32 @mxt_wait_for_completion(%struct.mxt_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
