; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.drxk_state* }
%struct.drxk_state = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DRXK_NO_DEV = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DRXK_UNINITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @drxk_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxk_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.drxk_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.drxk_state*, %struct.drxk_state** %6, align 8
  store %struct.drxk_state* %7, %struct.drxk_state** %4, align 8
  %8 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %10 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DRXK_NO_DEV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %19 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DRXK_UNINITIALIZED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load %struct.drxk_state*, %struct.drxk_state** %4, align 8
  %26 = call i32 @shut_down(%struct.drxk_state* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %23, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @shut_down(%struct.drxk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
