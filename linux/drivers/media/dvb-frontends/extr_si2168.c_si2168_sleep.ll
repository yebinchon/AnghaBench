; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.si2168_dev = type { i32, i8, i32 }
%struct.si2168_cmd = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\13\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @si2168_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2168_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.si2168_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.si2168_cmd, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.si2168_dev* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.si2168_dev* %12, %struct.si2168_dev** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %17 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = call i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend* %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %25 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 4
  %27 = sext i8 %26 to i32
  %28 = icmp sgt i32 %27, 1107558411
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %31 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = call i32 @cmd_init(%struct.si2168_cmd* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @si2168_cmd_execute(%struct.i2c_client* %34, %struct.si2168_cmd* %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %38, %22
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.si2168_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @cmd_init(%struct.si2168_cmd*, i8*, i32, i32) #1

declare dso_local i32 @si2168_cmd_execute(%struct.i2c_client*, %struct.si2168_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
