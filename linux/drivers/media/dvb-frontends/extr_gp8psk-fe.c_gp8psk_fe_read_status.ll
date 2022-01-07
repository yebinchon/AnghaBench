; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_gp8psk-fe.c_gp8psk_fe_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.gp8psk_fe_state* }
%struct.gp8psk_fe_state = type { i32, i64 }

@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @gp8psk_fe_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_fe_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gp8psk_fe_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %7, align 8
  store %struct.gp8psk_fe_state* %8, %struct.gp8psk_fe_state** %5, align 8
  %9 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %10 = call i32 @gp8psk_fe_update_status(%struct.gp8psk_fe_state* %9)
  %11 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %12 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @FE_HAS_LOCK, align 4
  %17 = load i32, i32* @FE_HAS_SYNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FE_HAS_VITERBI, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FE_HAS_CARRIER, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FE_HAS_LOCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %36 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %35, i32 0, i32 0
  store i32 1000, i32* %36, align 8
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %39 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %38, i32 0, i32 0
  store i32 100, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  ret i32 0
}

declare dso_local i32 @gp8psk_fe_update_status(%struct.gp8psk_fe_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
