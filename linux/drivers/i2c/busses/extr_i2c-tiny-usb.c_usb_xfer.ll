; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tiny-usb.c_usb_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tiny-usb.c_usb_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"master xfer %d messages:\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_I2C_IO = common dso_local global i32 0, align 4
@CMD_I2C_IO_BEGIN = common dso_local global i32 0, align 4
@CMD_I2C_IO_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"  %d: %s (flags %d) %d bytes to 0x%02x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failure reading data\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"failure writing data\0A\00", align 1
@CMD_GET_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"failure reading status\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"  status = %d\0A\00", align 1
@STATUS_ADDRESS_NAK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @usb_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  %16 = trunc i32 %15 to i8
  %17 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 1, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %171

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %162, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %165

30:                                               ; preds = %26
  %31 = load i32, i32* @CMD_I2C_IO, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @CMD_I2C_IO_BEGIN, align 4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @CMD_I2C_IO_END, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i64 %50
  store %struct.i2c_msg* %51, %struct.i2c_msg** %9, align 8
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %10, align 4
  %55 = trunc i32 %54 to i8
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I2C_M_RD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %55, i8* %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @I2C_M_RD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %47
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_read(%struct.i2c_adapter* %81, i32 %82, i32 %85, i32 %88, i8* %91, i32 %94)
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %80
  %101 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @EREMOTEIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  br label %167

106:                                              ; preds = %80
  br label %134

107:                                              ; preds = %47
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %117 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @usb_write(%struct.i2c_adapter* %108, i32 %109, i32 %112, i32 %115, i8* %118, i32 %121)
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %107
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %131 = load i32, i32* @EREMOTEIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  br label %167

133:                                              ; preds = %107
  br label %134

134:                                              ; preds = %133, %106
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %136 = load i32, i32* @CMD_GET_STATUS, align 4
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @usb_read(%struct.i2c_adapter* %135, i32 %136, i32 0, i32 0, i8* %137, i32 1)
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %142 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %141, i32 0, i32 0
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32, i32* @EREMOTEIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %11, align 4
  br label %167

146:                                              ; preds = %134
  %147 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %148 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %147, i32 0, i32 0
  %149 = load i8*, i8** %8, align 8
  %150 = load i8, i8* %149, align 1
  %151 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %150)
  %152 = load i8*, i8** %8, align 8
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, i8* @STATUS_ADDRESS_NAK, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load i32, i32* @EREMOTEIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %11, align 4
  br label %167

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %26

165:                                              ; preds = %26
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %165, %158, %140, %127, %100
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @kfree(i8* %168)
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %22
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_read(%struct.i2c_adapter*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_write(%struct.i2c_adapter*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
