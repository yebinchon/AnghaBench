; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_fe_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_as102_fe.c_as102_fe_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.as102_state* }
%struct.as102_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.as10x_tps*)* }
%struct.as10x_tps = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i8*, i8*, i32, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @as102_fe_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as102_fe_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.as102_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.as10x_tps, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.as102_state*, %struct.as102_state** %10, align 8
  store %struct.as102_state* %11, %struct.as102_state** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = bitcast %struct.as10x_tps* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 28, i1 false)
  %13 = load %struct.as102_state*, %struct.as102_state** %6, align 8
  %14 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.as10x_tps*)*, i32 (i32, %struct.as10x_tps*)** %16, align 8
  %18 = load %struct.as102_state*, %struct.as102_state** %6, align 8
  %19 = getelementptr inbounds %struct.as102_state, %struct.as102_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20, %struct.as10x_tps* %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %137

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.as10x_tps, %struct.as10x_tps* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %41 [
    i32 138, label %29
    i32 140, label %33
    i32 139, label %37
  ]

29:                                               ; preds = %26
  %30 = load i32, i32* @QPSK, align 4
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load i32, i32* @QAM_16, align 4
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @QAM_64, align 4
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %26, %37, %33, %29
  %42 = getelementptr inbounds %struct.as10x_tps, %struct.as10x_tps* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %60 [
    i32 130, label %44
    i32 133, label %48
    i32 132, label %52
    i32 131, label %56
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @HIERARCHY_NONE, align 4
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  br label %60

48:                                               ; preds = %41
  %49 = load i32, i32* @HIERARCHY_1, align 4
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  br label %60

52:                                               ; preds = %41
  %53 = load i32, i32* @HIERARCHY_2, align 4
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  br label %60

56:                                               ; preds = %41
  %57 = load i32, i32* @HIERARCHY_4, align 4
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %41, %56, %52, %48, %44
  %61 = getelementptr inbounds %struct.as10x_tps, %struct.as10x_tps* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %83 [
    i32 145, label %63
    i32 144, label %67
    i32 143, label %71
    i32 142, label %75
    i32 141, label %79
  ]

63:                                               ; preds = %60
  %64 = load i8*, i8** @FEC_1_2, align 8
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %83

67:                                               ; preds = %60
  %68 = load i8*, i8** @FEC_2_3, align 8
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %83

71:                                               ; preds = %60
  %72 = load i8*, i8** @FEC_3_4, align 8
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %83

75:                                               ; preds = %60
  %76 = load i8*, i8** @FEC_5_6, align 8
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  br label %83

79:                                               ; preds = %60
  %80 = load i8*, i8** @FEC_7_8, align 8
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %60, %79, %75, %71, %67, %63
  %84 = getelementptr inbounds %struct.as10x_tps, %struct.as10x_tps* %8, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %106 [
    i32 145, label %86
    i32 144, label %90
    i32 143, label %94
    i32 142, label %98
    i32 141, label %102
  ]

86:                                               ; preds = %83
  %87 = load i8*, i8** @FEC_1_2, align 8
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  br label %106

90:                                               ; preds = %83
  %91 = load i8*, i8** @FEC_2_3, align 8
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  br label %106

94:                                               ; preds = %83
  %95 = load i8*, i8** @FEC_3_4, align 8
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %106

98:                                               ; preds = %83
  %99 = load i8*, i8** @FEC_5_6, align 8
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %106

102:                                              ; preds = %83
  %103 = load i8*, i8** @FEC_7_8, align 8
  %104 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %83, %102, %98, %94, %90, %86
  %107 = getelementptr inbounds %struct.as10x_tps, %struct.as10x_tps* %8, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %125 [
    i32 136, label %109
    i32 137, label %113
    i32 134, label %117
    i32 135, label %121
  ]

109:                                              ; preds = %106
  %110 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %125

113:                                              ; preds = %106
  %114 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %115 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %116 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %125

117:                                              ; preds = %106
  %118 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %125

121:                                              ; preds = %106
  %122 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %106, %121, %117, %113, %109
  %126 = getelementptr inbounds %struct.as10x_tps, %struct.as10x_tps* %8, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %136 [
    i32 129, label %128
    i32 128, label %132
  ]

128:                                              ; preds = %125
  %129 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %136

132:                                              ; preds = %125
  %133 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %125, %132, %128
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %24
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
