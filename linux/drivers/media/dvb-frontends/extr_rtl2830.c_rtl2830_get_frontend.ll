; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i8*, i8*, i32, i32, i32, i32 }
%struct.rtl2830_dev = type { i64 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @rtl2830_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2830_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rtl2830_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.rtl2830_dev* %14, %struct.rtl2830_dev** %7, align 8
  %15 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %7, align 8
  %16 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %23 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %21, i32 828, i32* %22, i32 2)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %161

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %30 = call i32 @rtl2830_bulk_read(%struct.i2c_client* %28, i32 849, i32* %29, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %161

34:                                               ; preds = %27
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %38 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 3, i32* %37)
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 2
  %42 = and i32 %41, 3
  switch i32 %42, label %55 [
    i32 0, label %43
    i32 1, label %47
    i32 2, label %51
  ]

43:                                               ; preds = %34
  %44 = load i32, i32* @QPSK, align 4
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  br label %55

47:                                               ; preds = %34
  %48 = load i32, i32* @QAM_16, align 4
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  br label %55

51:                                               ; preds = %34
  %52 = load i32, i32* @QAM_64, align 4
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %34, %51, %47, %43
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 2
  %59 = and i32 %58, 1
  switch i32 %59, label %68 [
    i32 0, label %60
    i32 1, label %64
  ]

60:                                               ; preds = %55
  %61 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %55, %60
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 0
  %72 = and i32 %71, 3
  switch i32 %72, label %89 [
    i32 0, label %73
    i32 1, label %77
    i32 2, label %81
    i32 3, label %85
  ]

73:                                               ; preds = %68
  %74 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %89

77:                                               ; preds = %68
  %78 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %89

81:                                               ; preds = %68
  %82 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %89

85:                                               ; preds = %68
  %86 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %68, %85, %81, %77, %73
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 4
  %93 = and i32 %92, 7
  switch i32 %93, label %110 [
    i32 0, label %94
    i32 1, label %98
    i32 2, label %102
    i32 3, label %106
  ]

94:                                               ; preds = %89
  %95 = load i32, i32* @HIERARCHY_NONE, align 4
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %110

98:                                               ; preds = %89
  %99 = load i32, i32* @HIERARCHY_1, align 4
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %110

102:                                              ; preds = %89
  %103 = load i32, i32* @HIERARCHY_2, align 4
  %104 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %110

106:                                              ; preds = %89
  %107 = load i32, i32* @HIERARCHY_4, align 4
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %89, %106, %102, %98, %94
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 3
  %114 = and i32 %113, 7
  switch i32 %114, label %135 [
    i32 0, label %115
    i32 1, label %119
    i32 2, label %123
    i32 3, label %127
    i32 4, label %131
  ]

115:                                              ; preds = %110
  %116 = load i8*, i8** @FEC_1_2, align 8
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %135

119:                                              ; preds = %110
  %120 = load i8*, i8** @FEC_2_3, align 8
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %135

123:                                              ; preds = %110
  %124 = load i8*, i8** @FEC_3_4, align 8
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %135

127:                                              ; preds = %110
  %128 = load i8*, i8** @FEC_5_6, align 8
  %129 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %130 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  br label %135

131:                                              ; preds = %110
  %132 = load i8*, i8** @FEC_7_8, align 8
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %110, %131, %127, %123, %119, %115
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 0
  %139 = and i32 %138, 7
  switch i32 %139, label %160 [
    i32 0, label %140
    i32 1, label %144
    i32 2, label %148
    i32 3, label %152
    i32 4, label %156
  ]

140:                                              ; preds = %135
  %141 = load i8*, i8** @FEC_1_2, align 8
  %142 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %160

144:                                              ; preds = %135
  %145 = load i8*, i8** @FEC_2_3, align 8
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  br label %160

148:                                              ; preds = %135
  %149 = load i8*, i8** @FEC_3_4, align 8
  %150 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %151 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  br label %160

152:                                              ; preds = %135
  %153 = load i8*, i8** @FEC_5_6, align 8
  %154 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %155 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  br label %160

156:                                              ; preds = %135
  %157 = load i8*, i8** @FEC_7_8, align 8
  %158 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %159 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %135, %156, %152, %148, %144, %140
  store i32 0, i32* %3, align 4
  br label %167

161:                                              ; preds = %33, %26
  %162 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %161, %160, %19
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rtl2830_bulk_read(%struct.i2c_client*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
