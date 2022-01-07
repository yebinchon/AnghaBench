; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0288.c_stv0288_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0288.c_stv0288_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0288_state*, i32 }
%struct.stv0288_state = type { %struct.dvb_frontend, i32, i64, i64, i64, i64, %struct.i2c_adapter*, %struct.stv0288_config* }
%struct.stv0288_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@STATUS_BER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"stv0288 id %x\0A\00", align 1
@stv0288_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @stv0288_attach(%struct.stv0288_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv0288_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.stv0288_state*, align 8
  %7 = alloca i32, align 4
  store %struct.stv0288_config* %0, %struct.stv0288_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.stv0288_state* null, %struct.stv0288_state** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.stv0288_state* @kzalloc(i32 72, i32 %8)
  store %struct.stv0288_state* %9, %struct.stv0288_state** %6, align 8
  %10 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %11 = icmp eq %struct.stv0288_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.stv0288_config*, %struct.stv0288_config** %4, align 8
  %15 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %16 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %15, i32 0, i32 7
  store %struct.stv0288_config* %14, %struct.stv0288_config** %16, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %19 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %18, i32 0, i32 6
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %19, align 8
  %20 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %21 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %23 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %25 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %27 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @STATUS_BER, align 4
  %29 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %30 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %32 = call i32 @stv0288_writeregI(%struct.stv0288_state* %31, i32 65, i32 4)
  %33 = call i32 @msleep(i32 200)
  %34 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %35 = call i32 @stv0288_readreg(%struct.stv0288_state* %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 17
  br i1 %39, label %40, label %41

40:                                               ; preds = %13
  br label %52

41:                                               ; preds = %13
  %42 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %43 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 1
  %45 = call i32 @memcpy(i32* %44, i32* @stv0288_ops, i32 4)
  %46 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %47 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %48 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 0
  store %struct.stv0288_state* %46, %struct.stv0288_state** %49, align 8
  %50 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %51 = getelementptr inbounds %struct.stv0288_state, %struct.stv0288_state* %50, i32 0, i32 0
  store %struct.dvb_frontend* %51, %struct.dvb_frontend** %3, align 8
  br label %55

52:                                               ; preds = %40, %12
  %53 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %54 = call i32 @kfree(%struct.stv0288_state* %53)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %55

55:                                               ; preds = %52, %41
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %56
}

declare dso_local %struct.stv0288_state* @kzalloc(i32, i32) #1

declare dso_local i32 @stv0288_writeregI(%struct.stv0288_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stv0288_readreg(%struct.stv0288_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.stv0288_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
