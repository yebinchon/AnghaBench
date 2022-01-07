; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_get_tps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx22702.c_cx22702_get_tps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx22702_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i8*, i8*, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx22702_state*, %struct.dtv_frontend_properties*)* @cx22702_get_tps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx22702_get_tps(%struct.cx22702_state* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx22702_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.cx22702_state* %0, %struct.cx22702_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %7 = load %struct.cx22702_state*, %struct.cx22702_state** %4, align 8
  %8 = call i32 @cx22702_readreg(%struct.cx22702_state* %7, i32 10)
  %9 = and i32 %8, 32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %134

14:                                               ; preds = %2
  %15 = load %struct.cx22702_state*, %struct.cx22702_state** %4, align 8
  %16 = call i32 @cx22702_readreg(%struct.cx22702_state* %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 24
  %19 = ashr i32 %18, 3
  switch i32 %19, label %32 [
    i32 0, label %20
    i32 1, label %24
    i32 2, label %28
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* @QPSK, align 4
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  br label %32

24:                                               ; preds = %14
  %25 = load i32, i32* @QAM_16, align 4
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  br label %32

28:                                               ; preds = %14
  %29 = load i32, i32* @QAM_64, align 4
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %14, %28, %24, %20
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 7
  switch i32 %34, label %51 [
    i32 0, label %35
    i32 1, label %39
    i32 2, label %43
    i32 3, label %47
  ]

35:                                               ; preds = %32
  %36 = load i32, i32* @HIERARCHY_NONE, align 4
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  br label %51

39:                                               ; preds = %32
  %40 = load i32, i32* @HIERARCHY_1, align 4
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  br label %51

43:                                               ; preds = %32
  %44 = load i32, i32* @HIERARCHY_2, align 4
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %32
  %48 = load i32, i32* @HIERARCHY_4, align 4
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %32, %47, %43, %39, %35
  %52 = load %struct.cx22702_state*, %struct.cx22702_state** %4, align 8
  %53 = call i32 @cx22702_readreg(%struct.cx22702_state* %52, i32 2)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 56
  %56 = ashr i32 %55, 3
  switch i32 %56, label %77 [
    i32 0, label %57
    i32 1, label %61
    i32 2, label %65
    i32 3, label %69
    i32 4, label %73
  ]

57:                                               ; preds = %51
  %58 = load i8*, i8** @FEC_1_2, align 8
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %77

61:                                               ; preds = %51
  %62 = load i8*, i8** @FEC_2_3, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  br label %77

65:                                               ; preds = %51
  %66 = load i8*, i8** @FEC_3_4, align 8
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %77

69:                                               ; preds = %51
  %70 = load i8*, i8** @FEC_5_6, align 8
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %51
  %74 = load i8*, i8** @FEC_7_8, align 8
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %51, %73, %69, %65, %61, %57
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 7
  switch i32 %79, label %100 [
    i32 0, label %80
    i32 1, label %84
    i32 2, label %88
    i32 3, label %92
    i32 4, label %96
  ]

80:                                               ; preds = %77
  %81 = load i8*, i8** @FEC_1_2, align 8
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %100

84:                                               ; preds = %77
  %85 = load i8*, i8** @FEC_2_3, align 8
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %100

88:                                               ; preds = %77
  %89 = load i8*, i8** @FEC_3_4, align 8
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  br label %100

92:                                               ; preds = %77
  %93 = load i8*, i8** @FEC_5_6, align 8
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %100

96:                                               ; preds = %77
  %97 = load i8*, i8** @FEC_7_8, align 8
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %77, %96, %92, %88, %84, %80
  %101 = load %struct.cx22702_state*, %struct.cx22702_state** %4, align 8
  %102 = call i32 @cx22702_readreg(%struct.cx22702_state* %101, i32 3)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, 12
  %105 = ashr i32 %104, 2
  switch i32 %105, label %122 [
    i32 0, label %106
    i32 1, label %110
    i32 2, label %114
    i32 3, label %118
  ]

106:                                              ; preds = %100
  %107 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %122

110:                                              ; preds = %100
  %111 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %122

114:                                              ; preds = %100
  %115 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %122

118:                                              ; preds = %100
  %119 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %100, %118, %114, %110, %106
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, 3
  switch i32 %124, label %133 [
    i32 0, label %125
    i32 1, label %129
  ]

125:                                              ; preds = %122
  %126 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %127 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %128 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %133

129:                                              ; preds = %122
  %130 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %131 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %122, %129, %125
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %11
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @cx22702_readreg(%struct.cx22702_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
