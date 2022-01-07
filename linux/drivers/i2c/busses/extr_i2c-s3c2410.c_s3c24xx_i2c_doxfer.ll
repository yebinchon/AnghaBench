; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_doxfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_doxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_i2c = type { i32, i32, i32, i32, i32, i32, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"cannot get bus (error %d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@STATE_START = common dso_local global i32 0, align 4
@QUIRK_POLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"incomplete xfer (%d)\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@QUIRK_HDMIPHY = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_i2c*, %struct.i2c_msg*, i32)* @s3c24xx_i2c_doxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_doxfer(%struct.s3c24xx_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.s3c24xx_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.s3c24xx_i2c* %0, %struct.s3c24xx_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %10 = call i32 @s3c24xx_i2c_set_master(%struct.s3c24xx_i2c* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %106

21:                                               ; preds = %3
  %22 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %23 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %23, i32 0, i32 7
  store %struct.i2c_msg* %22, %struct.i2c_msg** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %31 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @STATE_START, align 4
  %33 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %34 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %36 = call i32 @s3c24xx_i2c_enable_irq(%struct.s3c24xx_i2c* %35)
  %37 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %39 = call i32 @s3c24xx_i2c_message_start(%struct.s3c24xx_i2c* %37, %struct.i2c_msg* %38)
  %40 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @QUIRK_POLL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %21
  %47 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %48 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %55 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  br label %106

60:                                               ; preds = %21
  %61 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %62 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %65 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @HZ, align 4
  %70 = mul nsw i32 %69, 5
  %71 = call i64 @wait_event_timeout(i32 %63, i32 %68, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %73 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %79 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %93

82:                                               ; preds = %60
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %88 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i8*, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %82
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %95 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @QUIRK_HDMIPHY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %106

101:                                              ; preds = %93
  %102 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %103 = call i32 @s3c24xx_i2c_wait_idle(%struct.s3c24xx_i2c* %102)
  %104 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %105 = call i32 @s3c24xx_i2c_disable_bus(%struct.s3c24xx_i2c* %104)
  br label %106

106:                                              ; preds = %101, %100, %59, %13
  %107 = load i32, i32* @STATE_IDLE, align 4
  %108 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %109 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @s3c24xx_i2c_set_master(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @s3c24xx_i2c_enable_irq(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @s3c24xx_i2c_message_start(%struct.s3c24xx_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @s3c24xx_i2c_wait_idle(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @s3c24xx_i2c_disable_bus(%struct.s3c24xx_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
