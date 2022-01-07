; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dib3000mc_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dib3000mc_state = type { i32, i32 }
%struct.dtv_frontend_properties = type { i64, i64, i64, i64, i32 }

@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@buggy_sfn_workaround = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"autosearch returns: %d\0A\00", align 1
@OUTMODE_MPEG2_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib3000mc_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib3000mc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %12, align 8
  store %struct.dib3000mc_state* %13, %struct.dib3000mc_state** %5, align 8
  %14 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %15 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %16 = call i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %14, i32 %15)
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %21 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @BANDWIDTH_TO_KHZ(i32 %25)
  %27 = call i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state* %22, i32 %26)
  %28 = load i32, i32* @buggy_sfn_workaround, align 4
  %29 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %30 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %34, align 8
  %36 = icmp ne i32 (%struct.dvb_frontend.0*)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %41, align 8
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = bitcast %struct.dvb_frontend* %43 to %struct.dvb_frontend.0*
  %45 = call i32 %42(%struct.dvb_frontend.0* %44)
  %46 = call i32 @msleep(i32 100)
  br label %47

47:                                               ; preds = %37, %1
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %47
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QAM_AUTO, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FEC_AUTO, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %65, %59, %53, %47
  store i32 1000, i32* %7, align 4
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %73 = call i32 @dib3000mc_autosearch_start(%struct.dvb_frontend* %72)
  br label %74

74:                                               ; preds = %85, %71
  %75 = call i32 @msleep(i32 1)
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %77 = call i32 @dib3000mc_autosearch_is_irq(%struct.dvb_frontend* %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  %84 = icmp ne i32 %82, 0
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %74, label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92, %87
  store i32 0, i32* %2, align 4
  br label %107

96:                                               ; preds = %92
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %99 = call i32 @dib3000mc_get_frontend(%struct.dvb_frontend* %97, %struct.dtv_frontend_properties* %98)
  br label %100

100:                                              ; preds = %96, %65
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %102 = call i32 @dib3000mc_tune(%struct.dvb_frontend* %101)
  store i32 %102, i32* %6, align 4
  %103 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %104 = load i32, i32* @OUTMODE_MPEG2_FIFO, align 4
  %105 = call i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %95
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib3000mc_autosearch_start(%struct.dvb_frontend*) #1

declare dso_local i32 @dib3000mc_autosearch_is_irq(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib3000mc_get_frontend(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @dib3000mc_tune(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
