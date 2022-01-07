; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t2.c_cxd2820r_get_frontend_t2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t2.c_cxd2820r_get_frontend_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2820r_priv* }
%struct.cxd2820r_priv = type { i32*, %struct.i2c_client** }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_4K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_1K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_16K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_32K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_128 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_19_128 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_19_256 = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_3_5 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_4_5 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@QAM_256 = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_get_frontend_t2(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
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
  %28 = call i32 @regmap_bulk_read(i32 %26, i32 8284, i32* %27, i32 2)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %179

32:                                               ; preds = %2
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 0
  %36 = and i32 %35, 7
  switch i32 %36, label %61 [
    i32 0, label %37
    i32 1, label %41
    i32 2, label %45
    i32 3, label %49
    i32 4, label %53
    i32 5, label %57
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %61

41:                                               ; preds = %32
  %42 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  br label %61

45:                                               ; preds = %32
  %46 = load i32, i32* @TRANSMISSION_MODE_4K, align 4
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %48 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  br label %61

49:                                               ; preds = %32
  %50 = load i32, i32* @TRANSMISSION_MODE_1K, align 4
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %61

53:                                               ; preds = %32
  %54 = load i32, i32* @TRANSMISSION_MODE_16K, align 4
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  br label %61

57:                                               ; preds = %32
  %58 = load i32, i32* @TRANSMISSION_MODE_32K, align 4
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %32, %57, %53, %49, %45, %41, %37
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 7
  switch i32 %65, label %94 [
    i32 0, label %66
    i32 1, label %70
    i32 2, label %74
    i32 3, label %78
    i32 4, label %82
    i32 5, label %86
    i32 6, label %90
  ]

66:                                               ; preds = %61
  %67 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %94

70:                                               ; preds = %61
  %71 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %94

74:                                               ; preds = %61
  %75 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  br label %94

78:                                               ; preds = %61
  %79 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %94

82:                                               ; preds = %61
  %83 = load i32, i32* @GUARD_INTERVAL_1_128, align 4
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %94

86:                                               ; preds = %61
  %87 = load i32, i32* @GUARD_INTERVAL_19_128, align 4
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %61
  %91 = load i32, i32* @GUARD_INTERVAL_19_256, align 4
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %61, %90, %86, %82, %78, %74, %70, %66
  %95 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %96 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %101 = call i32 @regmap_bulk_read(i32 %99, i32 8795, i32* %100, i32 2)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %179

105:                                              ; preds = %94
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 0
  %109 = and i32 %108, 7
  switch i32 %109, label %134 [
    i32 0, label %110
    i32 1, label %114
    i32 2, label %118
    i32 3, label %122
    i32 4, label %126
    i32 5, label %130
  ]

110:                                              ; preds = %105
  %111 = load i32, i32* @FEC_1_2, align 4
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  br label %134

114:                                              ; preds = %105
  %115 = load i32, i32* @FEC_3_5, align 4
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %134

118:                                              ; preds = %105
  %119 = load i32, i32* @FEC_2_3, align 4
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  br label %134

122:                                              ; preds = %105
  %123 = load i32, i32* @FEC_3_4, align 4
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  br label %134

126:                                              ; preds = %105
  %127 = load i32, i32* @FEC_4_5, align 4
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  br label %134

130:                                              ; preds = %105
  %131 = load i32, i32* @FEC_5_6, align 4
  %132 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %105, %130, %126, %122, %118, %114, %110
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 0
  %138 = and i32 %137, 7
  switch i32 %138, label %155 [
    i32 0, label %139
    i32 1, label %143
    i32 2, label %147
    i32 3, label %151
  ]

139:                                              ; preds = %134
  %140 = load i32, i32* @QPSK, align 4
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %155

143:                                              ; preds = %134
  %144 = load i32, i32* @QAM_16, align 4
  %145 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %146 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %155

147:                                              ; preds = %134
  %148 = load i32, i32* @QAM_64, align 4
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %155

151:                                              ; preds = %134
  %152 = load i32, i32* @QAM_256, align 4
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %134, %151, %147, %143, %139
  %156 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %6, align 8
  %157 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @regmap_read(i32 %160, i32 8373, i32* %9)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %179

165:                                              ; preds = %155
  %166 = load i32, i32* %9, align 4
  %167 = lshr i32 %166, 4
  %168 = and i32 %167, 1
  switch i32 %168, label %177 [
    i32 0, label %169
    i32 1, label %173
  ]

169:                                              ; preds = %165
  %170 = load i32, i32* @INVERSION_OFF, align 4
  %171 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %172 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  br label %177

173:                                              ; preds = %165
  %174 = load i32, i32* @INVERSION_ON, align 4
  %175 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %176 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %165, %173, %169
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %3, align 4
  br label %185

179:                                              ; preds = %164, %104, %31
  %180 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load i32, i32* %8, align 4
  %183 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %179, %177
  %186 = load i32, i32* %3, align 4
  ret i32 %186
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
