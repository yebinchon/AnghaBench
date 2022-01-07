; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24113_state*, %struct.dtv_frontend_properties }
%struct.cx24113_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24113_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24113_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.cx24113_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.cx24113_state*, %struct.cx24113_state** %10, align 8
  store %struct.cx24113_state* %11, %struct.cx24113_state** %4, align 8
  store i32 675, i32* %5, align 4
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 100
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 100005
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 10
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1000
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cx24113_set_bandwidth(%struct.cx24113_state* %25, i32 %26)
  %28 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cx24113_set_frequency(%struct.cx24113_state* %28, i32 %31)
  %33 = call i32 @msleep(i32 5)
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %35 = call i32 @cx24113_get_status(%struct.dvb_frontend* %34, i32* %6)
  ret i32 %35
}

declare dso_local i32 @cx24113_set_bandwidth(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_set_frequency(%struct.cx24113_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx24113_get_status(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
