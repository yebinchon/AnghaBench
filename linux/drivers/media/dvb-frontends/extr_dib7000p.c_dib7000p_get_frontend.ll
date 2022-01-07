; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i32 }
%struct.dtv_frontend_properties = type { i8*, i8*, i32, i32, i32, i32, i32, i32 }

@INVERSION_AUTO = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @dib7000p_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %8, align 8
  store %struct.dib7000p_state* %9, %struct.dib7000p_state** %5, align 8
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %11 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %10, i32 463)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @INVERSION_AUTO, align 4
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BANDWIDTH_TO_HZ(i32 %17)
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 3
  switch i32 %23, label %32 [
    i32 0, label %24
    i32 1, label %28
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %2, %28, %24
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 3
  switch i32 %34, label %51 [
    i32 0, label %35
    i32 1, label %39
    i32 2, label %43
    i32 3, label %47
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  br label %51

39:                                               ; preds = %32
  %40 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  br label %51

43:                                               ; preds = %32
  %44 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %32
  %48 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %32, %47, %43, %39, %35
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 14
  %54 = and i32 %53, 3
  switch i32 %54, label %64 [
    i32 0, label %55
    i32 1, label %59
    i32 2, label %63
  ]

55:                                               ; preds = %51
  %56 = load i32, i32* @QPSK, align 4
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  br label %68

59:                                               ; preds = %51
  %60 = load i32, i32* @QAM_16, align 4
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %68

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %51, %63
  %65 = load i32, i32* @QAM_64, align 4
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %59, %55
  %69 = load i32, i32* @HIERARCHY_NONE, align 4
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = ashr i32 %72, 5
  %74 = and i32 %73, 7
  switch i32 %74, label %92 [
    i32 1, label %75
    i32 2, label %79
    i32 3, label %83
    i32 5, label %87
    i32 7, label %91
  ]

75:                                               ; preds = %68
  %76 = load i8*, i8** @FEC_1_2, align 8
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %96

79:                                               ; preds = %68
  %80 = load i8*, i8** @FEC_2_3, align 8
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %96

83:                                               ; preds = %68
  %84 = load i8*, i8** @FEC_3_4, align 8
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %96

87:                                               ; preds = %68
  %88 = load i8*, i8** @FEC_5_6, align 8
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %96

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %68, %91
  %93 = load i8*, i8** @FEC_7_8, align 8
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %87, %83, %79, %75
  %97 = load i32, i32* %6, align 4
  %98 = ashr i32 %97, 2
  %99 = and i32 %98, 7
  switch i32 %99, label %117 [
    i32 1, label %100
    i32 2, label %104
    i32 3, label %108
    i32 5, label %112
    i32 7, label %116
  ]

100:                                              ; preds = %96
  %101 = load i8*, i8** @FEC_1_2, align 8
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %121

104:                                              ; preds = %96
  %105 = load i8*, i8** @FEC_2_3, align 8
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %121

108:                                              ; preds = %96
  %109 = load i8*, i8** @FEC_3_4, align 8
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %121

112:                                              ; preds = %96
  %113 = load i8*, i8** @FEC_5_6, align 8
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %121

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %96, %116
  %118 = load i8*, i8** @FEC_7_8, align 8
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %112, %108, %104, %100
  ret i32 0
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_HZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
