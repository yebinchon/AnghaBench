; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9033_dev* }
%struct.af9033_dev = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.dtv_frontend_properties = type { i32, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@FEC_NONE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @af9033_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.af9033_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.af9033_dev*, %struct.af9033_dev** %11, align 8
  store %struct.af9033_dev* %12, %struct.af9033_dev** %6, align 8
  %13 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %14 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.af9033_dev*, %struct.af9033_dev** %6, align 8
  %20 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %23 = call i32 @regmap_bulk_read(i32 %21, i32 8452352, i32* %22, i32 8)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %172

27:                                               ; preds = %2
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  %30 = ashr i32 %29, 0
  %31 = and i32 %30, 3
  switch i32 %31, label %40 [
    i32 0, label %32
    i32 1, label %36
  ]

32:                                               ; preds = %27
  %33 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %27, %36, %32
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 0
  %44 = and i32 %43, 3
  switch i32 %44, label %61 [
    i32 0, label %45
    i32 1, label %49
    i32 2, label %53
    i32 3, label %57
  ]

45:                                               ; preds = %40
  %46 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %48 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  br label %61

49:                                               ; preds = %40
  %50 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %61

53:                                               ; preds = %40
  %54 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  br label %61

57:                                               ; preds = %40
  %58 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %40, %57, %53, %49, %45
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 0
  %65 = and i32 %64, 7
  switch i32 %65, label %82 [
    i32 0, label %66
    i32 1, label %70
    i32 2, label %74
    i32 3, label %78
  ]

66:                                               ; preds = %61
  %67 = load i32, i32* @HIERARCHY_NONE, align 4
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  br label %82

70:                                               ; preds = %61
  %71 = load i32, i32* @HIERARCHY_1, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  br label %82

74:                                               ; preds = %61
  %75 = load i32, i32* @HIERARCHY_2, align 4
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %61
  %79 = load i32, i32* @HIERARCHY_4, align 4
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %61, %78, %74, %70, %66
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 0
  %86 = and i32 %85, 3
  switch i32 %86, label %99 [
    i32 0, label %87
    i32 1, label %91
    i32 2, label %95
  ]

87:                                               ; preds = %82
  %88 = load i32, i32* @QPSK, align 4
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %99

91:                                               ; preds = %82
  %92 = load i32, i32* @QAM_16, align 4
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  br label %99

95:                                               ; preds = %82
  %96 = load i32, i32* @QAM_64, align 4
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %82, %95, %91, %87
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %101 = load i32, i32* %100, align 16
  %102 = ashr i32 %101, 0
  %103 = and i32 %102, 3
  switch i32 %103, label %113 [
    i32 0, label %104
    i32 1, label %107
    i32 2, label %110
  ]

104:                                              ; preds = %99
  %105 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %105, i32 0, i32 0
  store i32 6000000, i32* %106, align 8
  br label %113

107:                                              ; preds = %99
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 0
  store i32 7000000, i32* %109, align 8
  br label %113

110:                                              ; preds = %99
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 0
  store i32 8000000, i32* %112, align 8
  br label %113

113:                                              ; preds = %99, %110, %107, %104
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 0
  %117 = and i32 %116, 7
  switch i32 %117, label %142 [
    i32 0, label %118
    i32 1, label %122
    i32 2, label %126
    i32 3, label %130
    i32 4, label %134
    i32 5, label %138
  ]

118:                                              ; preds = %113
  %119 = load i8*, i8** @FEC_1_2, align 8
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  br label %142

122:                                              ; preds = %113
  %123 = load i8*, i8** @FEC_2_3, align 8
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %142

126:                                              ; preds = %113
  %127 = load i8*, i8** @FEC_3_4, align 8
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %142

130:                                              ; preds = %113
  %131 = load i8*, i8** @FEC_5_6, align 8
  %132 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %142

134:                                              ; preds = %113
  %135 = load i8*, i8** @FEC_7_8, align 8
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  br label %142

138:                                              ; preds = %113
  %139 = load i8*, i8** @FEC_NONE, align 8
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %113, %138, %134, %130, %126, %122, %118
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 0
  %146 = and i32 %145, 7
  switch i32 %146, label %171 [
    i32 0, label %147
    i32 1, label %151
    i32 2, label %155
    i32 3, label %159
    i32 4, label %163
    i32 5, label %167
  ]

147:                                              ; preds = %142
  %148 = load i8*, i8** @FEC_1_2, align 8
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %171

151:                                              ; preds = %142
  %152 = load i8*, i8** @FEC_2_3, align 8
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  br label %171

155:                                              ; preds = %142
  %156 = load i8*, i8** @FEC_3_4, align 8
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  br label %171

159:                                              ; preds = %142
  %160 = load i8*, i8** @FEC_5_6, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  br label %171

163:                                              ; preds = %142
  %164 = load i8*, i8** @FEC_7_8, align 8
  %165 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %166 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  br label %171

167:                                              ; preds = %142
  %168 = load i8*, i8** @FEC_NONE, align 8
  %169 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %170 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %142, %167, %163, %159, %155, %151, %147
  store i32 0, i32* %3, align 4
  br label %178

172:                                              ; preds = %26
  %173 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 0
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %172, %171
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
