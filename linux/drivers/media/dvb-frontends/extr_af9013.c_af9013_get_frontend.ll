; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9013_state* }
%struct.af9013_state = type { i32, %struct.i2c_client* }
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
@.str.1 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @af9013_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.af9013_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.af9013_state*, %struct.af9013_state** %11, align 8
  store %struct.af9013_state* %12, %struct.af9013_state** %6, align 8
  %13 = load %struct.af9013_state*, %struct.af9013_state** %6, align 8
  %14 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.af9013_state*, %struct.af9013_state** %6, align 8
  %20 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %23 = call i32 @regmap_bulk_read(i32 %21, i32 54208, i32* %22, i32 3)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %164

27:                                               ; preds = %2
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 6
  %31 = and i32 %30, 3
  switch i32 %31, label %44 [
    i32 0, label %32
    i32 1, label %36
    i32 2, label %40
  ]

32:                                               ; preds = %27
  %33 = load i32, i32* @QPSK, align 4
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  br label %44

36:                                               ; preds = %27
  %37 = load i32, i32* @QAM_16, align 4
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %27
  %41 = load i32, i32* @QAM_64, align 4
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %27, %40, %36, %32
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 0
  %48 = and i32 %47, 3
  switch i32 %48, label %57 [
    i32 0, label %49
    i32 1, label %53
  ]

49:                                               ; preds = %44
  %50 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %44, %49
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 2
  %61 = and i32 %60, 3
  switch i32 %61, label %78 [
    i32 0, label %62
    i32 1, label %66
    i32 2, label %70
    i32 3, label %74
  ]

62:                                               ; preds = %57
  %63 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %78

66:                                               ; preds = %57
  %67 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  br label %78

70:                                               ; preds = %57
  %71 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  br label %78

74:                                               ; preds = %57
  %75 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %57, %74, %70, %66, %62
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 4
  %82 = and i32 %81, 7
  switch i32 %82, label %99 [
    i32 0, label %83
    i32 1, label %87
    i32 2, label %91
    i32 3, label %95
  ]

83:                                               ; preds = %78
  %84 = load i32, i32* @HIERARCHY_NONE, align 4
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %99

87:                                               ; preds = %78
  %88 = load i32, i32* @HIERARCHY_1, align 4
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %99

91:                                               ; preds = %78
  %92 = load i32, i32* @HIERARCHY_2, align 4
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  br label %99

95:                                               ; preds = %78
  %96 = load i32, i32* @HIERARCHY_4, align 4
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %78, %95, %91, %87, %83
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 0
  %103 = and i32 %102, 7
  switch i32 %103, label %124 [
    i32 0, label %104
    i32 1, label %108
    i32 2, label %112
    i32 3, label %116
    i32 4, label %120
  ]

104:                                              ; preds = %99
  %105 = load i8*, i8** @FEC_1_2, align 8
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  br label %124

108:                                              ; preds = %99
  %109 = load i8*, i8** @FEC_2_3, align 8
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %124

112:                                              ; preds = %99
  %113 = load i8*, i8** @FEC_3_4, align 8
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %124

116:                                              ; preds = %99
  %117 = load i8*, i8** @FEC_5_6, align 8
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %124

120:                                              ; preds = %99
  %121 = load i8*, i8** @FEC_7_8, align 8
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %99, %120, %116, %112, %108, %104
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 3
  %128 = and i32 %127, 7
  switch i32 %128, label %149 [
    i32 0, label %129
    i32 1, label %133
    i32 2, label %137
    i32 3, label %141
    i32 4, label %145
  ]

129:                                              ; preds = %124
  %130 = load i8*, i8** @FEC_1_2, align 8
  %131 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  br label %149

133:                                              ; preds = %124
  %134 = load i8*, i8** @FEC_2_3, align 8
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %149

137:                                              ; preds = %124
  %138 = load i8*, i8** @FEC_3_4, align 8
  %139 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  br label %149

141:                                              ; preds = %124
  %142 = load i8*, i8** @FEC_5_6, align 8
  %143 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %144 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %149

145:                                              ; preds = %124
  %146 = load i8*, i8** @FEC_7_8, align 8
  %147 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %148 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %124, %145, %141, %137, %133, %129
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 2
  %153 = and i32 %152, 3
  switch i32 %153, label %163 [
    i32 0, label %154
    i32 1, label %157
    i32 2, label %160
  ]

154:                                              ; preds = %149
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 0
  store i32 6000000, i32* %156, align 8
  br label %163

157:                                              ; preds = %149
  %158 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %159 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %158, i32 0, i32 0
  store i32 7000000, i32* %159, align 8
  br label %163

160:                                              ; preds = %149
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 0
  store i32 8000000, i32* %162, align 8
  br label %163

163:                                              ; preds = %149, %160, %157, %154
  store i32 0, i32* %3, align 4
  br label %170

164:                                              ; preds = %26
  %165 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %164, %163
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
