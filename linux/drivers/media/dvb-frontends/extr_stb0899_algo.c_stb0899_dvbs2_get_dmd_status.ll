; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_get_dmd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_get_dmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@DMD_STATUS = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DMD_STATUS=[0x%02x]\00", align 1
@IF_AGC_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"------------->IF AGC LOCKED !\00", align 1
@DMD_STAT2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"----------->DMD STAT2=[0x%02x]\00", align 1
@UWP_LOCK = common dso_local global i32 0, align 4
@CSM_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"----------------> DVB-S2 LOCK !\00", align 1
@DVBS2_DEMOD_LOCK = common dso_local global i32 0, align 4
@DVBS2_DEMOD_NOLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*, i32)* @stb0899_dvbs2_get_dmd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_dvbs2_get_dmd_status(%struct.stb0899_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stb0899_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %64, %2
  %12 = load i32, i32* @STB0899_S2DEMOD, align 4
  %13 = load i32, i32* @DMD_STATUS, align 4
  %14 = call i32 @STB0899_READ_S2REG(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FE_DEBUG, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %17, i32 %18, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @IF_AGC_LOCK, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @STB0899_GETFIELD(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %11
  %26 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %27 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FE_DEBUG, align 4
  %30 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %28, i32 %29, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %11
  %32 = load i32, i32* @STB0899_S2DEMOD, align 4
  %33 = load i32, i32* @DMD_STAT2, align 4
  %34 = call i32 @STB0899_READ_S2REG(i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %36 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FE_DEBUG, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %37, i32 %38, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @UWP_LOCK, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @STB0899_GETFIELD(i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @CSM_LOCK, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @STB0899_GETFIELD(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %49, %31
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 10
  store i32 %55, i32* %6, align 4
  %56 = call i32 @msleep(i32 10)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sle i32 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %11, label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %71 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FE_DEBUG, align 4
  %74 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %72, i32 %73, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @DVBS2_DEMOD_LOCK, align 4
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @DVBS2_DEMOD_NOLOCK, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
