; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_pid_filter_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_pid_filter_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"pid filter cmd postpone\0A\00", align 1
@DIB9000_PID_FILTER_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"PID filter enabled %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib9000_fw_pid_filter_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib9000_state*, %struct.dib9000_state** %10, align 8
  store %struct.dib9000_state* %11, %struct.dib9000_state** %6, align 8
  %12 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %13 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -2
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %18 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 9
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %24 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @DIB9000_PID_FILTER_CTRL, align 4
  %28 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %29 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %32 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %27, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %39 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %42 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %37, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %74

47:                                               ; preds = %16, %2
  %48 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %49 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %48, i32 0, i32 1
  %50 = call i64 @mutex_lock_interruptible(i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINTR, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %74

56:                                               ; preds = %47
  %57 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %58 = call i32 @dib9000_read_word(%struct.dib9000_state* %57, i32 295)
  %59 = and i32 %58, 65519
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 1
  %62 = shl i32 %61, 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dib9000_write_word(%struct.dib9000_state* %67, i32 295, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %71 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %56, %52, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dib9000_read_word(%struct.dib9000_state*, i32) #1

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
