; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24120_state*, i32 }
%struct.cx24120_state = type { %struct.dvb_frontend, i64, %struct.i2c_adapter*, %struct.cx24120_config* }
%struct.cx24120_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Conexant cx24120/cx24118 - DVBS/S2 Satellite demod/tuner\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for cx24120_state\0A\00", align 1
@CX24120_REG_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Demod cx24120 rev. 0x07 detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Demod cx24120 rev. 0x05 detected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Unsupported demod revision: 0x%x detected.\0A\00", align 1
@cx24120_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Conexant cx24120/cx24118 attached.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cx24120_attach(%struct.cx24120_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cx24120_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.cx24120_state*, align 8
  %7 = alloca i32, align 4
  store %struct.cx24120_config* %0, %struct.cx24120_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %8 = call i32 @info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cx24120_state* @kzalloc(i32 40, i32 %9)
  store %struct.cx24120_state* %10, %struct.cx24120_state** %6, align 8
  %11 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %12 = icmp ne %struct.cx24120_state* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.cx24120_config*, %struct.cx24120_config** %4, align 8
  %17 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %18 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %17, i32 0, i32 3
  store %struct.cx24120_config* %16, %struct.cx24120_config** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %20 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %21 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %20, i32 0, i32 2
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %21, align 8
  %22 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %23 = load i32, i32* @CX24120_REG_REVISION, align 4
  %24 = call i32 @cx24120_readreg(%struct.cx24120_state* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %30 [
    i32 7, label %26
    i32 5, label %28
  ]

26:                                               ; preds = %15
  %27 = call i32 @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %33

28:                                               ; preds = %15
  %29 = call i32 @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %33

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %47

33:                                               ; preds = %28, %26
  %34 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %35 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %37 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 1
  %39 = call i32 @memcpy(i32* %38, i32* @cx24120_ops, i32 4)
  %40 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %41 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %42 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %42, i32 0, i32 0
  store %struct.cx24120_state* %40, %struct.cx24120_state** %43, align 8
  %44 = call i32 @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %46 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %45, i32 0, i32 0
  store %struct.dvb_frontend* %46, %struct.dvb_frontend** %3, align 8
  br label %50

47:                                               ; preds = %30, %13
  %48 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %49 = call i32 @kfree(%struct.cx24120_state* %48)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %50

50:                                               ; preds = %47, %33
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %51
}

declare dso_local i32 @info(i8*) #1

declare dso_local %struct.cx24120_state* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.cx24120_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
