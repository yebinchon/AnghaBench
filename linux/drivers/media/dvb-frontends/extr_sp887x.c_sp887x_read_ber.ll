; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.sp887x_state* }
%struct.sp887x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @sp887x_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp887x_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sp887x_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.sp887x_state*, %struct.sp887x_state** %7, align 8
  store %struct.sp887x_state* %8, %struct.sp887x_state** %5, align 8
  %9 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %10 = call i32 @sp887x_readreg(%struct.sp887x_state* %9, i32 3080)
  %11 = and i32 %10, 63
  %12 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %13 = call i32 @sp887x_readreg(%struct.sp887x_state* %12, i32 3079)
  %14 = shl i32 %13, 6
  %15 = or i32 %11, %14
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %18 = call i32 @sp887x_writereg(%struct.sp887x_state* %17, i32 3080, i32 0)
  %19 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %20 = call i32 @sp887x_writereg(%struct.sp887x_state* %19, i32 3079, i32 0)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 262128
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  store i32 -1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %2
  ret i32 0
}

declare dso_local i32 @sp887x_readreg(%struct.sp887x_state*, i32) #1

declare dso_local i32 @sp887x_writereg(%struct.sp887x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
