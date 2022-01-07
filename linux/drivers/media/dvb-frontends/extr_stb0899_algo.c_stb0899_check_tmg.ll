; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_check_tmg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_check_tmg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_RTF = common dso_local global i32 0, align 4
@STB0899_TLIR = common dso_local global i32 0, align 4
@TLIR_TMG_LOCK_IND = common dso_local global i32 0, align 4
@ANALOGCARRIER = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"-->ANALOG Carrier !\00", align 1
@TIMINGOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"------->TIMING OK !\00", align 1
@NOTIMING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"-->NO TIMING !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_check_tmg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_check_tmg(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %7 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %8 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %7, i32 0, i32 1
  store %struct.stb0899_internal* %8, %struct.stb0899_internal** %3, align 8
  %9 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %10 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @msleep(i32 %11)
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = load i32, i32* @STB0899_RTF, align 4
  %15 = call i32 @stb0899_write_reg(%struct.stb0899_state* %13, i32 %14, i32 242)
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %17 = load i32, i32* @STB0899_TLIR, align 4
  %18 = call i8* @stb0899_read_reg(%struct.stb0899_state* %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i32, i32* @TLIR_TMG_LOCK_IND, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @STB0899_GETFIELD(i32 %19, i8* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %23 = load i32, i32* @STB0899_RTF, align 4
  %24 = call i8* @stb0899_read_reg(%struct.stb0899_state* %22, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 42
  br i1 %26, label %27, label %53

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 48
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @abs(i8* %31)
  %33 = icmp sge i32 %32, 110
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* @ANALOGCARRIER, align 4
  %36 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %37 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %39 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FE_DEBUG, align 4
  %42 = call i32 @dprintk(i32 %40, i32 %41, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %52

43:                                               ; preds = %30, %27
  %44 = load i32, i32* @TIMINGOK, align 4
  %45 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %46 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %48 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FE_DEBUG, align 4
  %51 = call i32 @dprintk(i32 %49, i32 %50, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %43, %34
  br label %62

53:                                               ; preds = %1
  %54 = load i32, i32* @NOTIMING, align 4
  %55 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %56 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %58 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FE_DEBUG, align 4
  %61 = call i32 @dprintk(i32 %59, i32 %60, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %53, %52
  %63 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %64 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  ret i32 %65
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i8* @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i8*) #1

declare dso_local i32 @abs(i8*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
