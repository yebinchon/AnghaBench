; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_get_tune_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_get_tune_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.drxk_state* }
%struct.dtv_frontend_properties = type { i32 }
%struct.drxk_state = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DRXK_NO_DEV = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DRXK_UNINITIALIZED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @drxk_get_tune_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxk_get_tune_settings(%struct.dvb_frontend* %0, %struct.dvb_frontend_tune_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_tune_settings*, align 8
  %6 = alloca %struct.drxk_state*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_tune_settings* %1, %struct.dvb_frontend_tune_settings** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.drxk_state*, %struct.drxk_state** %9, align 8
  store %struct.drxk_state* %10, %struct.drxk_state** %6, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %7, align 8
  %13 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.drxk_state*, %struct.drxk_state** %6, align 8
  %15 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DRXK_NO_DEV, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.drxk_state*, %struct.drxk_state** %6, align 8
  %24 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DRXK_UNINITIALIZED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %42 [
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %31, %31, %31
  %36 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %5, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %36, i32 0, i32 0
  store i32 3000, i32* %37, align 4
  %38 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %5, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %35, %28, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
