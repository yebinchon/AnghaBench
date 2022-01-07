; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbefifo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.iov_iter = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"reading response, buflen = %zd\0A\00", align 1
@SBEFIFO_TIMEOUT_START_RSP = common dso_local global i32 0, align 4
@SBEFIFO_TIMEOUT_IN_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"  chunk size %zd eot_set=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"FIFO read hit EOT with still %zd data\0A\00", align 1
@SBEFIFO_DOWN = common dso_local global i32 0, align 4
@SBEFIFO_EOT_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"FSI error %d ack'ing EOT\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Response overflowed !\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbefifo*, %struct.iov_iter*)* @sbefifo_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbefifo_read_response(%struct.sbefifo* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbefifo*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sbefifo* %0, %struct.sbefifo** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %14 = load %struct.sbefifo*, %struct.sbefifo** %4, align 8
  %15 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %20 = call i32 @iov_iter_count(%struct.iov_iter* %19)
  %21 = call i32 (%struct.device*, i8*, ...) @dev_vdbg(%struct.device* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @SBEFIFO_TIMEOUT_START_RSP, align 4
  %23 = call i64 @msecs_to_jiffies(i32 %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %110, %2
  %25 = load %struct.sbefifo*, %struct.sbefifo** %4, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @sbefifo_wait(%struct.sbefifo* %25, i32 0, i32* %7, i64 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %3, align 4
  br label %111

32:                                               ; preds = %24
  %33 = load i32, i32* @SBEFIFO_TIMEOUT_IN_RSP, align 4
  %34 = call i64 @msecs_to_jiffies(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @sbefifo_populated(i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @sbefifo_eot_set(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_vdbg(%struct.device* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %107, %32
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %12, align 8
  %46 = icmp ne i64 %44, 0
  br i1 %46, label %47, label %110

47:                                               ; preds = %43
  %48 = load %struct.sbefifo*, %struct.sbefifo** %4, align 8
  %49 = call i32 @sbefifo_down_read(%struct.sbefifo* %48, i32* %11)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %3, align 4
  br label %111

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @dev_warn(%struct.device* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load %struct.sbefifo*, %struct.sbefifo** %4, align 8
  %66 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.sbefifo*, %struct.sbefifo** %4, align 8
  %69 = load i32, i32* @SBEFIFO_DOWN, align 4
  %70 = load i32, i32* @SBEFIFO_EOT_ACK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @sbefifo_regw(%struct.sbefifo* %68, i32 %71, i32 0)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.sbefifo*, %struct.sbefifo** %4, align 8
  %80 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %67
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @EOVERFLOW, align 4
  %86 = sub nsw i32 0, %85
  br label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 0, %87 ]
  store i32 %89, i32* %3, align 4
  br label %111

90:                                               ; preds = %54
  %91 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %92 = call i32 @iov_iter_count(%struct.iov_iter* %91)
  %93 = sext i32 %92 to i64
  %94 = icmp uge i64 %93, 4
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %97 = call i32 @copy_to_iter(i32* %11, i32 4, %struct.iov_iter* %96)
  %98 = sext i32 %97 to i64
  %99 = icmp ult i64 %98, 4
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %111

103:                                              ; preds = %95
  br label %107

104:                                              ; preds = %90
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_vdbg(%struct.device* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %43

110:                                              ; preds = %43
  br label %24

111:                                              ; preds = %100, %88, %52, %30
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sbefifo_wait(%struct.sbefifo*, i32, i32*, i64) #1

declare dso_local i64 @sbefifo_populated(i32) #1

declare dso_local i32 @sbefifo_eot_set(i32) #1

declare dso_local i32 @sbefifo_down_read(%struct.sbefifo*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @sbefifo_regw(%struct.sbefifo*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @copy_to_iter(i32*, i32, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
