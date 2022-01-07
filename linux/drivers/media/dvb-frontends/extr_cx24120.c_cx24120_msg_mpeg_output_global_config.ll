; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_msg_mpeg_output_global_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_msg_mpeg_output_global_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@CMD_MPEG_ONOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to %s MPEG output\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"MPEG output %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, i8*)* @cx24120_msg_mpeg_output_global_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_msg_mpeg_output_global_config(%struct.cx24120_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24120_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cx24120_cmd, align 8
  %7 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @CMD_MPEG_ONOFF, align 4
  %9 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* null, i8* inttoptr (i64 -1 to i8*)
  %21 = ptrtoint i8* %20 to i32
  %22 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 1, i32* %27, align 4
  %28 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %29 = call i32 @cx24120_message_send(%struct.cx24120_state* %28, %struct.cx24120_cmd* %6)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %2
  %33 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %34 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %56

43:                                               ; preds = %2
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %46 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %48 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %55 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %43, %32
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
