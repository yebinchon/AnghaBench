; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vprbrd = type { i32, i64 }
%struct.i2c_msg = type { i32, i32 }
%struct.vprbrd_i2c_write_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@VPRBRD_I2C_CMD_WRITE = common dso_local global i32 0, align 4
@VPRBRD_EP_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vprbrd*, %struct.i2c_msg*)* @vprbrd_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_i2c_write(%struct.vprbrd* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vprbrd*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vprbrd_i2c_write_msg*, align 8
  store %struct.vprbrd* %0, %struct.vprbrd** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %13 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.vprbrd_i2c_write_msg*
  store %struct.vprbrd_i2c_write_msg* %15, %struct.vprbrd_i2c_write_msg** %11, align 8
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @VPRBRD_I2C_CMD_WRITE, align 4
  %20 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %21 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 4
  %23 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %24 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %27 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %30 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %119, %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %120

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 16384
  %38 = call i32 @cpu_to_le16(i32 %37)
  %39 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %40 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 503
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %46 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 255, i32* %47, align 4
  %48 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %49 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32 248, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 503
  store i32 %52, i32* %8, align 4
  store i32 507, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 503
  store i32 %54, i32* %10, align 4
  br label %84

55:                                               ; preds = %35
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 255
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %60 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 255, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 255
  %64 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %65 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %83

71:                                               ; preds = %55
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %74 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %77 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %71, %58
  br label %84

84:                                               ; preds = %83, %44
  %85 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %86 = getelementptr inbounds %struct.vprbrd_i2c_write_msg, %struct.vprbrd_i2c_write_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i32 %87, i32 %92, i32 %96)
  %98 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %99 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %102 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @VPRBRD_EP_OUT, align 4
  %105 = call i32 @usb_sndbulkpipe(i32 %103, i32 %104)
  %106 = load %struct.vprbrd_i2c_write_msg*, %struct.vprbrd_i2c_write_msg** %11, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %109 = call i32 @usb_bulk_msg(i32 %100, i32 %105, %struct.vprbrd_i2c_write_msg* %106, i32 %107, i32* %7, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %84
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112, %84
  %117 = load i32, i32* @EREMOTEIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %121

119:                                              ; preds = %112
  br label %32

120:                                              ; preds = %32
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %116
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, %struct.vprbrd_i2c_write_msg*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
