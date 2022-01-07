; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_report_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_report_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i32, i32, i16*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Key - ID: %d, keycode: %d, state: %d\0A\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown key: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mip4_ts*, i32*)* @mip4_report_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mip4_report_keys(%struct.mip4_ts* %0, i32* %1) #0 {
  %3 = alloca %struct.mip4_ts*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.mip4_ts* %0, %struct.mip4_ts** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %9 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %21 [
    i32 0, label %11
    i32 1, label %11
    i32 3, label %20
  ]

11:                                               ; preds = %2, %2
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 15
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 128
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %2, %20
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %21, %11
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 1
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %36 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %41 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %40, i32 0, i32 2
  %42 = load i16*, i16** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %42, i64 %45
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %7, align 2
  %48 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %49 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = load i16, i16* %7, align 2
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52, i16 zeroext %53, i32 %54)
  %56 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %57 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @EV_MSC, align 4
  %60 = load i32, i32* @MSC_SCAN, align 4
  %61 = load i16, i16* %7, align 2
  %62 = call i32 @input_event(i32 %58, i32 %59, i32 %60, i16 zeroext %61)
  %63 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %64 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i16, i16* %7, align 2
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @input_report_key(i32 %65, i16 zeroext %66, i32 %67)
  br label %76

69:                                               ; preds = %33, %30
  %70 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %71 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %69, %39
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i16 zeroext, i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @input_report_key(i32, i16 zeroext, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
