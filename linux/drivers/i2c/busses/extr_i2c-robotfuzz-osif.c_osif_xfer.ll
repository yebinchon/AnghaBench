; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-robotfuzz-osif.c_osif_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-robotfuzz-osif.c_osif_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.osif_priv* }
%struct.osif_priv = type { i64 }
%struct.i2c_msg = type { i32, i64*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@OSIFI2C_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failure reading data\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@OSIFI2C_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failure writing data\0A\00", align 1
@OSIFI2C_STOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failure sending STOP\0A\00", align 1
@OSIFI2C_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"failure reading status\0A\00", align 1
@STATUS_ADDRESS_ACK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @osif_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osif_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.osif_priv*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %12, i32 0, i32 1
  %14 = load %struct.osif_priv*, %struct.osif_priv** %13, align 8
  store %struct.osif_priv* %14, %struct.osif_priv** %8, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %128, %3
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %131

19:                                               ; preds = %15
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 %22
  store %struct.i2c_msg* %23, %struct.i2c_msg** %9, align 8
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I2C_M_RD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %19
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %32 = load i32, i32* @OSIFI2C_READ, align 4
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @osif_usb_read(%struct.i2c_adapter* %31, i32 %32, i32 %35, i32 %38, i64* %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %30
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EREMOTEIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %133

57:                                               ; preds = %30
  br label %86

58:                                               ; preds = %19
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %60 = load i32, i32* @OSIFI2C_WRITE, align 4
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @osif_usb_write(%struct.i2c_adapter* %59, i32 %60, i32 %63, i32 %66, i64* %69, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %58
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EREMOTEIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %133

85:                                               ; preds = %58
  br label %86

86:                                               ; preds = %85, %57
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %88 = load i32, i32* @OSIFI2C_STOP, align 4
  %89 = call i32 @osif_usb_read(%struct.i2c_adapter* %87, i32 %88, i32 0, i32 0, i64* null, i32 0)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @EREMOTEIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %133

98:                                               ; preds = %86
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %100 = load i32, i32* @OSIFI2C_STATUS, align 4
  %101 = load %struct.osif_priv*, %struct.osif_priv** %8, align 8
  %102 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %101, i32 0, i32 0
  %103 = call i32 @osif_usb_read(%struct.i2c_adapter* %99, i32 %100, i32 0, i32 0, i64* %102, i32 1)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @EREMOTEIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %133

112:                                              ; preds = %98
  %113 = load %struct.osif_priv*, %struct.osif_priv** %8, align 8
  %114 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @STATUS_ADDRESS_ACK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %120 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %119, i32 0, i32 0
  %121 = load %struct.osif_priv*, %struct.osif_priv** %8, align 8
  %122 = getelementptr inbounds %struct.osif_priv, %struct.osif_priv* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @dev_dbg(i32* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* @EREMOTEIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %133

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %15

131:                                              ; preds = %15
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %118, %106, %92, %79, %51
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @osif_usb_read(%struct.i2c_adapter*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @osif_usb_write(%struct.i2c_adapter*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
