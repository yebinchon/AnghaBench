; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_eeti_ts.c_eeti_ts_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeti_ts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to read touchscreen data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeti_ts*)* @eeti_ts_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeti_ts_read(%struct.eeti_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeti_ts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  store %struct.eeti_ts* %0, %struct.eeti_ts** %3, align 8
  %7 = load %struct.eeti_ts*, %struct.eeti_ts** %3, align 8
  %8 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %11 = call i32 @i2c_master_recv(%struct.TYPE_2__* %9, i8* %10, i32 6)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ]
  store i32 %24, i32* %5, align 4
  %25 = load %struct.eeti_ts*, %struct.eeti_ts** %3, align 8
  %26 = getelementptr inbounds %struct.eeti_ts, %struct.eeti_ts* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %1
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.eeti_ts*, %struct.eeti_ts** %3, align 8
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %41 = call i32 @eeti_ts_report_event(%struct.eeti_ts* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %32
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @i2c_master_recv(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @eeti_ts_report_event(%struct.eeti_ts*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
