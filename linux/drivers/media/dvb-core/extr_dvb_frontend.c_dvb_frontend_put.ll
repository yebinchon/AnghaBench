; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dvb_frontend_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dvb_frontend_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque

@dvb_frontend_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @dvb_frontend_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_frontend_put(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %5, align 8
  %7 = icmp ne i32 (%struct.dvb_frontend.0*)* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %11, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = bitcast %struct.dvb_frontend* %13 to %struct.dvb_frontend.0*
  %15 = call i32 %12(%struct.dvb_frontend.0* %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = load i32, i32* @dvb_frontend_free, align 4
  %25 = call i32 @kref_put(i32* %23, i32 %24)
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %28 = call i32 @__dvb_frontend_free(%struct.dvb_frontend* %27)
  br label %29

29:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @__dvb_frontend_free(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
