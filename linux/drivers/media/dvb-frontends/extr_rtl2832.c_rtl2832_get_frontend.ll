; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.rtl2832_dev* }
%struct.rtl2832_dev = type { i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"TPS=%*ph\0A\00", align 1
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @rtl2832_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.rtl2832_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %11, align 8
  store %struct.rtl2832_dev* %12, %struct.rtl2832_dev** %6, align 8
  %13 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %14 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %13, i32 0, i32 2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

21:                                               ; preds = %2
  %22 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %23 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %26 = call i32 @regmap_bulk_read(i32 %24, i32 828, i32* %25, i32 2)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %166

30:                                               ; preds = %21
  %31 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %6, align 8
  %32 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %35 = call i32 @regmap_bulk_read(i32 %33, i32 849, i32* %34, i32 1)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %166

39:                                               ; preds = %30
  %40 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %43 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 3, i32* %42)
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 2
  %47 = and i32 %46, 3
  switch i32 %47, label %60 [
    i32 0, label %48
    i32 1, label %52
    i32 2, label %56
  ]

48:                                               ; preds = %39
  %49 = load i32, i32* @QPSK, align 4
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  br label %60

52:                                               ; preds = %39
  %53 = load i32, i32* @QAM_16, align 4
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  br label %60

56:                                               ; preds = %39
  %57 = load i32, i32* @QAM_64, align 4
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %39, %56, %52, %48
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 2
  %64 = and i32 %63, 1
  switch i32 %64, label %73 [
    i32 0, label %65
    i32 1, label %69
  ]

65:                                               ; preds = %60
  %66 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %67 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %68 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %60, %65
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 0
  %77 = and i32 %76, 3
  switch i32 %77, label %94 [
    i32 0, label %78
    i32 1, label %82
    i32 2, label %86
    i32 3, label %90
  ]

78:                                               ; preds = %73
  %79 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %94

82:                                               ; preds = %73
  %83 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %94

86:                                               ; preds = %73
  %87 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %73
  %91 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %73, %90, %86, %82, %78
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 4
  %98 = and i32 %97, 7
  switch i32 %98, label %115 [
    i32 0, label %99
    i32 1, label %103
    i32 2, label %107
    i32 3, label %111
  ]

99:                                               ; preds = %94
  %100 = load i32, i32* @HIERARCHY_NONE, align 4
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %115

103:                                              ; preds = %94
  %104 = load i32, i32* @HIERARCHY_1, align 4
  %105 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %115

107:                                              ; preds = %94
  %108 = load i32, i32* @HIERARCHY_2, align 4
  %109 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %110 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %115

111:                                              ; preds = %94
  %112 = load i32, i32* @HIERARCHY_4, align 4
  %113 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %94, %111, %107, %103, %99
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 3
  %119 = and i32 %118, 7
  switch i32 %119, label %140 [
    i32 0, label %120
    i32 1, label %124
    i32 2, label %128
    i32 3, label %132
    i32 4, label %136
  ]

120:                                              ; preds = %115
  %121 = load i8*, i8** @FEC_1_2, align 8
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %140

124:                                              ; preds = %115
  %125 = load i8*, i8** @FEC_2_3, align 8
  %126 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %140

128:                                              ; preds = %115
  %129 = load i8*, i8** @FEC_3_4, align 8
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %140

132:                                              ; preds = %115
  %133 = load i8*, i8** @FEC_5_6, align 8
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  br label %140

136:                                              ; preds = %115
  %137 = load i8*, i8** @FEC_7_8, align 8
  %138 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %139 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %115, %136, %132, %128, %124, %120
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 0
  %144 = and i32 %143, 7
  switch i32 %144, label %165 [
    i32 0, label %145
    i32 1, label %149
    i32 2, label %153
    i32 3, label %157
    i32 4, label %161
  ]

145:                                              ; preds = %140
  %146 = load i8*, i8** @FEC_1_2, align 8
  %147 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %148 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %165

149:                                              ; preds = %140
  %150 = load i8*, i8** @FEC_2_3, align 8
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %165

153:                                              ; preds = %140
  %154 = load i8*, i8** @FEC_3_4, align 8
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %165

157:                                              ; preds = %140
  %158 = load i8*, i8** @FEC_5_6, align 8
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %165

161:                                              ; preds = %140
  %162 = load i8*, i8** @FEC_7_8, align 8
  %163 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %164 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %140, %161, %157, %153, %149, %145
  store i32 0, i32* %3, align 4
  br label %172

166:                                              ; preds = %38, %29
  %167 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %166, %165, %20
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
