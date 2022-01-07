; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.gp8psk_fe_state* }
%struct.gp8psk_fe_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32, i32, i32, i32*, i32)* }

@SET_LNB_VOLTAGE = common dso_local global i32 0, align 4
@SEC_VOLTAGE_18 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @gp8psk_fe_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_fe_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gp8psk_fe_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %8, align 8
  store %struct.gp8psk_fe_state* %9, %struct.gp8psk_fe_state** %6, align 8
  %10 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %6, align 8
  %11 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (i32, i32, i32, i32, i32*, i32)*, i64 (i32, i32, i32, i32, i32*, i32)** %13, align 8
  %15 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %6, align 8
  %16 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SET_LNB_VOLTAGE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 %14(i32 %17, i32 %18, i32 %22, i32 0, i32* null, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
