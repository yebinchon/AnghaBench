; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_handle_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_handle_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_port = type { i64 }
%struct.i2c_msg = type { i32, i64 }

@I2C_STAT_ERR = common dso_local global i32 0, align 4
@I2C_STAT_INV_CMD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_STAT_PARITY = common dso_local global i32 0, align 4
@I2C_STAT_BE_OVERRUN = common dso_local global i32 0, align 4
@I2C_STAT_BE_ACCESS = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@I2C_STAT_NACK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I2C_STAT_LOST_ARB = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I2C_STAT_STOP_ERR = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_STAT_DAT_REQ = common dso_local global i32 0, align 4
@I2C_STAT_FIFO_COUNT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_STAT_CMD_COMP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_port*, %struct.i2c_msg*, i32)* @fsi_i2c_handle_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_handle_status(%struct.fsi_i2c_port* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_i2c_port*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsi_i2c_port* %0, %struct.fsi_i2c_port** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @I2C_STAT_ERR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %3
  %15 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @fsi_i2c_abort(%struct.fsi_i2c_port* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %116

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @I2C_STAT_INV_CMD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %116

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @I2C_STAT_PARITY, align 4
  %33 = load i32, i32* @I2C_STAT_BE_OVERRUN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @I2C_STAT_BE_ACCESS, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EPROTO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %116

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @I2C_STAT_NACK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %116

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @I2C_STAT_LOST_ARB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %116

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @I2C_STAT_STOP_ERR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EBADMSG, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %116

66:                                               ; preds = %58
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %116

69:                                               ; preds = %3
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @I2C_STAT_DAT_REQ, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load i32, i32* @I2C_STAT_FIFO_COUNT, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @FIELD_GET(i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @I2C_M_RD, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @fsi_i2c_read_fifo(%struct.fsi_i2c_port* %85, %struct.i2c_msg* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %116

89:                                               ; preds = %74
  %90 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @fsi_i2c_write_fifo(%struct.fsi_i2c_port* %90, %struct.i2c_msg* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %116

94:                                               ; preds = %69
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @I2C_STAT_CMD_COMP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %101 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @ENODATA, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %116

110:                                              ; preds = %99
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %112 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  br label %116

115:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %110, %107, %89, %84, %66, %63, %55, %47, %39, %27, %20
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @fsi_i2c_abort(%struct.fsi_i2c_port*, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @fsi_i2c_read_fifo(%struct.fsi_i2c_port*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @fsi_i2c_write_fifo(%struct.fsi_i2c_port*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
