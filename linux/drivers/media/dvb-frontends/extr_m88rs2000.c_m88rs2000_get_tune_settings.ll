; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_get_tune_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_get_tune_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @m88rs2000_get_tune_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_get_tune_settings(%struct.dvb_frontend* %0, %struct.dvb_frontend_tune_settings* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_tune_settings*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_tune_settings* %1, %struct.dvb_frontend_tune_settings** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  store %struct.dtv_frontend_properties* %7, %struct.dtv_frontend_properties** %5, align 8
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 3000000
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %13, i32 0, i32 0
  store i32 2000, i32* %14, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %16, i32 0, i32 0
  store i32 3000, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 16000
  %23 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2000
  %29 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
