; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9052_onkey.c_da9052_onkey_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9052_onkey.c_da9052_onkey_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052_onkey = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DA9052_STATUS_A_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read onkey event err=%d\0A\00", align 1
@DA9052_STATUSA_NONKEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9052_onkey*)* @da9052_onkey_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9052_onkey_query(%struct.da9052_onkey* %0) #0 {
  %2 = alloca %struct.da9052_onkey*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.da9052_onkey* %0, %struct.da9052_onkey** %2, align 8
  %5 = load %struct.da9052_onkey*, %struct.da9052_onkey** %2, align 8
  %6 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* @DA9052_STATUS_A_REG, align 4
  %9 = call i32 @da9052_reg_read(%struct.TYPE_2__* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.da9052_onkey*, %struct.da9052_onkey** %2, align 8
  %14 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %45

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DA9052_STATUSA_NONKEY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load %struct.da9052_onkey*, %struct.da9052_onkey** %2, align 8
  %28 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KEY_POWER, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @input_report_key(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.da9052_onkey*, %struct.da9052_onkey** %2, align 8
  %34 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @input_sync(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load %struct.da9052_onkey*, %struct.da9052_onkey** %2, align 8
  %41 = getelementptr inbounds %struct.da9052_onkey, %struct.da9052_onkey* %40, i32 0, i32 0
  %42 = call i32 @msecs_to_jiffies(i32 50)
  %43 = call i32 @schedule_delayed_work(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %20
  br label %45

45:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @da9052_reg_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
