; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_readbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32 }

@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_M_NO_RD_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"readbytes: invalid block length (%d)\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"readbytes: 0x%02x %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"(no ack/nak)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*)* @readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readbytes(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %108, %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %109

23:                                               ; preds = %20
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %25 = call i32 @i2c_inb(%struct.i2c_adapter* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %8, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %35

34:                                               ; preds = %23
  br label %109

35:                                               ; preds = %28
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %78

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %61 = call i32 @acknak(%struct.i2c_adapter* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EPROTO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %111

69:                                               ; preds = %50
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %69, %42, %35
  %79 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %92

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  br label %92

92:                                               ; preds = %87, %86
  %93 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %86 ], [ %91, %87 ]
  %94 = call i32 @bit_dbg(i32 2, i32* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @acknak(%struct.i2c_adapter* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %111

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %92
  br label %20

109:                                              ; preds = %34, %20
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %105, %62
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @i2c_inb(%struct.i2c_adapter*) #1

declare dso_local i32 @acknak(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @bit_dbg(i32, i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
