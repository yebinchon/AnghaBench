; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_init_search_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_init_search_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@FORCE_CONTINUOUS = common dso_local global i32 0, align 4
@FRAME_MODE = common dso_local global i32 0, align 4
@FILTER_EN = common dso_local global i32 0, align 4
@TSOUT_NOSYNC = common dso_local global i32 0, align 4
@TSFIFO_EMBINDVB = common dso_local global i32 0, align 4
@TSDEL_SYNCBYTE = common dso_local global i32 0, align 4
@UPLCCST0 = common dso_local global i32 0, align 4
@TSINS_TOKEN = common dso_local global i32 0, align 4
@HYSTERESIS_THRESHOLD = common dso_local global i32 0, align 4
@ISIOBS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, %struct.dtv_frontend_properties*)* @init_search_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_search_param(%struct.stv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.stv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.stv* %0, %struct.stv** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %5 = load i32, i32* @FORCE_CONTINUOUS, align 4
  %6 = call i32 @SET_FIELD(i32 %5, i32 0)
  %7 = load i32, i32* @FRAME_MODE, align 4
  %8 = call i32 @SET_FIELD(i32 %7, i32 0)
  %9 = load i32, i32* @FILTER_EN, align 4
  %10 = call i32 @SET_FIELD(i32 %9, i32 0)
  %11 = load i32, i32* @TSOUT_NOSYNC, align 4
  %12 = call i32 @SET_FIELD(i32 %11, i32 0)
  %13 = load i32, i32* @TSFIFO_EMBINDVB, align 4
  %14 = call i32 @SET_FIELD(i32 %13, i32 0)
  %15 = load i32, i32* @TSDEL_SYNCBYTE, align 4
  %16 = call i32 @SET_FIELD(i32 %15, i32 0)
  %17 = load i32, i32* @UPLCCST0, align 4
  %18 = call i32 @SET_REG(i32 %17, i32 224)
  %19 = load i32, i32* @TSINS_TOKEN, align 4
  %20 = call i32 @SET_FIELD(i32 %19, i32 0)
  %21 = load i32, i32* @HYSTERESIS_THRESHOLD, align 4
  %22 = call i32 @SET_FIELD(i32 %21, i32 0)
  %23 = load i32, i32* @ISIOBS_MODE, align 4
  %24 = call i32 @SET_FIELD(i32 %23, i32 1)
  %25 = load %struct.stv*, %struct.stv** %3, align 8
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %27 = call i32 @set_stream_modes(%struct.stv* %25, %struct.dtv_frontend_properties* %26)
  ret i32 0
}

declare dso_local i32 @SET_FIELD(i32, i32) #1

declare dso_local i32 @SET_REG(i32, i32) #1

declare dso_local i32 @set_stream_modes(%struct.stv*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
