; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_get_axis_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_get_axis_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"X: %d, Y: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*)* @hideep_get_axis_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_get_axis_info(%struct.hideep_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hideep_ts*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %3, align 8
  %6 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %7 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = call i32 @regmap_bulk_read(i32 %8, i32 40, i32* %9, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %19 = call i8* @le16_to_cpup(i32* %18)
  %20 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %21 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = call i8* @le16_to_cpup(i32* %24)
  %26 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %27 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %30 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %34 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %38 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %17, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @le16_to_cpup(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
