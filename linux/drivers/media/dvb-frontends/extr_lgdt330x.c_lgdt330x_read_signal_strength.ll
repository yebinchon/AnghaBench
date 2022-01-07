; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt330x_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt330x.c_lgdt330x_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.lgdt330x_state* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32*)* }
%struct.dvb_frontend.0 = type opaque
%struct.lgdt330x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @lgdt330x_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt330x_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lgdt330x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %10, align 8
  store %struct.lgdt330x_state* %11, %struct.lgdt330x_state** %6, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %14, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = bitcast %struct.dvb_frontend* %16 to %struct.dvb_frontend.0*
  %18 = call i32 %15(%struct.dvb_frontend.0* %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %25 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 587202560
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  store i32 65535, i32* %29, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load %struct.lgdt330x_state*, %struct.lgdt330x_state** %6, align 8
  %32 = getelementptr inbounds %struct.lgdt330x_state, %struct.lgdt330x_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 8960
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %28
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
