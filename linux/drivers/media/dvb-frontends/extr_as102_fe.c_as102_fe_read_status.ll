; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_fe_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_fe_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.as102_state* }
%struct.as102_state = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.as10x_tune_status*)*, i32 (i32, i32*)* }
%struct.as10x_tune_status = type { i32, i32, i32, i32, i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@TUNE_STATUS_NOT_TUNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"as102: tuner status: 0x%02x, strength %d, per: %d, ber: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @as102_fe_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_fe_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.as102_state*, align 8
  %8 = alloca %struct.as10x_tune_status, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  store %struct.as102_state* %11, %struct.as102_state** %7, align 8
  %12 = bitcast %struct.as10x_tune_status* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 20, i1 false)
  %13 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %14 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.as10x_tune_status*)*, i32 (i32, %struct.as10x_tune_status*)** %16, align 8
  %18 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %19 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %17(i32 %20, %struct.as10x_tune_status* %8)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.as10x_tune_status, %struct.as10x_tune_status* %8, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %30 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.as10x_tune_status, %struct.as10x_tune_status* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %34 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.as10x_tune_status, %struct.as10x_tune_status* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %62 [
    i32 130, label %37
    i32 129, label %42
    i32 128, label %51
  ]

37:                                               ; preds = %26
  %38 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %39 = load i32, i32* @FE_HAS_CARRIER, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %65

42:                                               ; preds = %26
  %43 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %44 = load i32, i32* @FE_HAS_CARRIER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FE_HAS_SYNC, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FE_HAS_VITERBI, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %65

51:                                               ; preds = %26
  %52 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %53 = load i32, i32* @FE_HAS_CARRIER, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FE_HAS_SYNC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FE_HAS_LOCK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @FE_HAS_VITERBI, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %65

62:                                               ; preds = %26
  %63 = load i32, i32* @TUNE_STATUS_NOT_TUNED, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %51, %42, %37
  %66 = getelementptr inbounds %struct.as10x_tune_status, %struct.as10x_tune_status* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.as10x_tune_status, %struct.as10x_tune_status* %8, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.as10x_tune_status, %struct.as10x_tune_status* %8, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.as10x_tune_status, %struct.as10x_tune_status* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %69, i32 %71, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FE_HAS_LOCK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %65
  %81 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %82 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %81, i32 0, i32 0
  %83 = call i32 @memset(i32* %82, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %104

84:                                               ; preds = %65
  %85 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %86 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (i32, i32*)*, i32 (i32, i32*)** %88, align 8
  %90 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %91 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %94 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %93, i32 0, i32 0
  %95 = call i32 %89(i32 %92, i32* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load %struct.as102_state*, %struct.as102_state** %7, align 8
  %100 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %99, i32 0, i32 0
  %101 = call i32 @memset(i32* %100, i32 0, i32 4)
  br label %102

102:                                              ; preds = %98, %84
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %80, %24
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
