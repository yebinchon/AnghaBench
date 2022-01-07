; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24123_state*, i32 }
%struct.cx24123_state = type { i32, %struct.dvb_frontend, %struct.TYPE_7__, %struct.i2c_adapter*, %struct.cx24123_config* }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cx24123_config = type { i64 }
%struct.i2c_adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Unable to kzalloc\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"detected CX24123C\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"detected CX24123\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"wrong demod revision: %x\0A\00", align 1
@cx24123_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"CX24123 tuner I2C bus\00", align 1
@cx24123_tuner_i2c_algo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"tuner i2c bus could not be initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cx24123_attach(%struct.cx24123_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cx24123_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.cx24123_state*, align 8
  store %struct.cx24123_config* %0, %struct.cx24123_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cx24123_state* @kzalloc(i32 72, i32 %7)
  store %struct.cx24123_state* %8, %struct.cx24123_state** %6, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %11 = icmp eq %struct.cx24123_state* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.cx24123_config*, %struct.cx24123_config** %4, align 8
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %17 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %16, i32 0, i32 4
  store %struct.cx24123_config* %15, %struct.cx24123_config** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %20 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %19, i32 0, i32 3
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %22 = call i32 @cx24123_readreg(%struct.cx24123_state* %21, i32 0)
  %23 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %24 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %26 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %32 [
    i32 225, label %28
    i32 209, label %30
  ]

28:                                               ; preds = %14
  %29 = call i32 @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %37

30:                                               ; preds = %14
  %31 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %37

32:                                               ; preds = %14
  %33 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %34 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  br label %86

37:                                               ; preds = %30, %28
  %38 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %39 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 1
  %41 = call i32 @memcpy(i32* %40, i32* @cx24123_ops, i32 4)
  %42 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %43 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %44 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  store %struct.cx24123_state* %42, %struct.cx24123_state** %45, align 8
  %46 = load %struct.cx24123_config*, %struct.cx24123_config** %4, align 8
  %47 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %52 = call i32 @cx24123_repeater_mode(%struct.cx24123_state* %51, i32 1, i32 0)
  br label %53

53:                                               ; preds = %50, %37
  %54 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %55 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @strscpy(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %59 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %60 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32* @cx24123_tuner_i2c_algo, i32** %61, align 8
  %62 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %63 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %70 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %74 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %73, i32 0, i32 2
  %75 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %76 = call i32 @i2c_set_adapdata(%struct.TYPE_7__* %74, %struct.cx24123_state* %75)
  %77 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %78 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %77, i32 0, i32 2
  %79 = call i64 @i2c_add_adapter(%struct.TYPE_7__* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %53
  %82 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %86

83:                                               ; preds = %53
  %84 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %85 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %84, i32 0, i32 1
  store %struct.dvb_frontend* %85, %struct.dvb_frontend** %3, align 8
  br label %89

86:                                               ; preds = %81, %32, %12
  %87 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  %88 = call i32 @kfree(%struct.cx24123_state* %87)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %90
}

declare dso_local %struct.cx24123_state* @kzalloc(i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cx24123_repeater_mode(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_7__*, %struct.cx24123_state*) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.cx24123_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
