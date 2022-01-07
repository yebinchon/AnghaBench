; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dib7000m_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dib7000m_state = type { i64 }
%struct.dtv_frontend_properties = type { i64, i64, i64, i64, i32 }

@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"autosearch returns: %d\0A\00", align 1
@OUTMODE_MPEG2_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000m_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib7000m_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.dib7000m_state*, %struct.dib7000m_state** %13, align 8
  store %struct.dib7000m_state* %14, %struct.dib7000m_state** %5, align 8
  %15 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %16 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %17 = call i32 @dib7000m_set_output_mode(%struct.dib7000m_state* %15, i32 %16)
  %18 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BANDWIDTH_TO_KHZ(i32 %21)
  %23 = call i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %18, i32 %22)
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %27, align 8
  %29 = icmp ne i32 (%struct.dvb_frontend.0*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %34, align 8
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = bitcast %struct.dvb_frontend* %36 to %struct.dvb_frontend.0*
  %38 = call i32 %35(%struct.dvb_frontend.0* %37)
  br label %39

39:                                               ; preds = %30, %1
  %40 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %41 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %51, %39
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = call i32 @dib7000m_agc_startup(%struct.dvb_frontend* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @msleep(i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %42, label %54

54:                                               ; preds = %51
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %78, label %60

60:                                               ; preds = %54
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @QAM_AUTO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FEC_AUTO, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %72, %66, %60, %54
  store i32 800, i32* %8, align 4
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %80 = call i32 @dib7000m_autosearch_start(%struct.dvb_frontend* %79)
  br label %81

81:                                               ; preds = %92, %78
  %82 = call i32 @msleep(i32 1)
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %84 = call i32 @dib7000m_autosearch_is_irq(%struct.dvb_frontend* %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %8, align 4
  %91 = icmp ne i32 %89, 0
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i1 [ false, %85 ], [ %91, %88 ]
  br i1 %93, label %81, label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %94
  store i32 0, i32* %2, align 4
  br label %114

103:                                              ; preds = %99
  %104 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %105 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %106 = call i32 @dib7000m_get_frontend(%struct.dvb_frontend* %104, %struct.dtv_frontend_properties* %105)
  br label %107

107:                                              ; preds = %103, %72
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %109 = call i32 @dib7000m_tune(%struct.dvb_frontend* %108)
  store i32 %109, i32* %7, align 4
  %110 = load %struct.dib7000m_state*, %struct.dib7000m_state** %5, align 8
  %111 = load i32, i32* @OUTMODE_MPEG2_FIFO, align 4
  %112 = call i32 @dib7000m_set_output_mode(%struct.dib7000m_state* %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %107, %102
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @dib7000m_set_output_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_bandwidth(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000m_agc_startup(%struct.dvb_frontend*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib7000m_autosearch_start(%struct.dvb_frontend*) #1

declare dso_local i32 @dib7000m_autosearch_is_irq(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib7000m_get_frontend(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @dib7000m_tune(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
