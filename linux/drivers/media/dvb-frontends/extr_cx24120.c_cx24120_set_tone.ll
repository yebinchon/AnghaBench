; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24120_state* }
%struct.cx24120_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@SEC_TONE_ON = common dso_local global i32 0, align 4
@SEC_TONE_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid tone=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_SETTONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @cx24120_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx24120_state*, align 8
  %7 = alloca %struct.cx24120_cmd, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.cx24120_state*, %struct.cx24120_state** %9, align 8
  store %struct.cx24120_state* %10, %struct.cx24120_state** %6, align 8
  %11 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %12 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SEC_TONE_ON, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SEC_TONE_OFF, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %20, %2
  %30 = load i32, i32* @CMD_SETTONE, align 4
  %31 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SEC_TONE_ON, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %51 = call i32 @cx24120_message_send(%struct.cx24120_state* %50, %struct.cx24120_cmd* %7)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %29, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
