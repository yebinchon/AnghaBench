; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_load_dwz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_load_dwz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@HIDEEP_DWZ_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to fetch DWZ data: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"used crimson IC\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"used lime IC\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"product code is wrong: %#04x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"firmware release version: %#04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*)* @hideep_load_dwz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_load_dwz(%struct.hideep_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hideep_ts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %3, align 8
  %6 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %7 = call i32 @hideep_enter_pgm(%struct.hideep_ts* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %80

12:                                               ; preds = %1
  %13 = call i32 @msleep(i32 50)
  %14 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %15 = load i32, i32* @HIDEEP_DWZ_INFO, align 4
  %16 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %17 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %16, i32 0, i32 2
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  %19 = call i32 @hideep_pgm_r_mem(%struct.hideep_ts* %14, i32 %15, i8* %18, i32 2)
  store i32 %19, i32* %5, align 4
  %20 = call i32 @SW_RESET_IN_PGM(i32 10)
  %21 = call i32 @msleep(i32 50)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %12
  %25 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %26 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %80

32:                                               ; preds = %12
  %33 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %34 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 240
  switch i32 %39, label %60 [
    i32 64, label %40
    i32 96, label %50
  ]

40:                                               ; preds = %32
  %41 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %42 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %47 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %46, i32 0, i32 0
  store i32 49152, i32* %47, align 8
  %48 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %49 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %48, i32 0, i32 1
  store i32 3211264, i32* %49, align 4
  br label %69

50:                                               ; preds = %32
  %51 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %52 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %57 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %56, i32 0, i32 0
  store i32 65536, i32* %57, align 8
  %58 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %59 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %58, i32 0, i32 1
  store i32 3146363, i32* %59, align 4
  br label %69

60:                                               ; preds = %32
  %61 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %62 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %80

69:                                               ; preds = %50, %40
  %70 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %71 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.hideep_ts*, %struct.hideep_ts** %3, align 8
  %75 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @be16_to_cpu(i32 %77)
  %79 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %69, %60, %24, %10
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @hideep_enter_pgm(%struct.hideep_ts*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hideep_pgm_r_mem(%struct.hideep_ts*, i32, i8*, i32) #1

declare dso_local i32 @SW_RESET_IN_PGM(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
