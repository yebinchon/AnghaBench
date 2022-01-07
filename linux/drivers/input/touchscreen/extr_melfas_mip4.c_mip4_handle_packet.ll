; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_handle_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown event type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*, i32*)* @mip4_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_handle_packet(%struct.mip4_ts* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mip4_ts*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %8 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %22 [
    i32 0, label %10
    i32 1, label %10
    i32 3, label %16
  ]

10:                                               ; preds = %2, %2
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 64
  %15 = ashr i32 %14, 6
  store i32 %15, i32* %6, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 240
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %16, %10
  %26 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %27 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %37
  ]

33:                                               ; preds = %25
  %34 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @mip4_report_keys(%struct.mip4_ts* %34, i32* %35)
  br label %48

37:                                               ; preds = %25
  %38 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @mip4_report_touch(%struct.mip4_ts* %38, i32* %39)
  br label %48

41:                                               ; preds = %25
  %42 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %43 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %37, %33
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mip4_report_keys(%struct.mip4_ts*, i32*) #1

declare dso_local i32 @mip4_report_touch(%struct.mip4_ts*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
