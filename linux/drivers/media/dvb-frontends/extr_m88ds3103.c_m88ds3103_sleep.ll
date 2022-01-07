; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88ds3103_dev* }
%struct.m88ds3103_dev = type { i64, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SYS_UNDEFINED = common dso_local global i32 0, align 4
@M88RS6000_CHIP_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @m88ds3103_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.m88ds3103_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %9, align 8
  store %struct.m88ds3103_dev* %10, %struct.m88ds3103_dev** %4, align 8
  %11 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %12 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %11, i32 0, i32 3
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %18 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @SYS_UNDEFINED, align 4
  %20 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %21 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %23 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @M88RS6000_CHIP_ID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 41, i32* %7, align 4
  br label %29

28:                                               ; preds = %1
  store i32 39, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %30, i32 %31, i32 1, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %55

36:                                               ; preds = %29
  %37 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %38 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %37, i32 8, i32 1, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %55

42:                                               ; preds = %36
  %43 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %44 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %43, i32 4, i32 1, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %42
  %49 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %50 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %49, i32 35, i32 16, i32 16)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %61

55:                                               ; preds = %53, %47, %41, %35
  %56 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %54
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @m88ds3103_update_bits(%struct.m88ds3103_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
