; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t.c_cxd2820r_get_frontend_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t.c_cxd2820r_get_frontend_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2820r_priv* }
%struct.cxd2820r_priv = type { i32*, %struct.i2c_client** }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i32, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_get_frontend_t(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.cxd2820r_priv*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %12, align 8
  store %struct.cxd2820r_priv* %13, %struct.cxd2820r_priv** %6, align 8
  %14 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %15 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %14, i32 0, i32 1
  %16 = load %struct.i2c_client**, %struct.i2c_client*** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %16, i64 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %7, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %23 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %28 = call i32 @regmap_bulk_read(i32 %26, i32 47, i32* %27, i32 8)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %178

32:                                               ; preds = %2
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 6
  %36 = and i32 %35, 3
  switch i32 %36, label %49 [
    i32 0, label %37
    i32 1, label %41
    i32 2, label %45
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @QPSK, align 4
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  br label %49

41:                                               ; preds = %32
  %42 = load i32, i32* @QAM_16, align 4
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @QAM_64, align 4
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %48 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %32, %45, %41, %37
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 1
  %53 = and i32 %52, 3
  switch i32 %53, label %62 [
    i32 0, label %54
    i32 1, label %58
  ]

54:                                               ; preds = %49
  %55 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  br label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %49, %58, %54
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 3
  %66 = and i32 %65, 3
  switch i32 %66, label %83 [
    i32 0, label %67
    i32 1, label %71
    i32 2, label %75
    i32 3, label %79
  ]

67:                                               ; preds = %62
  %68 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  br label %83

71:                                               ; preds = %62
  %72 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  br label %83

75:                                               ; preds = %62
  %76 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  br label %83

79:                                               ; preds = %62
  %80 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %62, %79, %75, %71, %67
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 3
  %87 = and i32 %86, 7
  switch i32 %87, label %104 [
    i32 0, label %88
    i32 1, label %92
    i32 2, label %96
    i32 3, label %100
  ]

88:                                               ; preds = %83
  %89 = load i32, i32* @HIERARCHY_NONE, align 4
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %104

92:                                               ; preds = %83
  %93 = load i32, i32* @HIERARCHY_1, align 4
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  br label %104

96:                                               ; preds = %83
  %97 = load i32, i32* @HIERARCHY_2, align 4
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  br label %104

100:                                              ; preds = %83
  %101 = load i32, i32* @HIERARCHY_4, align 4
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %83, %100, %96, %92, %88
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 0
  %108 = and i32 %107, 7
  switch i32 %108, label %129 [
    i32 0, label %109
    i32 1, label %113
    i32 2, label %117
    i32 3, label %121
    i32 4, label %125
  ]

109:                                              ; preds = %104
  %110 = load i8*, i8** @FEC_1_2, align 8
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %129

113:                                              ; preds = %104
  %114 = load i8*, i8** @FEC_2_3, align 8
  %115 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %116 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  br label %129

117:                                              ; preds = %104
  %118 = load i8*, i8** @FEC_3_4, align 8
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %129

121:                                              ; preds = %104
  %122 = load i8*, i8** @FEC_5_6, align 8
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  br label %129

125:                                              ; preds = %104
  %126 = load i8*, i8** @FEC_7_8, align 8
  %127 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %128 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %104, %125, %121, %117, %113, %109
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 5
  %133 = and i32 %132, 7
  switch i32 %133, label %154 [
    i32 0, label %134
    i32 1, label %138
    i32 2, label %142
    i32 3, label %146
    i32 4, label %150
  ]

134:                                              ; preds = %129
  %135 = load i8*, i8** @FEC_1_2, align 8
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %154

138:                                              ; preds = %129
  %139 = load i8*, i8** @FEC_2_3, align 8
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %154

142:                                              ; preds = %129
  %143 = load i8*, i8** @FEC_3_4, align 8
  %144 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  br label %154

146:                                              ; preds = %129
  %147 = load i8*, i8** @FEC_5_6, align 8
  %148 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %154

150:                                              ; preds = %129
  %151 = load i8*, i8** @FEC_7_8, align 8
  %152 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %153 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %129, %150, %146, %142, %138, %134
  %155 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %156 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @regmap_read(i32 %159, i32 1990, i32* %9)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %178

164:                                              ; preds = %154
  %165 = load i32, i32* %9, align 4
  %166 = lshr i32 %165, 0
  %167 = and i32 %166, 1
  switch i32 %167, label %176 [
    i32 0, label %168
    i32 1, label %172
  ]

168:                                              ; preds = %164
  %169 = load i32, i32* @INVERSION_OFF, align 4
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  br label %176

172:                                              ; preds = %164
  %173 = load i32, i32* @INVERSION_ON, align 4
  %174 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %175 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %164, %172, %168
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %3, align 4
  br label %184

178:                                              ; preds = %163, %31
  %179 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 0
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %178, %176
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
