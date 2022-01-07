; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24120_state* }
%struct.cx24120_state = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CX24120_REG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"status = 0x%02x\0A\00", align 1
@CX24120_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@CX24120_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@CX24120_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@CX24120_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cx24120_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cx24120_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.cx24120_state*, %struct.cx24120_state** %8, align 8
  store %struct.cx24120_state* %9, %struct.cx24120_state** %5, align 8
  %10 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %11 = load i32, i32* @CX24120_REG_STATUS, align 4
  %12 = call i32 @cx24120_readreg(%struct.cx24120_state* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %14 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %4, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CX24120_HAS_SIGNAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CX24120_HAS_CARRIER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @FE_HAS_CARRIER, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CX24120_HAS_VITERBI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @FE_HAS_VITERBI, align 4
  %44 = load i32, i32* @FE_HAS_SYNC, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CX24120_HAS_LOCK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @FE_HAS_LOCK, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %63 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %65 = call i32 @cx24120_get_stats(%struct.cx24120_state* %64)
  %66 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %67 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %59
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FE_HAS_LOCK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %78 = call i32 @cx24120_set_clock_ratios(%struct.dvb_frontend* %77)
  %79 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %80 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %85 = call i32 @cx24120_msg_mpeg_output_global_config(%struct.cx24120_state* %84, i32 1)
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %88 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %70, %59
  ret i32 0
}

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cx24120_get_stats(%struct.cx24120_state*) #1

declare dso_local i32 @cx24120_set_clock_ratios(%struct.dvb_frontend*) #1

declare dso_local i32 @cx24120_msg_mpeg_output_global_config(%struct.cx24120_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
