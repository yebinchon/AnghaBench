; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_signal_det.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_signal_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CNTM set Error\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*, i32, i8*)* @signal_det to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_det(%struct.mb86a16_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mb86a16_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, 45
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %18 = call i64 @CNTM_set(%struct.mb86a16_state* %17, i32 2, i32 1, i32 2)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @verbose, align 4
  %22 = load i32, i32* @MB86A16_ERROR, align 4
  %23 = call i32 @dprintk(i32 %21, i32 %22, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %116

24:                                               ; preds = %16
  br label %34

25:                                               ; preds = %3
  %26 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %27 = call i64 @CNTM_set(%struct.mb86a16_state* %26, i32 3, i32 1, i32 2)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @verbose, align 4
  %31 = load i32, i32* @MB86A16_ERROR, align 4
  %32 = call i32 @dprintk(i32 %30, i32 %31, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %116

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %24
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %81

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 98
  %44 = sdiv i32 %43, 100
  store i32 %44, i32* %9, align 4
  br label %55

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %9, align 4
  br label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, 102
  %53 = sdiv i32 %52, 100
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %48
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @smrt_info_get(%struct.mb86a16_state* %56, i32 %57)
  %59 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @smrt_set(%struct.mb86a16_state* %59, i32 %60)
  %62 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %63 = call i32 @srst(%struct.mb86a16_state* %62)
  %64 = call i32 @msleep_interruptible(i32 10)
  %65 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 %67
  %69 = call i32 @mb86a16_read(%struct.mb86a16_state* %65, i32 55, i8* %68)
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %77

71:                                               ; preds = %55
  %72 = load i32, i32* @verbose, align 4
  %73 = load i32, i32* @MB86A16_ERROR, align 4
  %74 = call i32 @dprintk(i32 %72, i32 %73, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EREMOTEIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %116

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %35

81:                                               ; preds = %35
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %87, 112
  %89 = sdiv i32 %88, 100
  %90 = icmp sgt i32 %84, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = mul nsw i32 %97, 112
  %99 = sdiv i32 %98, 100
  %100 = icmp sgt i32 %94, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 1, i32* %8, align 4
  br label %103

102:                                              ; preds = %91, %81
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %101
  %104 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = load i8*, i8** %7, align 8
  store i8 %105, i8* %106, align 1
  %107 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %108 = call i64 @CNTM_set(%struct.mb86a16_state* %107, i32 0, i32 1, i32 2)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @verbose, align 4
  %112 = load i32, i32* @MB86A16_ERROR, align 4
  %113 = call i32 @dprintk(i32 %111, i32 %112, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %110, %71, %29, %20
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @CNTM_set(%struct.mb86a16_state*, i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @smrt_info_get(%struct.mb86a16_state*, i32) #1

declare dso_local i32 @smrt_set(%struct.mb86a16_state*, i32) #1

declare dso_local i32 @srst(%struct.mb86a16_state*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
