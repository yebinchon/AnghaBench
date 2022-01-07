; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0367_state* }
%struct.stv0367_state = type { i32 }

@demod_none = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0367ddb_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367ddb_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv0367_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  store %struct.stv0367_state* %7, %struct.stv0367_state** %4, align 8
  %8 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %9 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 128, label %11
    i32 129, label %18
  ]

11:                                               ; preds = %1
  %12 = load i8*, i8** @demod_none, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %15 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = call i32 @stv0367ter_sleep(%struct.dvb_frontend* %16)
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i8*, i8** @demod_none, align 8
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %22 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = call i32 @stv0367cab_sleep(%struct.dvb_frontend* %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %18, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @stv0367ter_sleep(%struct.dvb_frontend*) #1

declare dso_local i32 @stv0367cab_sleep(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
