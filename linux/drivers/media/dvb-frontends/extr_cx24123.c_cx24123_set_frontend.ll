; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24123.c_cx24123_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.dtv_frontend_properties, %struct.cx24123_state* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dtv_frontend_properties = type { i32, i32, i32, i32 }
%struct.cx24123_state = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { {}*, i32, i32 (%struct.dvb_frontend*, i32)* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"it seems I don't have a tuner...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24123_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24123_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.cx24123_state*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 2
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %6, align 8
  store %struct.cx24123_state* %7, %struct.cx24123_state** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %4, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %12 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.dvb_frontend*, i32)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %19 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %21, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %24 = call i32 %22(%struct.dvb_frontend* %23, i32 0)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %30 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %35 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cx24123_set_inversion(%struct.cx24123_state* %36, i32 %39)
  %41 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cx24123_set_fec(%struct.cx24123_state* %41, i32 %44)
  %46 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %48 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cx24123_set_symbolrate(%struct.cx24123_state* %46, i32 %49)
  %51 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %52 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %25
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %59 = call i32 @cx24123_pll_tune(%struct.dvb_frontend* %58)
  br label %79

60:                                               ; preds = %25
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %64, align 8
  %66 = icmp ne i32 (%struct.dvb_frontend.0*)* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %71, align 8
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %74 = bitcast %struct.dvb_frontend* %73 to %struct.dvb_frontend.0*
  %75 = call i32 %72(%struct.dvb_frontend.0* %74)
  br label %78

76:                                               ; preds = %60
  %77 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %67
  br label %79

79:                                               ; preds = %78, %57
  %80 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %81 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %82 = call i32 @cx24123_readreg(%struct.cx24123_state* %81, i32 3)
  %83 = or i32 %82, 7
  %84 = call i32 @cx24123_writereg(%struct.cx24123_state* %80, i32 3, i32 %83)
  %85 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %86 = call i32 @cx24123_writereg(%struct.cx24123_state* %85, i32 0, i32 16)
  %87 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %88 = call i32 @cx24123_writereg(%struct.cx24123_state* %87, i32 0, i32 0)
  %89 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %90 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = bitcast {}** %92 to i32 (%struct.dvb_frontend*)**
  %94 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %93, align 8
  %95 = icmp ne i32 (%struct.dvb_frontend*)* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %79
  %97 = load %struct.cx24123_state*, %struct.cx24123_state** %3, align 8
  %98 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = bitcast {}** %100 to i32 (%struct.dvb_frontend*)**
  %102 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %101, align 8
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %104 = call i32 %102(%struct.dvb_frontend* %103)
  br label %105

105:                                              ; preds = %96, %79
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cx24123_set_inversion(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_set_fec(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_set_symbolrate(%struct.cx24123_state*, i32) #1

declare dso_local i32 @cx24123_pll_tune(%struct.dvb_frontend*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @cx24123_writereg(%struct.cx24123_state*, i32, i32) #1

declare dso_local i32 @cx24123_readreg(%struct.cx24123_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
