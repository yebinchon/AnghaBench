; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_symbol_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_symbol_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32 }

@LUT_isdbt_symbol_duration = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*)* @dib8000_get_symbol_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_get_symbol_duration(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca i64, align 8
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %5 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %3, align 8
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 131, label %14
    i32 130, label %15
    i32 128, label %17
    i32 129, label %17
  ]

14:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %18

15:                                               ; preds = %1
  store i64 2, i64* %4, align 8
  br label %18

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %1, %1, %16
  store i64 1, i64* %4, align 8
  br label %18

18:                                               ; preds = %17, %15, %14
  %19 = load i32*, i32** @LUT_isdbt_symbol_duration, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 1000
  %27 = sdiv i32 %22, %26
  %28 = add nsw i32 %27, 1
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
