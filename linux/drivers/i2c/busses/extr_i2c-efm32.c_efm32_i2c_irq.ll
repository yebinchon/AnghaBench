; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efm32_i2c_ddata = type { i64, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@REG_IF = common dso_local global i32 0, align 4
@REG_STATE = common dso_local global i32 0, align 4
@REG_IFC = common dso_local global i32 0, align 4
@REG_IFC__MASK = common dso_local global i32 0, align 4
@REG_STATE_STATE__MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@REG_CMD = common dso_local global i32 0, align 4
@REG_CMD_STOP = common dso_local global i32 0, align 4
@REG_CMD_ABORT = common dso_local global i32 0, align 4
@REG_CMD_CLEARTX = common dso_local global i32 0, align 4
@REG_CMD_CLEARPC = common dso_local global i32 0, align 4
@REG_STATE_NACKED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @efm32_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.efm32_i2c_ddata*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.efm32_i2c_ddata*
  store %struct.efm32_i2c_ddata* %10, %struct.efm32_i2c_ddata** %5, align 8
  %11 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %12 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %11, i32 0, i32 3
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %14 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %15 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 %16
  store %struct.i2c_msg* %17, %struct.i2c_msg** %6, align 8
  %18 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %19 = load i32, i32* @REG_IF, align 4
  %20 = call i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %22 = load i32, i32* @REG_STATE, align 4
  %23 = call i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %25 = load i32, i32* @REG_IFC, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @REG_IFC__MASK, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %24, i32 %25, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @REG_STATE_STATE__MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %120 [
    i32 130, label %33
    i32 128, label %41
    i32 129, label %59
    i32 134, label %60
    i32 133, label %61
    i32 132, label %91
    i32 131, label %103
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %37 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %39 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %38, i32 0, i32 1
  %40 = call i32 @complete(i32* %39)
  br label %120

41:                                               ; preds = %2
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %45 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %47 = load i32, i32* @REG_CMD, align 4
  %48 = load i32, i32* @REG_CMD_STOP, align 4
  %49 = load i32, i32* @REG_CMD_ABORT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @REG_CMD_CLEARTX, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @REG_CMD_CLEARPC, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %46, i32 %47, i32 %54)
  %56 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %57 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %56, i32 0, i32 1
  %58 = call i32 @complete(i32* %57)
  br label %120

59:                                               ; preds = %2
  br label %120

60:                                               ; preds = %2
  br label %120

61:                                               ; preds = %2
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @REG_STATE_NACKED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %68 = load i32, i32* @REG_CMD, align 4
  %69 = load i32, i32* @REG_CMD_STOP, align 4
  %70 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @ENXIO, align 4
  %72 = sub nsw i32 0, %71
  %73 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %74 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %76 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %75, i32 0, i32 1
  %77 = call i32 @complete(i32* %76)
  br label %90

78:                                               ; preds = %61
  %79 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @I2C_M_RD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %89

86:                                               ; preds = %78
  %87 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %88 = call i32 @efm32_i2c_send_next_byte(%struct.efm32_i2c_ddata* %87)
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %66
  br label %120

91:                                               ; preds = %2
  %92 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @I2C_M_RD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %100 = call i32 @efm32_i2c_recv_next_byte(%struct.efm32_i2c_ddata* %99)
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %98
  br label %120

103:                                              ; preds = %2
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @REG_STATE_NACKED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %110 = load i32, i32* @REG_CMD, align 4
  %111 = load i32, i32* @REG_CMD_STOP, align 4
  %112 = call i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata* %109, i32 %110, i32 %111)
  %113 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %114 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %113, i32 0, i32 1
  %115 = call i32 @complete(i32* %114)
  br label %119

116:                                              ; preds = %103
  %117 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %5, align 8
  %118 = call i32 @efm32_i2c_send_next_byte(%struct.efm32_i2c_ddata* %117)
  br label %119

119:                                              ; preds = %116, %108
  br label %120

120:                                              ; preds = %119, %2, %102, %90, %60, %59, %41, %33
  %121 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %121
}

declare dso_local i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata*, i32) #1

declare dso_local i32 @efm32_i2c_write32(%struct.efm32_i2c_ddata*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @efm32_i2c_send_next_byte(%struct.efm32_i2c_ddata*) #1

declare dso_local i32 @efm32_i2c_recv_next_byte(%struct.efm32_i2c_ddata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
