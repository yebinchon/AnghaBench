; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }

@DSTATUS = common dso_local global i32 0, align 4
@CAR_LOCK_FIELD = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@DMDSTATE = common dso_local global i32 0, align 4
@HEADER_MODE_FIELD = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Status: Unlocked (Searching ..)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Delivery system: DVB-S2\00", align 1
@LOCK_DEFINITIF_FIELD = common dso_local global i32 0, align 4
@PDELSTATUS1 = common dso_local global i32 0, align 4
@PKTDELIN_LOCK_FIELD = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@TSSTATUS = common dso_local global i32 0, align 4
@TSFIFO_LINEOK_FIELD = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Delivery system: DVB-S\00", align 1
@VSTATUSVIT = common dso_local global i32 0, align 4
@LOCKEDVIT_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv090x_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %10, align 8
  store %struct.stv090x_state* %11, %struct.stv090x_state** %5, align 8
  %12 = load i32*, i32** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %14 = load i32, i32* @DSTATUS, align 4
  %15 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CAR_LOCK_FIELD, align 4
  %18 = call i32 @STV090x_GETFIELD_Px(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %22 = load i32, i32* @FE_HAS_CARRIER, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %29 = load i32, i32* @DMDSTATE, align 4
  %30 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HEADER_MODE_FIELD, align 4
  %33 = call i32 @STV090x_GETFIELD_Px(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %36 [
    i32 0, label %35
    i32 1, label %35
    i32 2, label %39
    i32 3, label %76
  ]

35:                                               ; preds = %27, %27
  br label %36

36:                                               ; preds = %27, %35
  %37 = load i32, i32* @FE_DEBUG, align 4
  %38 = call i32 @dprintk(i32 %37, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %113

39:                                               ; preds = %27
  %40 = load i32, i32* @FE_DEBUG, align 4
  %41 = call i32 @dprintk(i32 %40, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %44 = call i32 @STV090x_GETFIELD_Px(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %39
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %48 = load i32, i32* @PDELSTATUS1, align 4
  %49 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PKTDELIN_LOCK_FIELD, align 4
  %52 = call i32 @STV090x_GETFIELD_Px(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load i32, i32* @FE_HAS_VITERBI, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %60 = load i32, i32* @TSSTATUS, align 4
  %61 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @TSFIFO_LINEOK_FIELD, align 4
  %64 = call i32 @STV090x_GETFIELD_Px(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  %67 = load i32, i32* @FE_HAS_SYNC, align 4
  %68 = load i32, i32* @FE_HAS_LOCK, align 4
  %69 = or i32 %67, %68
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %54
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %39
  br label %113

76:                                               ; preds = %27
  %77 = load i32, i32* @FE_DEBUG, align 4
  %78 = call i32 @dprintk(i32 %77, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %81 = call i32 @STV090x_GETFIELD_Px(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %76
  %84 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %85 = load i32, i32* @VSTATUSVIT, align 4
  %86 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @LOCKEDVIT_FIELD, align 4
  %89 = call i32 @STV090x_GETFIELD_Px(i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load i32, i32* @FE_HAS_VITERBI, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %97 = load i32, i32* @TSSTATUS, align 4
  %98 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TSFIFO_LINEOK_FIELD, align 4
  %101 = call i32 @STV090x_GETFIELD_Px(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %91
  %104 = load i32, i32* @FE_HAS_SYNC, align 4
  %105 = load i32, i32* @FE_HAS_LOCK, align 4
  %106 = or i32 %104, %105
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %91
  br label %111

111:                                              ; preds = %110, %83
  br label %112

112:                                              ; preds = %111, %76
  br label %113

113:                                              ; preds = %112, %75, %36
  ret i32 0
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
