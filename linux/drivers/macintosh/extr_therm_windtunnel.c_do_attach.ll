; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_windtunnel.c_do_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_windtunnel.c_do_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@do_attach.scan_ds1775 = internal constant [9 x i16] [i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 128], align 16
@do_attach.scan_adm1030 = internal constant [5 x i16] [i16 44, i16 45, i16 46, i16 47, i16 128], align 2
@.str = private unnamed_addr constant [6 x i8] c"uni-n\00", align 1
@x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"therm_ds1775\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"therm_adm1030\00", align 1
@control_loop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"g4fand\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @do_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_attach(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_board_info, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @strncmp(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 0), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = call i32 @memset(%struct.i2c_board_info* %4, i32 0, i32 4)
  %16 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_NAME_SIZE, align 4
  %19 = call i32 @strlcpy(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %21 = call i32 @i2c_new_probed_device(%struct.i2c_adapter* %20, %struct.i2c_board_info* %4, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @do_attach.scan_ds1775, i64 0, i64 0), i32* null)
  %22 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I2C_NAME_SIZE, align 4
  %25 = call i32 @strlcpy(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %27 = call i32 @i2c_new_probed_device(%struct.i2c_adapter* %26, %struct.i2c_board_info* %4, i16* getelementptr inbounds ([5 x i16], [5 x i16]* @do_attach.scan_adm1030, i64 0, i64 0), i32* null)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 3), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %14
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 2), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 0), align 8
  %34 = load i32, i32* @control_loop, align 4
  %35 = call i32 @kthread_run(i32 %34, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x, i32 0, i32 1), align 4
  br label %36

36:                                               ; preds = %33, %30, %14
  br label %37

37:                                               ; preds = %36, %11
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_new_probed_device(%struct.i2c_adapter*, %struct.i2c_board_info*, i16*, i32*) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
