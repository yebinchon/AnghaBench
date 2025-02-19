; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22700.c_cx22700_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22700.c_cx22700_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx22700_state* }
%struct.cx22700_state = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cx22700_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx22700_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.cx22700_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.cx22700_state*, %struct.cx22700_state** %8, align 8
  store %struct.cx22700_state* %9, %struct.cx22700_state** %5, align 8
  %10 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %11 = call i32 @cx22700_readreg(%struct.cx22700_state* %10, i32 9)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @INVERSION_ON, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @INVERSION_OFF, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.cx22700_state*, %struct.cx22700_state** %5, align 8
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %25 = call i32 @cx22700_get_tps(%struct.cx22700_state* %23, %struct.dtv_frontend_properties* %24)
  ret i32 %25
}

declare dso_local i32 @cx22700_readreg(%struct.cx22700_state*, i32) #1

declare dso_local i32 @cx22700_get_tps(%struct.cx22700_state*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
