; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_diolan_u2c = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@frequency = common dso_local global i32 0, align 4
@U2C_I2C_SPEED_FAST = common dso_local global i32 0, align 4
@U2C_I2C_FREQ_FAST = common dso_local global i32 0, align 4
@U2C_I2C_SPEED_STD = common dso_local global i32 0, align 4
@U2C_I2C_FREQ_STD = common dso_local global i32 0, align 4
@U2C_I2C_SPEED_2KHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Diolan U2C at USB bus %03d address %03d speed %d Hz\0A\00", align 1
@DIOLAN_SYNC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_diolan_u2c*)* @diolan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diolan_init(%struct.i2c_diolan_u2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_diolan_u2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_diolan_u2c* %0, %struct.i2c_diolan_u2c** %3, align 8
  %6 = load i32, i32* @frequency, align 4
  %7 = icmp sge i32 %6, 200000
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @U2C_I2C_SPEED_FAST, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @U2C_I2C_FREQ_FAST, align 4
  store i32 %10, i32* @frequency, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @frequency, align 4
  %13 = icmp sge i32 %12, 100000
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @frequency, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @U2C_I2C_SPEED_STD, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @U2C_I2C_FREQ_STD, align 4
  store i32 %19, i32* @frequency, align 4
  br label %31

20:                                               ; preds = %14
  %21 = load i32, i32* @frequency, align 4
  %22 = call i32 @U2C_I2C_SPEED(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @U2C_I2C_SPEED_2KHZ, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @U2C_I2C_SPEED_2KHZ, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @U2C_I2C_FREQ(i32 %29)
  store i32 %30, i32* @frequency, align 4
  br label %31

31:                                               ; preds = %28, %17
  br label %32

32:                                               ; preds = %31, %8
  %33 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @frequency, align 4
  %50 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48, i32 %49)
  %51 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %52 = call i32 @diolan_flush_input(%struct.i2c_diolan_u2c* %51)
  %53 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %54 = call i32 @diolan_fw_version(%struct.i2c_diolan_u2c* %53)
  %55 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %56 = call i32 @diolan_get_serial(%struct.i2c_diolan_u2c* %55)
  %57 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @diolan_set_speed(%struct.i2c_diolan_u2c* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %32
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %85

64:                                               ; preds = %32
  %65 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @U2C_I2C_SPEED_FAST, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @diolan_set_clock_synch(%struct.i2c_diolan_u2c* %65, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %85

75:                                               ; preds = %64
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @U2C_I2C_SPEED_FAST, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %81 = load i32, i32* @DIOLAN_SYNC_TIMEOUT, align 4
  %82 = call i32 @diolan_set_clock_synch_timeout(%struct.i2c_diolan_u2c* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %73, %62
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @U2C_I2C_SPEED(i32) #1

declare dso_local i32 @U2C_I2C_FREQ(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @diolan_flush_input(%struct.i2c_diolan_u2c*) #1

declare dso_local i32 @diolan_fw_version(%struct.i2c_diolan_u2c*) #1

declare dso_local i32 @diolan_get_serial(%struct.i2c_diolan_u2c*) #1

declare dso_local i32 @diolan_set_speed(%struct.i2c_diolan_u2c*, i32) #1

declare dso_local i32 @diolan_set_clock_synch(%struct.i2c_diolan_u2c*, i32) #1

declare dso_local i32 @diolan_set_clock_synch_timeout(%struct.i2c_diolan_u2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
