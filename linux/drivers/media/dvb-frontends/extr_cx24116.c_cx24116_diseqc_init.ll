; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24116.c_cx24116_diseqc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24116.c_cx24116_diseqc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24116_state* }
%struct.cx24116_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.cx24116_cmd = type { i32*, i32 }

@CMD_LNBCONFIG = common dso_local global i32 0, align 4
@toneburst = common dso_local global i64 0, align 8
@CX24116_DISEQC_TONEOFF = common dso_local global i64 0, align 8
@CMD_LNBSEND = common dso_local global i32 0, align 4
@CX24116_DISEQC_MINI_A = common dso_local global i32 0, align 4
@CX24116_DISEQC_BURST = common dso_local global i64 0, align 8
@CX24116_DISEQC_ARG2_2 = common dso_local global i64 0, align 8
@CX24116_DISEQC_ARG3_0 = common dso_local global i64 0, align 8
@CX24116_DISEQC_ARG4_0 = common dso_local global i64 0, align 8
@CX24116_DISEQC_MSGLEN = common dso_local global i64 0, align 8
@CX24116_DISEQC_MSGOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24116_diseqc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24116_diseqc_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cx24116_state*, align 8
  %5 = alloca %struct.cx24116_cmd, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.cx24116_state*, %struct.cx24116_state** %8, align 8
  store %struct.cx24116_state* %9, %struct.cx24116_state** %4, align 8
  %10 = load i32, i32* @CMD_LNBCONFIG, align 4
  %11 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %10, i32* %13, align 4
  %14 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 143, i32* %25, align 4
  %26 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  store i32 40, i32* %28, align 4
  %29 = load i64, i64* @toneburst, align 8
  %30 = load i64, i64* @CX24116_DISEQC_TONEOFF, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  %34 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  store i32 %33, i32* %36, align 4
  %37 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.cx24116_cmd, %struct.cx24116_cmd* %5, i32 0, i32 1
  store i32 8, i32* %40, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = call i32 @cx24116_cmd_execute(%struct.dvb_frontend* %41, %struct.cx24116_cmd* %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %89

47:                                               ; preds = %1
  %48 = load i32, i32* @CMD_LNBSEND, align 4
  %49 = load %struct.cx24116_state*, %struct.cx24116_state** %4, align 8
  %50 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @CX24116_DISEQC_MINI_A, align 4
  %55 = load %struct.cx24116_state*, %struct.cx24116_state** %4, align 8
  %56 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @CX24116_DISEQC_BURST, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.cx24116_state*, %struct.cx24116_state** %4, align 8
  %62 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @CX24116_DISEQC_ARG2_2, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 2, i32* %66, align 4
  %67 = load %struct.cx24116_state*, %struct.cx24116_state** %4, align 8
  %68 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @CX24116_DISEQC_ARG3_0, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load %struct.cx24116_state*, %struct.cx24116_state** %4, align 8
  %74 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @CX24116_DISEQC_ARG4_0, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 0, i32* %78, align 4
  %79 = load %struct.cx24116_state*, %struct.cx24116_state** %4, align 8
  %80 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @CX24116_DISEQC_MSGLEN, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @CX24116_DISEQC_MSGOFS, align 4
  %86 = load %struct.cx24116_state*, %struct.cx24116_state** %4, align 8
  %87 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %47, %45
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @cx24116_cmd_execute(%struct.dvb_frontend*, %struct.cx24116_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
