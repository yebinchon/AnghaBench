; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_update_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_update_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"starting firmware update\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"firmware update failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"firmware updated successfully\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"failed to load dwz after firmware update: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*, i32*, i64)* @hideep_update_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_update_firmware(%struct.hideep_ts* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hideep_ts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %11 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %16 = call i32 @hideep_enter_pgm(%struct.hideep_ts* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @hideep_flash_firmware(%struct.hideep_ts* %22, i32* %23, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %30 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %41

35:                                               ; preds = %21
  %36 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %37 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %28
  %42 = call i32 @SW_RESET_IN_PGM(i32 1000)
  %43 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %44 = call i32 @hideep_load_dwz(%struct.hideep_ts* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.hideep_ts*, %struct.hideep_ts** %5, align 8
  %49 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i32 [ %55, %57 ], [ %59, %58 ]
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hideep_enter_pgm(%struct.hideep_ts*) #1

declare dso_local i32 @hideep_flash_firmware(%struct.hideep_ts*, i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @SW_RESET_IN_PGM(i32) #1

declare dso_local i32 @hideep_load_dwz(%struct.hideep_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
