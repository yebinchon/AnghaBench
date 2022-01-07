; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.m88ds3103_dev* }
%struct.m88ds3103_dev = type { i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i8* null, align 8
@INVERSION_ON = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_1_2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid fec_inner\0A\00", align 1
@QPSK = common dso_local global i8* null, align 8
@FEC_2_5 = common dso_local global i8* null, align 8
@FEC_3_5 = common dso_local global i8* null, align 8
@FEC_4_5 = common dso_local global i8* null, align 8
@FEC_8_9 = common dso_local global i8* null, align 8
@FEC_9_10 = common dso_local global i8* null, align 8
@PILOT_OFF = common dso_local global i32 0, align 4
@PILOT_ON = common dso_local global i32 0, align 4
@PSK_8 = common dso_local global i8* null, align 8
@APSK_16 = common dso_local global i8* null, align 8
@APSK_32 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid modulation\0A\00", align 1
@ROLLOFF_35 = common dso_local global i32 0, align 4
@ROLLOFF_25 = common dso_local global i32 0, align 4
@ROLLOFF_20 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid rolloff\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid delivery_system\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @m88ds3103_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.m88ds3103_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %11, align 8
  store %struct.m88ds3103_dev* %12, %struct.m88ds3103_dev** %6, align 8
  %13 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %14 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %13, i32 0, i32 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %20 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %25 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FE_HAS_LOCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %2
  store i32 0, i32* %8, align 4
  br label %274

31:                                               ; preds = %23
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %244 [
    i32 129, label %35
    i32 128, label %99
  ]

35:                                               ; preds = %31
  %36 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %37 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %40 = call i32 @regmap_bulk_read(i32 %38, i32 224, i32* %39, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %274

44:                                               ; preds = %35
  %45 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %46 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %49 = call i32 @regmap_bulk_read(i32 %47, i32 230, i32* %48, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %274

53:                                               ; preds = %44
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 2
  %57 = and i32 %56, 1
  switch i32 %57, label %66 [
    i32 0, label %58
    i32 1, label %62
  ]

58:                                               ; preds = %53
  %59 = load i8*, i8** @INVERSION_OFF, align 8
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  br label %66

62:                                               ; preds = %53
  %63 = load i8*, i8** @INVERSION_ON, align 8
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %53, %62, %58
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 5
  %70 = and i32 %69, 7
  switch i32 %70, label %91 [
    i32 0, label %71
    i32 1, label %75
    i32 2, label %79
    i32 3, label %83
    i32 4, label %87
  ]

71:                                               ; preds = %66
  %72 = load i8*, i8** @FEC_7_8, align 8
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  br label %95

75:                                               ; preds = %66
  %76 = load i8*, i8** @FEC_5_6, align 8
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  br label %95

79:                                               ; preds = %66
  %80 = load i8*, i8** @FEC_3_4, align 8
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  br label %95

83:                                               ; preds = %66
  %84 = load i8*, i8** @FEC_2_3, align 8
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  br label %95

87:                                               ; preds = %66
  %88 = load i8*, i8** @FEC_1_2, align 8
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 6
  store i8* %88, i8** %90, align 8
  br label %95

91:                                               ; preds = %66
  %92 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %87, %83, %79, %75, %71
  %96 = load i8*, i8** @QPSK, align 8
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  br label %250

99:                                               ; preds = %31
  %100 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %101 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %104 = call i32 @regmap_bulk_read(i32 %102, i32 126, i32* %103, i32 1)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %274

108:                                              ; preds = %99
  %109 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %110 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %113 = call i32 @regmap_bulk_read(i32 %111, i32 137, i32* %112, i32 1)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %274

117:                                              ; preds = %108
  %118 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %119 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %122 = call i32 @regmap_bulk_read(i32 %120, i32 242, i32* %121, i32 1)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %274

126:                                              ; preds = %117
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 0
  %130 = and i32 %129, 15
  switch i32 %130, label %167 [
    i32 2, label %131
    i32 3, label %135
    i32 4, label %139
    i32 5, label %143
    i32 6, label %147
    i32 7, label %151
    i32 8, label %155
    i32 9, label %159
    i32 10, label %163
  ]

131:                                              ; preds = %126
  %132 = load i8*, i8** @FEC_2_5, align 8
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 6
  store i8* %132, i8** %134, align 8
  br label %171

135:                                              ; preds = %126
  %136 = load i8*, i8** @FEC_1_2, align 8
  %137 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %138 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  br label %171

139:                                              ; preds = %126
  %140 = load i8*, i8** @FEC_3_5, align 8
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  br label %171

143:                                              ; preds = %126
  %144 = load i8*, i8** @FEC_2_3, align 8
  %145 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %146 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  br label %171

147:                                              ; preds = %126
  %148 = load i8*, i8** @FEC_3_4, align 8
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  br label %171

151:                                              ; preds = %126
  %152 = load i8*, i8** @FEC_4_5, align 8
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 6
  store i8* %152, i8** %154, align 8
  br label %171

155:                                              ; preds = %126
  %156 = load i8*, i8** @FEC_5_6, align 8
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 6
  store i8* %156, i8** %158, align 8
  br label %171

159:                                              ; preds = %126
  %160 = load i8*, i8** @FEC_8_9, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  br label %171

163:                                              ; preds = %126
  %164 = load i8*, i8** @FEC_9_10, align 8
  %165 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %166 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  br label %171

167:                                              ; preds = %126
  %168 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %171

171:                                              ; preds = %167, %163, %159, %155, %151, %147, %143, %139, %135, %131
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 5
  %175 = and i32 %174, 1
  switch i32 %175, label %184 [
    i32 0, label %176
    i32 1, label %180
  ]

176:                                              ; preds = %171
  %177 = load i32, i32* @PILOT_OFF, align 4
  %178 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %179 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  br label %184

180:                                              ; preds = %171
  %181 = load i32, i32* @PILOT_ON, align 4
  %182 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %183 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %171, %180, %176
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 6
  %188 = and i32 %187, 7
  switch i32 %188, label %205 [
    i32 0, label %189
    i32 1, label %193
    i32 2, label %197
    i32 3, label %201
  ]

189:                                              ; preds = %184
  %190 = load i8*, i8** @QPSK, align 8
  %191 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %192 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %191, i32 0, i32 4
  store i8* %190, i8** %192, align 8
  br label %209

193:                                              ; preds = %184
  %194 = load i8*, i8** @PSK_8, align 8
  %195 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %196 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %195, i32 0, i32 4
  store i8* %194, i8** %196, align 8
  br label %209

197:                                              ; preds = %184
  %198 = load i8*, i8** @APSK_16, align 8
  %199 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %200 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %199, i32 0, i32 4
  store i8* %198, i8** %200, align 8
  br label %209

201:                                              ; preds = %184
  %202 = load i8*, i8** @APSK_32, align 8
  %203 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %204 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %203, i32 0, i32 4
  store i8* %202, i8** %204, align 8
  br label %209

205:                                              ; preds = %184
  %206 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %207, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %209

209:                                              ; preds = %205, %201, %197, %193, %189
  %210 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 7
  %213 = and i32 %212, 1
  switch i32 %213, label %222 [
    i32 0, label %214
    i32 1, label %218
  ]

214:                                              ; preds = %209
  %215 = load i8*, i8** @INVERSION_OFF, align 8
  %216 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  br label %222

218:                                              ; preds = %209
  %219 = load i8*, i8** @INVERSION_ON, align 8
  %220 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %220, i32 0, i32 3
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %209, %218, %214
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 0
  %226 = and i32 %225, 3
  switch i32 %226, label %239 [
    i32 0, label %227
    i32 1, label %231
    i32 2, label %235
  ]

227:                                              ; preds = %222
  %228 = load i32, i32* @ROLLOFF_35, align 4
  %229 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %230 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %243

231:                                              ; preds = %222
  %232 = load i32, i32* @ROLLOFF_25, align 4
  %233 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %234 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %243

235:                                              ; preds = %222
  %236 = load i32, i32* @ROLLOFF_20, align 4
  %237 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %238 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  br label %243

239:                                              ; preds = %222
  %240 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %241 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %240, i32 0, i32 0
  %242 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %241, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %243

243:                                              ; preds = %239, %235, %231, %227
  br label %250

244:                                              ; preds = %31
  %245 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %246 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %245, i32 0, i32 0
  %247 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %246, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %8, align 4
  br label %274

250:                                              ; preds = %243, %95
  %251 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %252 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %255 = call i32 @regmap_bulk_read(i32 %253, i32 109, i32* %254, i32 2)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %274

259:                                              ; preds = %250
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 8
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 0
  %266 = or i32 %262, %265
  %267 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %268 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %266, %269
  %271 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %270, i32 65536)
  %272 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %273 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  store i32 0, i32* %3, align 4
  br label %280

274:                                              ; preds = %258, %244, %125, %116, %107, %52, %43, %30
  %275 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %276 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %275, i32 0, i32 0
  %277 = load i32, i32* %8, align 4
  %278 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %276, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %274, %259
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
