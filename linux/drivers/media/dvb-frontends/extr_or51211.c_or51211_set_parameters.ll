; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_or51211.c_or51211_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.or51211_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.or51211_state = type { i64 }
%struct.dtv_frontend_properties = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @or51211_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @or51211_set_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.or51211_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 2
  store %struct.dtv_frontend_properties* %6, %struct.dtv_frontend_properties** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.or51211_state*, %struct.or51211_state** %8, align 8
  store %struct.or51211_state* %9, %struct.or51211_state** %4, align 8
  %10 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %11 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %1
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %21, align 8
  %23 = icmp ne i32 (%struct.dvb_frontend.1*)* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %17
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %28, align 8
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %31 = bitcast %struct.dvb_frontend* %30 to %struct.dvb_frontend.1*
  %32 = call i32 %29(%struct.dvb_frontend.1* %31)
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %41, align 8
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %44 = bitcast %struct.dvb_frontend* %43 to %struct.dvb_frontend.0*
  %45 = call i32 %42(%struct.dvb_frontend.0* %44, i32 0)
  br label %46

46:                                               ; preds = %38, %24
  br label %47

47:                                               ; preds = %46, %17
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %49 = call i32 @or51211_setmode(%struct.dvb_frontend* %48, i32 0)
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.or51211_state*, %struct.or51211_state** %4, align 8
  %54 = getelementptr inbounds %struct.or51211_state, %struct.or51211_state* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %1
  ret i32 0
}

declare dso_local i32 @or51211_setmode(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
