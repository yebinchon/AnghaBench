; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24113_state*, %struct.TYPE_2__ }
%struct.cx24113_state = type { i32, i8*, %struct.i2c_adapter*, %struct.cx24113_config* }
%struct.TYPE_2__ = type { i32 }
%struct.cx24113_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"trying to detect myself\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CX24113 not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"detected CX24113 variant\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"successfully detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unsupported device id: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"version: %x\0A\00", align 1
@cx24113_tuner_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @cx24113_attach(%struct.dvb_frontend* %0, %struct.cx24113_config* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.cx24113_config*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.cx24113_state*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.cx24113_config* %1, %struct.cx24113_config** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cx24113_state* @kzalloc(i32 32, i32 %10)
  store %struct.cx24113_state* %11, %struct.cx24113_state** %8, align 8
  %12 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %13 = icmp ne %struct.cx24113_state* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.cx24113_config*, %struct.cx24113_config** %6, align 8
  %17 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %18 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %17, i32 0, i32 3
  store %struct.cx24113_config* %16, %struct.cx24113_config** %18, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %20 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %21 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %20, i32 0, i32 2
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %21, align 8
  %22 = call i32 (i8*, ...) @cx_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %24 = call i8* @cx24113_readreg(%struct.cx24113_state* %23, i32 0)
  %25 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %26 = call i8* @cx24113_readreg(%struct.cx24113_state* %25, i32 0)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 (i8*, ...) @cx_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %63

32:                                               ; preds = %15
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %35 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %41 [
    i32 67, label %37
    i32 128, label %39
  ]

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @cx_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %46

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @cx_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %46

41:                                               ; preds = %32
  %42 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %43 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cx_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %63

46:                                               ; preds = %39, %37
  %47 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %48 = call i8* @cx24113_readreg(%struct.cx24113_state* %47, i32 1)
  %49 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %50 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %52 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, ...) @cx_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @memcpy(i32* %57, i32* @cx24113_tuner_ops, i32 4)
  %59 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  store %struct.cx24113_state* %59, %struct.cx24113_state** %61, align 8
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %62, %struct.dvb_frontend** %4, align 8
  br label %66

63:                                               ; preds = %41, %30
  %64 = load %struct.cx24113_state*, %struct.cx24113_state** %8, align 8
  %65 = call i32 @kfree(%struct.cx24113_state* %64)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %66

66:                                               ; preds = %63, %46, %14
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %67
}

declare dso_local %struct.cx24113_state* @kzalloc(i32, i32) #1

declare dso_local i32 @cx_info(i8*, ...) #1

declare dso_local i8* @cx24113_readreg(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx_err(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.cx24113_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
