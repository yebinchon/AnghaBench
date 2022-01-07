; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-digicolor.c_dc_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_i2c = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@II_INTFLAG_CLEAR = common dso_local global i64 0, align 8
@II_CMD_STATUS_ACK_BAD = common dso_local global i32 0, align 4
@II_CMD_STATUS_ABORT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dc_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dc_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dc_i2c*
  store %struct.dc_i2c* %10, %struct.dc_i2c** %5, align 8
  %11 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %12 = call i32 @dc_i2c_cmd_status(%struct.dc_i2c* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %14 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @II_INTFLAG_CLEAR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeb_relaxed(i32 1, i64 %17)
  %19 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %20 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %19, i32 0, i32 1
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @II_CMD_STATUS_ACK_BAD, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @II_CMD_STATUS_ABORT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %36 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %35, i32 0, i32 2
  %37 = call i32 @complete(i32* %36)
  br label %111

38:                                               ; preds = %26
  %39 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %110 [
    i32 130, label %42
    i32 132, label %52
    i32 128, label %69
    i32 131, label %86
    i32 129, label %103
  ]

42:                                               ; preds = %38
  %43 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %44 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 @dc_i2c_addr_cmd(%struct.TYPE_2__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dc_i2c_write_byte(%struct.dc_i2c* %47, i32 %48)
  %50 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %51 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %50, i32 0, i32 0
  store i32 132, i32* %51, align 8
  br label %110

52:                                               ; preds = %38
  %53 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %54 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @I2C_M_RD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %63 = call i32 @dc_i2c_next_read(%struct.dc_i2c* %62)
  %64 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %65 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %64, i32 0, i32 0
  store i32 131, i32* %65, align 8
  br label %110

66:                                               ; preds = %52
  %67 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %68 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %67, i32 0, i32 0
  store i32 128, i32* %68, align 8
  br label %69

69:                                               ; preds = %38, %66
  %70 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %71 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %74 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %81 = call i32 @dc_i2c_write_buf(%struct.dc_i2c* %80)
  br label %85

82:                                               ; preds = %69
  %83 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %84 = call i32 @dc_i2c_stop(%struct.dc_i2c* %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %110

86:                                               ; preds = %38
  %87 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %88 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %91 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %98 = call i32 @dc_i2c_read_buf(%struct.dc_i2c* %97)
  br label %102

99:                                               ; preds = %86
  %100 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %101 = call i32 @dc_i2c_stop(%struct.dc_i2c* %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %110

103:                                              ; preds = %38
  %104 = load i32, i32* @STATE_IDLE, align 4
  %105 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %106 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %108 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %107, i32 0, i32 2
  %109 = call i32 @complete(i32* %108)
  br label %110

110:                                              ; preds = %38, %103, %102, %85, %61, %42
  br label %111

111:                                              ; preds = %110, %30
  %112 = load %struct.dc_i2c*, %struct.dc_i2c** %5, align 8
  %113 = getelementptr inbounds %struct.dc_i2c, %struct.dc_i2c* %112, i32 0, i32 1
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %116
}

declare dso_local i32 @dc_i2c_cmd_status(%struct.dc_i2c*) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dc_i2c_addr_cmd(%struct.TYPE_2__*) #1

declare dso_local i32 @dc_i2c_write_byte(%struct.dc_i2c*, i32) #1

declare dso_local i32 @dc_i2c_next_read(%struct.dc_i2c*) #1

declare dso_local i32 @dc_i2c_write_buf(%struct.dc_i2c*) #1

declare dso_local i32 @dc_i2c_stop(%struct.dc_i2c*) #1

declare dso_local i32 @dc_i2c_read_buf(%struct.dc_i2c*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
