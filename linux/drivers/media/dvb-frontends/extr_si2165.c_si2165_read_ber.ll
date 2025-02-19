; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.si2165_state* }
%struct.dtv_frontend_properties = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.si2165_state = type { i64 }

@FE_SCALE_COUNTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @si2165_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_read_ber(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.si2165_state*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.si2165_state*, %struct.si2165_state** %9, align 8
  store %struct.si2165_state* %10, %struct.si2165_state** %6, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %7, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FE_SCALE_COUNTER, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64*, i64** %5, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %33 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %45 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %24, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
