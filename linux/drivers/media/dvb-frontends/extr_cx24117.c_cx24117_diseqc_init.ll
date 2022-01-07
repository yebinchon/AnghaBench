; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24117.c_cx24117_diseqc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24117.c_cx24117_diseqc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24117_state* }
%struct.cx24117_state = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32 }

@CMD_LNBSEND = common dso_local global i32 0, align 4
@CX24117_DISEQC_DEMOD = common dso_local global i64 0, align 8
@CX24117_DISEQC_MINI_A = common dso_local global i32 0, align 4
@CX24117_DISEQC_BURST = common dso_local global i64 0, align 8
@CX24117_DISEQC_ARG3_2 = common dso_local global i64 0, align 8
@CX24117_DISEQC_ARG4_0 = common dso_local global i64 0, align 8
@CX24117_DISEQC_ARG5_0 = common dso_local global i64 0, align 8
@CX24117_DISEQC_MSGLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24117_diseqc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24117_diseqc_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.cx24117_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.cx24117_state*, %struct.cx24117_state** %5, align 8
  store %struct.cx24117_state* %6, %struct.cx24117_state** %3, align 8
  %7 = load i32, i32* @CMD_LNBSEND, align 4
  %8 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %9 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %7, i32* %12, align 4
  %13 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %14 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  %19 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %20 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @CX24117_DISEQC_DEMOD, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* @CX24117_DISEQC_MINI_A, align 4
  %26 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %27 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CX24117_DISEQC_BURST, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %33 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @CX24117_DISEQC_ARG3_2, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 2, i32* %37, align 4
  %38 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %39 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @CX24117_DISEQC_ARG4_0, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 0, i32* %43, align 4
  %44 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %45 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @CX24117_DISEQC_ARG5_0, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %51 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @CX24117_DISEQC_MSGLEN, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load %struct.cx24117_state*, %struct.cx24117_state** %3, align 8
  %57 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 7, i32* %58, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
