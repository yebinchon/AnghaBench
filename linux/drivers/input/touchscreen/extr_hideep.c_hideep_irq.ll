; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HIDEEP_MAX_EVENT = common dso_local global i32 0, align 4
@HIDEEP_XFER_BUF_SIZE = common dso_local global i32 0, align 4
@HIDEEP_EVENT_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read events: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hideep_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hideep_ts*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hideep_ts*
  store %struct.hideep_ts* %8, %struct.hideep_ts** %5, align 8
  %9 = load i32, i32* @HIDEEP_MAX_EVENT, align 4
  %10 = load i32, i32* @HIDEEP_XFER_BUF_SIZE, align 4
  %11 = icmp sgt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %15 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HIDEEP_EVENT_ADDR, align 4
  %18 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %19 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HIDEEP_MAX_EVENT, align 4
  %22 = sdiv i32 %21, 2
  %23 = call i32 @regmap_bulk_read(i32 %16, i32 %17, i32 %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %28 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %35 = call i32 @hideep_parse_and_report(%struct.hideep_ts* %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hideep_parse_and_report(%struct.hideep_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
