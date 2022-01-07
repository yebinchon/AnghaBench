; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.stv090x_state* }
%struct.dtv_frontend_properties = type { i64, i32, i32, i32, i32 }
%struct.stv090x_state = type { i64, i32, i32, i32, i32, i32, i32 }

@DVBFE_ALGO_SEARCH_INVALID = common dso_local global i32 0, align 4
@STV090x_DSS = common dso_local global i32 0, align 4
@STV090x_DVBS1 = common dso_local global i32 0, align 4
@STV090x_DVBS2 = common dso_local global i32 0, align 4
@STV090x_SEARCH_AUTO = common dso_local global i32 0, align 4
@STV090x_COLD_SEARCH = common dso_local global i32 0, align 4
@STV090x_PRERR = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Search range: 10 MHz\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Search range: 5 MHz\00", align 1
@STV090x_RANGEOK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Search success!\00", align 1
@DVBFE_ALGO_SEARCH_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Search failed!\00", align 1
@DVBFE_ALGO_SEARCH_FAILED = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_search(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  store %struct.stv090x_state* %8, %struct.stv090x_state** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %5, align 8
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @DVBFE_ALGO_SEARCH_INVALID, align 4
  store i32 %16, i32* %2, align 4
  br label %92

17:                                               ; preds = %1
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %33 [
    i32 130, label %21
    i32 129, label %25
    i32 128, label %29
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @STV090x_DSS, align 4
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %24 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load i32, i32* @STV090x_DVBS1, align 4
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %28 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %17
  %30 = load i32, i32* @STV090x_DVBS2, align 4
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %32 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  br label %35

33:                                               ; preds = %17
  %34 = load i32, i32* @DVBFE_ALGO_SEARCH_INVALID, align 4
  store i32 %34, i32* %2, align 4
  br label %92

35:                                               ; preds = %29, %25, %21
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %40 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %45 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @STV090x_SEARCH_AUTO, align 4
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %48 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @STV090x_COLD_SEARCH, align 4
  %50 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %51 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @STV090x_PRERR, align 4
  %53 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %54 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %56 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 10000000
  br i1 %58, label %59, label %64

59:                                               ; preds = %35
  %60 = load i32, i32* @FE_DEBUG, align 4
  %61 = call i32 @dprintk(i32 %60, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %63 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %62, i32 0, i32 2
  store i32 10000000, i32* %63, align 4
  br label %69

64:                                               ; preds = %35
  %65 = load i32, i32* @FE_DEBUG, align 4
  %66 = call i32 @dprintk(i32 %65, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %68 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %67, i32 0, i32 2
  store i32 5000000, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @stv090x_set_pls(%struct.stv090x_state* %70, i32 %73)
  %75 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @stv090x_set_mis(%struct.stv090x_state* %75, i32 %78)
  %80 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %81 = call i64 @stv090x_algo(%struct.stv090x_state* %80)
  %82 = load i64, i64* @STV090x_RANGEOK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  %85 = load i32, i32* @FE_DEBUG, align 4
  %86 = call i32 @dprintk(i32 %85, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @DVBFE_ALGO_SEARCH_SUCCESS, align 4
  store i32 %87, i32* %2, align 4
  br label %92

88:                                               ; preds = %69
  %89 = load i32, i32* @FE_DEBUG, align 4
  %90 = call i32 @dprintk(i32 %89, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @DVBFE_ALGO_SEARCH_FAILED, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %84, %33, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @stv090x_set_pls(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_set_mis(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_algo(%struct.stv090x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
