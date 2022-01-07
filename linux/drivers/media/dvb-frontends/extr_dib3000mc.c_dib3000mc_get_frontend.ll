; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @dib3000mc_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib3000mc_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %8, align 8
  store %struct.dib3000mc_state* %9, %struct.dib3000mc_state** %5, align 8
  %10 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %11 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %10, i32 458)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @INVERSION_AUTO, align 4
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 1
  switch i32 %22, label %31 [
    i32 0, label %23
    i32 1, label %27
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %2, %27, %23
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 3
  switch i32 %33, label %50 [
    i32 0, label %34
    i32 1, label %38
    i32 2, label %42
    i32 3, label %46
  ]

34:                                               ; preds = %31
  %35 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  br label %50

38:                                               ; preds = %31
  %39 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  br label %50

42:                                               ; preds = %31
  %43 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %31
  %47 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %31, %46, %42, %38, %34
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 13
  %53 = and i32 %52, 3
  switch i32 %53, label %63 [
    i32 0, label %54
    i32 1, label %58
    i32 2, label %62
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @QPSK, align 4
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %67

58:                                               ; preds = %50
  %59 = load i32, i32* @QAM_16, align 4
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %67

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %50, %62
  %64 = load i32, i32* @QAM_64, align 4
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %58, %54
  %68 = load i32, i32* @HIERARCHY_NONE, align 4
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 5
  %73 = and i32 %72, 7
  switch i32 %73, label %91 [
    i32 1, label %74
    i32 2, label %78
    i32 3, label %82
    i32 5, label %86
    i32 7, label %90
  ]

74:                                               ; preds = %67
  %75 = load i8*, i8** @FEC_1_2, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %95

78:                                               ; preds = %67
  %79 = load i8*, i8** @FEC_2_3, align 8
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %95

82:                                               ; preds = %67
  %83 = load i8*, i8** @FEC_3_4, align 8
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %95

86:                                               ; preds = %67
  %87 = load i8*, i8** @FEC_5_6, align 8
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %95

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %67, %90
  %92 = load i8*, i8** @FEC_7_8, align 8
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %86, %82, %78, %74
  %96 = load i32, i32* %6, align 4
  %97 = ashr i32 %96, 2
  %98 = and i32 %97, 7
  switch i32 %98, label %116 [
    i32 1, label %99
    i32 2, label %103
    i32 3, label %107
    i32 5, label %111
    i32 7, label %115
  ]

99:                                               ; preds = %95
  %100 = load i8*, i8** @FEC_1_2, align 8
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %120

103:                                              ; preds = %95
  %104 = load i8*, i8** @FEC_2_3, align 8
  %105 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %120

107:                                              ; preds = %95
  %108 = load i8*, i8** @FEC_3_4, align 8
  %109 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %110 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %120

111:                                              ; preds = %95
  %112 = load i8*, i8** @FEC_5_6, align 8
  %113 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %120

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %95, %115
  %117 = load i8*, i8** @FEC_7_8, align 8
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %111, %107, %103, %99
  ret i32 0
}

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
