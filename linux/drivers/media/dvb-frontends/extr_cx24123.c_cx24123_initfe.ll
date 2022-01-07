; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_initfe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_initfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.dvb_frontend = type { %struct.cx24123_state* }
%struct.cx24123_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"init frontend\0A\00", align 1
@cx24123_regdata = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24123_initfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_initfe(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.cx24123_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  store %struct.cx24123_state* %7, %struct.cx24123_state** %3, align 8
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx24123_regdata, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx24123_regdata, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx24123_regdata, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cx24123_writereg(%struct.cx24123_state* %15, i32 %21, i32 %27)
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %34 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %41 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %42 = call i32 @cx24123_readreg(%struct.cx24123_state* %41, i32 50)
  %43 = or i32 %42, 2
  %44 = call i32 @cx24123_writereg(%struct.cx24123_state* %40, i32 50, i32 %43)
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %47 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %54 = call i32 @cx24123_repeater_mode(%struct.cx24123_state* %53, i32 1, i32 0)
  br label %55

55:                                               ; preds = %52, %45
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_repeater_mode(%struct.cx24123_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
