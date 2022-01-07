; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ddb_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.stv0367_state* }
%struct.dtv_frontend_properties = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.stv0367_state = type { i32 }

@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv0367ddb_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367ddb_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stv0367_state*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.stv0367_state*, %struct.stv0367_state** %10, align 8
  store %struct.stv0367_state* %11, %struct.stv0367_state** %6, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %15 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 128, label %17
    i32 129, label %21
  ]

17:                                               ; preds = %2
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @stv0367ter_read_status(%struct.dvb_frontend* %18, i32* %19)
  store i32 %20, i32* %8, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @stv0367cab_read_status(%struct.dvb_frontend* %22, i32* %23)
  store i32 %24, i32* %8, align 4
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21, %17
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %26
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = call i32 @stv0367ddb_read_signal_strength(%struct.dvb_frontend* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FE_HAS_CARRIER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %41 = call i32 @stv0367ddb_read_snr(%struct.dvb_frontend* %40)
  br label %50

42:                                               ; preds = %31
  %43 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %43, i8** %49, align 8
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FE_HAS_LOCK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %58 = call i32 @stv0367ddb_read_ucblocks(%struct.dvb_frontend* %57)
  br label %67

59:                                               ; preds = %50
  %60 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i8* %60, i8** %66, align 8
  br label %67

67:                                               ; preds = %59, %56
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @stv0367ter_read_status(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @stv0367cab_read_status(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @stv0367ddb_read_signal_strength(%struct.dvb_frontend*) #1

declare dso_local i32 @stv0367ddb_read_snr(%struct.dvb_frontend*) #1

declare dso_local i32 @stv0367ddb_read_ucblocks(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
