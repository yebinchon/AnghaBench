; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22700.c_cx22700_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22700.c_cx22700_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.cx22700_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.cx22700_state = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx22700_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx22700_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.cx22700_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 2
  store %struct.dtv_frontend_properties* %6, %struct.dtv_frontend_properties** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.cx22700_state*, %struct.cx22700_state** %8, align 8
  store %struct.cx22700_state* %9, %struct.cx22700_state** %4, align 8
  %10 = load %struct.cx22700_state*, %struct.cx22700_state** %4, align 8
  %11 = call i32 @cx22700_writereg(%struct.cx22700_state* %10, i32 0, i32 2)
  %12 = load %struct.cx22700_state*, %struct.cx22700_state** %4, align 8
  %13 = call i32 @cx22700_writereg(%struct.cx22700_state* %12, i32 0, i32 0)
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %17, align 8
  %19 = icmp ne i32 (%struct.dvb_frontend.1*)* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %24, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %27 = bitcast %struct.dvb_frontend* %26 to %struct.dvb_frontend.1*
  %28 = call i32 %25(%struct.dvb_frontend.1* %27)
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %20
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %37, align 8
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %40 = bitcast %struct.dvb_frontend* %39 to %struct.dvb_frontend.0*
  %41 = call i32 %38(%struct.dvb_frontend.0* %40, i32 0)
  br label %42

42:                                               ; preds = %34, %20
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.cx22700_state*, %struct.cx22700_state** %4, align 8
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cx22700_set_inversion(%struct.cx22700_state* %44, i32 %47)
  %49 = load %struct.cx22700_state*, %struct.cx22700_state** %4, align 8
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %51 = call i32 @cx22700_set_tps(%struct.cx22700_state* %49, %struct.dtv_frontend_properties* %50)
  %52 = load %struct.cx22700_state*, %struct.cx22700_state** %4, align 8
  %53 = call i32 @cx22700_writereg(%struct.cx22700_state* %52, i32 55, i32 1)
  %54 = load %struct.cx22700_state*, %struct.cx22700_state** %4, align 8
  %55 = call i32 @cx22700_writereg(%struct.cx22700_state* %54, i32 0, i32 1)
  ret i32 0
}

declare dso_local i32 @cx22700_writereg(%struct.cx22700_state*, i32, i32) #1

declare dso_local i32 @cx22700_set_inversion(%struct.cx22700_state*, i32) #1

declare dso_local i32 @cx22700_set_tps(%struct.cx22700_state*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
