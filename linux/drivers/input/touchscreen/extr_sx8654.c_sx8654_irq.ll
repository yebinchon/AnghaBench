; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sx8654.c_sx8654_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sx8654.c_sx8654_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx8654 = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CMD_READ_REGISTER = common dso_local global i32 0, align 4
@I2C_REG_IRQSRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"irqsrc = 0x%x\00", align 1
@IRQ_PENRELEASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"pen release interrupt\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@IRQ_PENTOUCH_TOUCHCONVDONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"pen touch interrupt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"point(%4d,%4d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sx8654_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx8654_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sx8654*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sx8654*
  store %struct.sx8654* %12, %struct.sx8654** %5, align 8
  %13 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %14 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* @CMD_READ_REGISTER, align 4
  %17 = load i32, i32* @I2C_REG_IRQSRC, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %21 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %125

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IRQ_PENRELEASE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %36 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %41 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BTN_TOUCH, align 4
  %44 = call i32 @input_report_key(i32 %42, i32 %43, i32 0)
  %45 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %46 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @input_sync(i32 %47)
  br label %49

49:                                               ; preds = %34, %29
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @IRQ_PENTOUCH_TOUCHCONVDONE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %124

54:                                               ; preds = %49
  %55 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %56 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %61 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %64 = call i32 @i2c_master_recv(%struct.TYPE_3__* %62, i32* %63, i32 16)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 16
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %125

69:                                               ; preds = %54
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ true, %69 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %125

85:                                               ; preds = %79
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = and i32 %87, 15
  %89 = shl i32 %88, 8
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %89, %91
  store i32 %92, i32* %8, align 4
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 15
  %96 = shl i32 %95, 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %96, %98
  store i32 %99, i32* %9, align 4
  %100 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %101 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %104 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %103, i32 0, i32 2
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @touchscreen_report_pos(i32 %102, i32* %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %109 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BTN_TOUCH, align 4
  %112 = call i32 @input_report_key(i32 %110, i32 %111, i32 1)
  %113 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %114 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @input_sync(i32 %115)
  %117 = load %struct.sx8654*, %struct.sx8654** %5, align 8
  %118 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %85, %49
  br label %125

125:                                              ; preds = %124, %84, %68, %28
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %126
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
