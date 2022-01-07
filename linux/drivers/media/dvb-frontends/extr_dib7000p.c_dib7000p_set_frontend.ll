; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.dib7000p_state*, %struct.dtv_frontend_properties }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dib7000p_state = type { i64, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.dtv_frontend_properties = type { i64, i64, i64, i64 }

@SOC7090 = common dso_local global i64 0, align 8
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@buggy_sfn_workaround = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"autosearch returns: %d\0A\00", align 1
@MPEG_ON_DIBTX = common dso_local global i32 0, align 4
@DIBTX_ON_HOSTBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib7000p_state*, align 8
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
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %13, align 8
  store %struct.dib7000p_state* %14, %struct.dib7000p_state** %5, align 8
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SOC7090, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = call i32 @dib7090_set_diversity_in(%struct.dvb_frontend* %21, i32 0)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %25 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %26 = call i32 @dib7000p_set_output_mode(%struct.dib7000p_state* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @buggy_sfn_workaround, align 4
  %29 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %30 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %34, align 8
  %36 = icmp ne i32 (%struct.dvb_frontend.0*)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %41, align 8
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = bitcast %struct.dvb_frontend* %43 to %struct.dvb_frontend.0*
  %45 = call i32 %42(%struct.dvb_frontend.0* %44)
  br label %46

46:                                               ; preds = %37, %27
  %47 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %48 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %58, %46
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %51 = call i32 @dib7000p_agc_startup(%struct.dvb_frontend* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @msleep(i32 %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %49, label %61

61:                                               ; preds = %58
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %61
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @QAM_AUTO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FEC_AUTO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %79, %73, %67, %61
  store i32 800, i32* %8, align 4
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %87 = call i32 @dib7000p_autosearch_start(%struct.dvb_frontend* %86)
  br label %88

88:                                               ; preds = %99, %85
  %89 = call i32 @msleep(i32 1)
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %91 = call i32 @dib7000p_autosearch_is_irq(%struct.dvb_frontend* %90)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %8, align 4
  %98 = icmp ne i32 %96, 0
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  br i1 %100, label %88, label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %101
  store i32 0, i32* %2, align 4
  br label %151

110:                                              ; preds = %106
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %113 = call i32 @dib7000p_get_frontend(%struct.dvb_frontend* %111, %struct.dtv_frontend_properties* %112)
  br label %114

114:                                              ; preds = %110, %79
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %116 = call i32 @dib7000p_tune(%struct.dvb_frontend* %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %118 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SOC7090, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %114
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %124 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %125 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @dib7090_set_output_mode(%struct.dvb_frontend* %123, i32 %127)
  %129 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %130 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %122
  %135 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %136 = load i32, i32* @MPEG_ON_DIBTX, align 4
  %137 = call i32 @dib7090_setDibTxMux(%struct.dib7000p_state* %135, i32 %136)
  %138 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %139 = load i32, i32* @DIBTX_ON_HOSTBUS, align 4
  %140 = call i32 @dib7090_setHostBusMux(%struct.dib7000p_state* %138, i32 %139)
  br label %141

141:                                              ; preds = %134, %122
  br label %149

142:                                              ; preds = %114
  %143 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %144 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %145 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dib7000p_set_output_mode(%struct.dib7000p_state* %143, i32 %147)
  br label %149

149:                                              ; preds = %142, %141
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %109
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @dib7090_set_diversity_in(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib7000p_set_output_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_agc_startup(%struct.dvb_frontend*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib7000p_autosearch_start(%struct.dvb_frontend*) #1

declare dso_local i32 @dib7000p_autosearch_is_irq(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib7000p_get_frontend(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @dib7000p_tune(%struct.dvb_frontend*) #1

declare dso_local i32 @dib7090_set_output_mode(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib7090_setDibTxMux(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7090_setHostBusMux(%struct.dib7000p_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
