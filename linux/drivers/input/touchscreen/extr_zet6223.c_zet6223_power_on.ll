; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zet6223.c_zet6223_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zet6223.c_zet6223_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zet6223_ts = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@ZET6223_POWER_ON_DELAY_MSEC = common dso_local global i32 0, align 4
@zet6223_power_off = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to install poweroff action: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zet6223_ts*)* @zet6223_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zet6223_power_on(%struct.zet6223_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zet6223_ts*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.zet6223_ts* %0, %struct.zet6223_ts** %3, align 8
  %6 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %7 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %11 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %16 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %22 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %23)
  %25 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %26 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @devm_regulator_bulk_get(%struct.device* %20, i32 %24, %struct.TYPE_6__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %61

33:                                               ; preds = %1
  %34 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %35 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %36)
  %38 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %39 = getelementptr inbounds %struct.zet6223_ts, %struct.zet6223_ts* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @regulator_bulk_enable(i32 %37, %struct.TYPE_6__* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %33
  %47 = load i32, i32* @ZET6223_POWER_ON_DELAY_MSEC, align 4
  %48 = call i32 @msleep(i32 %47)
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @zet6223_power_off, align 4
  %51 = load %struct.zet6223_ts*, %struct.zet6223_ts** %3, align 8
  %52 = call i32 @devm_add_action_or_reset(%struct.device* %49, i32 %50, %struct.zet6223_ts* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %44, %31
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.zet6223_ts*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
