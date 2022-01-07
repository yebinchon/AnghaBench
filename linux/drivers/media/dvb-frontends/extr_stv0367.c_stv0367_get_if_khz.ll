; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367_get_if_khz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367_get_if_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { %struct.TYPE_5__*, %struct.TYPE_8__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0367_state*, i32*)* @stv0367_get_if_khz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367_get_if_khz(%struct.stv0367_state* %0, i32* %1) #0 {
  %3 = alloca %struct.stv0367_state*, align 8
  %4 = alloca i32*, align 8
  store %struct.stv0367_state* %0, %struct.stv0367_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %6 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %11 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_8__*, i32*)* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %19 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %22, align 8
  %24 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %25 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %24, i32 0, i32 1
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 %23(%struct.TYPE_8__* %25, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 1000
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  br label %39

32:                                               ; preds = %9, %2
  %33 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %34 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %17
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
