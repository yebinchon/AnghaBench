; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_register_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_register_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt_ft5x06_ts_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"crc error: 0x%02x expected, got 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edt_ft5x06_ts_data*, i32)* @edt_ft5x06_register_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edt_ft5x06_ts_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.edt_ft5x06_ts_data* %0, %struct.edt_ft5x06_ts_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %10 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %97 [
    i32 132, label %12
    i32 131, label %83
    i32 130, label %83
    i32 129, label %83
    i32 128, label %83
  ]

12:                                               ; preds = %2
  %13 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %14 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 243, i32 252
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %21 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 127
  br label %30

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 63
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %34 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 128, i32 64
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %43 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %47 = call i32 @edt_ft5x06_ts_readwrite(%struct.TYPE_2__* %44, i32 2, i32* %45, i32 2, i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %103

52:                                               ; preds = %30
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %54, %56
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %57, %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %52
  %65 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %66 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %70, %72
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %73, %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %103

82:                                               ; preds = %52
  br label %100

83:                                               ; preds = %2, %2, %2, %2
  %84 = load i32, i32* %5, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %84, i32* %85, align 4
  %86 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %4, align 8
  %87 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %91 = call i32 @edt_ft5x06_ts_readwrite(%struct.TYPE_2__* %88, i32 1, i32* %89, i32 1, i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %103

96:                                               ; preds = %83
  br label %100

97:                                               ; preds = %2
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %103

100:                                              ; preds = %96, %82
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %97, %94, %64, %50
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @edt_ft5x06_ts_readwrite(%struct.TYPE_2__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
