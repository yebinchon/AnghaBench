; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_request_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_request_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbefifo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Requesting FIFO reset\0A\00", align 1
@SBEFIFO_UP = common dso_local global i32 0, align 4
@SBEFIFO_REQ_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Sending reset request failed, rc=%d\0A\00", align 1
@SBEFIFO_RESET_TIMEOUT = common dso_local global i64 0, align 8
@SBEFIFO_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Failed to read UP fifo status during reset , rc=%d\0A\00", align 1
@SBEFIFO_STS_RESET_REQ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"FIFO reset done\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"FIFO reset timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbefifo*)* @sbefifo_request_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbefifo_request_reset(%struct.sbefifo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbefifo*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sbefifo* %0, %struct.sbefifo** %3, align 8
  %8 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %9 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %15 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %17 = load i32, i32* @SBEFIFO_UP, align 4
  %18 = load i32, i32* @SBEFIFO_REQ_RESET, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @sbefifo_regw(%struct.sbefifo* %16, i32 %19, i32 1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @SBEFIFO_RESET_TIMEOUT, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %35 = load i32, i32* @SBEFIFO_UP, align 4
  %36 = load i32, i32* @SBEFIFO_STS, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @sbefifo_regr(%struct.sbefifo* %34, i32 %37, i64* %5)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %66

46:                                               ; preds = %33
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @SBEFIFO_STS_RESET_REQ, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.sbefifo*, %struct.sbefifo** %3, align 8
  %55 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %66

56:                                               ; preds = %46
  %57 = call i32 @msleep(i32 1)
  br label %58

58:                                               ; preds = %56
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %29

61:                                               ; preds = %29
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %51, %41, %23
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @sbefifo_regw(%struct.sbefifo*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @sbefifo_regr(%struct.sbefifo*, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
