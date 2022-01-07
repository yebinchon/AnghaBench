; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state*, %struct.dtv_frontend_properties }
%struct.dib3000mc_state = type { i64 }
%struct.dtv_frontend_properties = type { i64, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"SFN workaround is active\0A\00", align 1
@TRANSMISSION_MODE_8K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib3000mc_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_tune(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dib3000mc_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  store %struct.dtv_frontend_properties* %6, %struct.dtv_frontend_properties** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %8, align 8
  store %struct.dib3000mc_state* %9, %struct.dib3000mc_state** %4, align 8
  %10 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %12 = call i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state* %10, %struct.dtv_frontend_properties* %11, i32 0)
  %13 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %14 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %20 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %19, i32 29, i32 4723)
  %21 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %22 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %21, i32 108, i32 16384)
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %25 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %24, i32 29, i32 4211)
  %26 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %27 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %26, i32 108, i32 0)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state* %29, i32 %33)
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TRANSMISSION_MODE_8K, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %42 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %41, i32 26, i32 38528)
  %43 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %44 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %43, i32 33, i32 8)
  br label %50

45:                                               ; preds = %28
  %46 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %47 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %46, i32 26, i32 30336)
  %48 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %49 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %48, i32 33, i32 6)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %52 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %51, i32 509)
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @BANDWIDTH_TO_KHZ(i32 %62)
  %64 = call i32 @dib3000mc_set_timing(%struct.dib3000mc_state* %56, i64 %59, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %55, %50
  ret i32 0
}

declare dso_local i32 @dib3000mc_set_channel_cfg(%struct.dib3000mc_state*, %struct.dtv_frontend_properties*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_timing(%struct.dib3000mc_state*, i64, i32, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
