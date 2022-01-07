; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_7__, %struct.dtv_frontend_properties, %struct.rtl2832_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.rtl2832_dev = type { %struct.TYPE_8__*, i32, %struct.i2c_client* }
%struct.TYPE_8__ = type { i64 }
%struct.i2c_client = type { i32 }

@rtl2832_set_frontend.bw_params = internal global [3 x <{ %struct.TYPE_9__, [31 x %struct.TYPE_9__] }>] [<{ %struct.TYPE_9__, [31 x %struct.TYPE_9__] }> <{ %struct.TYPE_9__ { i32 245, i32 255, i32 21, i32 56, i32 93, i32 109, i32 82, i32 7, i32 250, i32 47, i32 83, i32 245, i32 63, i32 202, i32 11, i32 145, i32 234, i32 48, i32 99, i32 178, i32 19, i32 218, i32 11, i32 196, i32 24, i32 126, i32 22, i32 102, i32 8, i32 103, i32 25, i32 224 }, [31 x %struct.TYPE_9__] zeroinitializer }>, <{ %struct.TYPE_9__, [31 x %struct.TYPE_9__] }> <{ %struct.TYPE_9__ { i32 231, i32 204, i32 181, i32 186, i32 232, i32 47, i32 103, i32 97, i32 0, i32 175, i32 134, i32 242, i32 191, i32 89, i32 4, i32 17, i32 182, i32 51, i32 164, i32 48, i32 21, i32 16, i32 10, i32 66, i32 24, i32 248, i32 23, i32 217, i32 7, i32 34, i32 25, i32 16 }, [31 x %struct.TYPE_9__] zeroinitializer }>, <{ %struct.TYPE_9__, [31 x %struct.TYPE_9__] }> <{ %struct.TYPE_9__ { i32 9, i32 246, i32 210, i32 167, i32 154, i32 201, i32 39, i32 119, i32 6, i32 191, i32 236, i32 244, i32 79, i32 11, i32 252, i32 1, i32 99, i32 53, i32 84, i32 167, i32 22, i32 102, i32 8, i32 180, i32 25, i32 110, i32 25, i32 101, i32 5, i32 200, i32 25, i32 224 }, [31 x %struct.TYPE_9__] zeroinitializer }>], align 16
@.str = private unnamed_addr constant [43 x i8] c"frequency=%u bandwidth_hz=%u inversion=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid bandwidth_hz %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DVBT_RSAMP_RATIO = common dso_local global i32 0, align 4
@DVBT_CFREQ_OFF_RATIO = common dso_local global i32 0, align 4
@DVBT_SOFT_RST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @rtl2832_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.rtl2832_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 2
  %18 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %17, align 8
  store %struct.rtl2832_dev* %18, %struct.rtl2832_dev** %4, align 8
  %19 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %20 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %5, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  store %struct.dtv_frontend_properties* %23, %struct.dtv_frontend_properties** %6, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34)
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %39, align 8
  %41 = icmp ne i32 (%struct.dvb_frontend.1*)* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %1
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %46, align 8
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %49 = bitcast %struct.dvb_frontend* %48 to %struct.dvb_frontend.1*
  %50 = call i32 %47(%struct.dvb_frontend.1* %49)
  br label %51

51:                                               ; preds = %42, %1
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %55, align 8
  %57 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %62, align 8
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %65 = bitcast %struct.dvb_frontend* %64 to %struct.dvb_frontend.0*
  %66 = call i32 %63(%struct.dvb_frontend.0* %65, i32* %15)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %180

70:                                               ; preds = %58
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @rtl2832_set_if(%struct.dvb_frontend* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %180

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %85 [
    i32 6000000, label %82
    i32 7000000, label %83
    i32 8000000, label %84
  ]

82:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  store i32 48000000, i32* %10, align 4
  br label %94

83:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  store i32 56000000, i32* %10, align 4
  br label %94

84:                                               ; preds = %78
  store i32 2, i32* %8, align 4
  store i32 64000000, i32* %10, align 4
  br label %94

85:                                               ; preds = %78
  %86 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %180

94:                                               ; preds = %84, %83, %82
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %97, 4096
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %101 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 284, %103
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x [32 x %struct.TYPE_9__]], [3 x [32 x %struct.TYPE_9__]]* bitcast ([3 x <{ %struct.TYPE_9__, [31 x %struct.TYPE_9__] }>]* @rtl2832_set_frontend.bw_params to [3 x [32 x %struct.TYPE_9__]]*), i64 0, i64 %106
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [32 x %struct.TYPE_9__], [32 x %struct.TYPE_9__]* %107, i64 0, i64 %109
  %111 = call i32 @regmap_bulk_write(i32 %102, i32 %104, %struct.TYPE_9__* %110, i32 1)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %99
  br label %180

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %95

119:                                              ; preds = %95
  %120 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %121 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 %124, 7
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = mul nsw i32 %127, 4194304
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @div_u64(i32 %129, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = and i32 %132, 67108863
  store i32 %133, i32* %13, align 4
  %134 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %135 = load i32, i32* @DVBT_RSAMP_RATIO, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %134, i32 %135, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %119
  br label %180

141:                                              ; preds = %119
  %142 = load i32, i32* %10, align 4
  %143 = shl i32 %142, 20
  store i32 %143, i32* %11, align 4
  %144 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %145 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = mul i64 %148, 7
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @div_u64(i32 %151, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = and i32 %156, 1048575
  store i32 %157, i32* %14, align 4
  %158 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %159 = load i32, i32* @DVBT_CFREQ_OFF_RATIO, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %158, i32 %159, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %141
  br label %180

165:                                              ; preds = %141
  %166 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %167 = load i32, i32* @DVBT_SOFT_RST, align 4
  %168 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %166, i32 %167, i32 1)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %180

172:                                              ; preds = %165
  %173 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %174 = load i32, i32* @DVBT_SOFT_RST, align 4
  %175 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %173, i32 %174, i32 0)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %180

179:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %186

180:                                              ; preds = %178, %171, %164, %140, %114, %85, %76, %69
  %181 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %182 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %181, i32 0, i32 0
  %183 = load i32, i32* %7, align 4
  %184 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %180, %179
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @rtl2832_set_if(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
