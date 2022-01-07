; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9322 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unable to enable regulators\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili9322*)* @ili9322_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9322_power_on(%struct.ili9322* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ili9322*, align 8
  %4 = alloca i32, align 4
  store %struct.ili9322* %0, %struct.ili9322** %3, align 8
  %5 = load %struct.ili9322*, %struct.ili9322** %3, align 8
  %6 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpiod_set_value(i32 %7, i32 1)
  %9 = load %struct.ili9322*, %struct.ili9322** %3, align 8
  %10 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load %struct.ili9322*, %struct.ili9322** %3, align 8
  %14 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regulator_bulk_enable(i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ili9322*, %struct.ili9322** %3, align 8
  %21 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %1
  %26 = call i32 @msleep(i32 20)
  %27 = load %struct.ili9322*, %struct.ili9322** %3, align 8
  %28 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpiod_set_value(i32 %29, i32 0)
  %31 = call i32 @msleep(i32 10)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
