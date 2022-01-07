; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_doxfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_doxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_i2c = type { i32, i32, i32, i32, i32, i32, %struct.i2c_msg*, i32, i64, i64 }
%struct.i2c_msg = type { i32 }

@SYNQUACER_I2C_REG_BSR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_BSR_BB = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"cannot get bus (bus busy)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Address failed: (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"incomplete xfer (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synquacer_i2c*, %struct.i2c_msg*, i32)* @synquacer_i2c_doxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_i2c_doxfer(%struct.synquacer_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.synquacer_i2c*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.synquacer_i2c* %0, %struct.synquacer_i2c** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %12 = call i32 @synquacer_i2c_hw_init(%struct.synquacer_i2c* %11)
  %13 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %14 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SYNQUACER_I2C_REG_BSR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i8 @readb(i64 %17)
  store i8 %18, i8* %8, align 1
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @SYNQUACER_I2C_BSR_BB, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %27 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %102

32:                                               ; preds = %3
  %33 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %34 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %33, i32 0, i32 5
  %35 = call i32 @reinit_completion(i32* %34)
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %38 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %37, i32 0, i32 6
  store %struct.i2c_msg* %36, %struct.i2c_msg** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %41 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %43 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %45 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @STATE_START, align 4
  %47 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %48 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %50 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %51 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %50, i32 0, i32 6
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %51, align 8
  %53 = call i32 @synquacer_i2c_master_start(%struct.synquacer_i2c* %49, %struct.i2c_msg* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %32
  %57 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %58 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %102

63:                                               ; preds = %32
  %64 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %65 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %64, i32 0, i32 5
  %66 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %67 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @msecs_to_jiffies(i32 %68)
  %70 = call i64 @wait_for_completion_timeout(i32* %65, i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %75 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EAGAIN, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %102

80:                                               ; preds = %63
  %81 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %82 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %89 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 (i32, i8*, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %102

95:                                               ; preds = %80
  %96 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %97 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @DIV_ROUND_UP(i32 2000, i32 %98)
  %100 = call i32 @udelay(i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %95, %87, %73, %56, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @synquacer_i2c_hw_init(%struct.synquacer_i2c*) #1

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @synquacer_i2c_master_start(%struct.synquacer_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
