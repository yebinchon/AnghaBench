; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0299.c_stv0299_get_tune_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0299.c_stv0299_get_tune_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.stv0299_state* }
%struct.dtv_frontend_properties = type { i32 }
%struct.stv0299_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @stv0299_get_tune_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0299_get_tune_settings(%struct.dvb_frontend* %0, %struct.dvb_frontend_tune_settings* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_tune_settings*, align 8
  %5 = alloca %struct.stv0299_state*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_tune_settings* %1, %struct.dvb_frontend_tune_settings** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.stv0299_state*, %struct.stv0299_state** %8, align 8
  store %struct.stv0299_state* %9, %struct.stv0299_state** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %6, align 8
  %12 = load %struct.stv0299_state*, %struct.stv0299_state** %5, align 8
  %13 = getelementptr inbounds %struct.stv0299_state, %struct.stv0299_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 10000000
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 32000
  %28 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %30, i32 0, i32 1
  store i32 5000, i32* %31, align 4
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 16000
  %37 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 2000
  %43 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %23
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
