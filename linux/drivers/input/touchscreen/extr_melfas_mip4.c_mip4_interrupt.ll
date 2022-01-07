; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MIP4_R0_EVENT = common dso_local global i32 0, align 4
@MIP4_R1_EVENT_PACKET_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read packet info: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"packet size: %d, alert: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Empty packet\0A\00", align 1
@MIP4_R1_EVENT_PACKET_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to read packet data: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Alert: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mip4_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mip4_ts*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.mip4_ts*
  store %struct.mip4_ts* %13, %struct.mip4_ts** %5, align 8
  %14 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %15 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %14, i32 0, i32 3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %6, align 8
  %17 = load i32, i32* @MIP4_R0_EVENT, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @MIP4_R1_EVENT_PACKET_INFO, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %23 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %24 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %21, i32* %22, i32 8, i32* %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %122

34:                                               ; preds = %2
  %35 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %36 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 127
  store i32 %40, i32* %10, align 4
  %41 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %42 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BIT(i32 7)
  %47 = and i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %34
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %122

59:                                               ; preds = %34
  %60 = load i32, i32* @MIP4_R0_EVENT, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @MIP4_R1_EVENT_PACKET_DATA, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %66 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %67 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %64, i32* %65, i32 8, i32* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %122

78:                                               ; preds = %59
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %85 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %121

90:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %108, %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %97 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %98 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @mip4_handle_packet(%struct.mip4_ts* %96, i32* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %116

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %110 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  br label %91

116:                                              ; preds = %106, %91
  %117 = load %struct.mip4_ts*, %struct.mip4_ts** %5, align 8
  %118 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @input_sync(i32 %119)
  br label %121

121:                                              ; preds = %116, %81
  br label %122

122:                                              ; preds = %121, %73, %55, %29
  %123 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %123
}

declare dso_local i32 @mip4_i2c_xfer(%struct.mip4_ts*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @mip4_handle_packet(%struct.mip4_ts*, i32*) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
