; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mb86a16_state* }
%struct.mb86a16_state = type { i32 }

@MB86A16_SIG1 = common dso_local global i32 0, align 4
@MB86A16_SIG2 = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@MB86A16_STATUS = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@MB86A16_FRAMESYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mb86a16_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a16_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mb86a16_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.mb86a16_state*, %struct.mb86a16_state** %10, align 8
  store %struct.mb86a16_state* %11, %struct.mb86a16_state** %8, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.mb86a16_state*, %struct.mb86a16_state** %8, align 8
  %14 = load i32, i32* @MB86A16_SIG1, align 4
  %15 = call i32 @mb86a16_read(%struct.mb86a16_state* %13, i32 %14, i32* %6)
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.mb86a16_state*, %struct.mb86a16_state** %8, align 8
  %20 = load i32, i32* @MB86A16_SIG2, align 4
  %21 = call i32 @mb86a16_read(%struct.mb86a16_state* %19, i32 %20, i32* %7)
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %92

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 25
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 25
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %27, %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 45
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 45
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @FE_HAS_CARRIER, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %38, %35
  %47 = load %struct.mb86a16_state*, %struct.mb86a16_state** %8, align 8
  %48 = load i32, i32* @MB86A16_STATUS, align 4
  %49 = call i32 @mb86a16_read(%struct.mb86a16_state* %47, i32 %48, i32* %6)
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %92

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @FE_HAS_SYNC, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @FE_HAS_VITERBI, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.mb86a16_state*, %struct.mb86a16_state** %8, align 8
  %72 = load i32, i32* @MB86A16_FRAMESYNC, align 4
  %73 = call i32 @mb86a16_read(%struct.mb86a16_state* %71, i32 %72, i32* %6)
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %92

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 15
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FE_HAS_VITERBI, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32, i32* @FE_HAS_LOCK, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %80, %76
  store i32 0, i32* %3, align 4
  br label %98

92:                                               ; preds = %75, %51, %23, %17
  %93 = load i32, i32* @verbose, align 4
  %94 = load i32, i32* @MB86A16_ERROR, align 4
  %95 = call i32 @dprintk(i32 %93, i32 %94, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EREMOTEIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %91
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i32*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
