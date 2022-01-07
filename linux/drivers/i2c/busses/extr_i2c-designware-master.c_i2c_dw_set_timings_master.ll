; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_set_timings_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_set_timings_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, %struct.i2c_timings }
%struct.i2c_timings = type { i32, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DW_IC_COMP_PARAM_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Standard Mode HCNT:LCNT = %d:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" Plus\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Fast Mode%s HCNT:LCNT = %d:%d\0A\00", align 1
@DW_IC_CON_SPEED_MASK = common dso_local global i32 0, align 4
@DW_IC_COMP_PARAM_1_SPEED_MODE_MASK = common dso_local global i32 0, align 4
@DW_IC_COMP_PARAM_1_SPEED_MODE_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"High Speed not supported!\0A\00", align 1
@DW_IC_CON_SPEED_FAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"High Speed Mode HCNT:LCNT = %d:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Standard Mode\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"High Speed Mode\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Fast Mode\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Bus speed: %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_set_timings_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_set_timings_master(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_timings*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %12, i32 0, i32 10
  store %struct.i2c_timings* %13, %struct.i2c_timings** %9, align 8
  %14 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %15 = call i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %2, align 4
  br label %217

20:                                               ; preds = %1
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %22 = load i32, i32* @DW_IC_COMP_PARAM_1, align 4
  %23 = call i32 @dw_readl(%struct.dw_i2c_dev* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %25 = call i32 @i2c_dw_release_lock(%struct.dw_i2c_dev* %24)
  %26 = load %struct.i2c_timings*, %struct.i2c_timings** %9, align 8
  %27 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i64 [ %28, %30 ], [ 300, %31 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.i2c_timings*, %struct.i2c_timings** %9, align 8
  %36 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi i64 [ %37, %39 ], [ 300, %40 ]
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %45 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %50 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %55 = call i32 @i2c_dw_clk_rate(%struct.dw_i2c_dev* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @i2c_dw_scl_hcnt(i32 %56, i32 4000, i32 %57, i32 0, i32 0)
  %59 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %60 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @i2c_dw_scl_lcnt(i32 %61, i32 4700, i32 %62, i32 0)
  %64 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %65 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %53, %48
  %67 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %68 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %71 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %74 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, i8*, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* %75)
  %77 = load %struct.i2c_timings*, %struct.i2c_timings** %9, align 8
  %78 = getelementptr inbounds %struct.i2c_timings, %struct.i2c_timings* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1000000
  br i1 %80, label %81, label %103

81:                                               ; preds = %66
  %82 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %83 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %82, i32 0, i32 9
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %88 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %87, i32 0, i32 8
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %93 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %92, i32 0, i32 9
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %96 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  %97 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %98 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %97, i32 0, i32 8
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %101 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %102

102:                                              ; preds = %91, %86, %81
  br label %103

103:                                              ; preds = %102, %66
  %104 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %105 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %104, i32 0, i32 7
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %110 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %109, i32 0, i32 6
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %126, label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %115 = call i32 @i2c_dw_clk_rate(%struct.dw_i2c_dev* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i8* @i2c_dw_scl_hcnt(i32 %116, i32 600, i32 %117, i32 0, i32 0)
  %119 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %120 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i8* @i2c_dw_scl_lcnt(i32 %121, i32 1300, i32 %122, i32 0)
  %124 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %125 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %124, i32 0, i32 6
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %113, %108
  %127 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %128 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %132 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %131, i32 0, i32 7
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %135 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %134, i32 0, i32 6
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i32, i8*, i8*, i8*, ...) @dev_dbg(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %130, i8* %133, i8* %136)
  %138 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %139 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @DW_IC_CON_SPEED_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp eq i32 %142, 129
  br i1 %143, label %144, label %193

144:                                              ; preds = %126
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @DW_IC_COMP_PARAM_1_SPEED_MODE_MASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @DW_IC_COMP_PARAM_1_SPEED_MODE_HIGH, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %144
  %151 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %152 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @DW_IC_CON_SPEED_MASK, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %158 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @DW_IC_CON_SPEED_FAST, align 4
  %162 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %163 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %167 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %166, i32 0, i32 3
  store i8* null, i8** %167, align 8
  %168 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %169 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %168, i32 0, i32 4
  store i8* null, i8** %169, align 8
  br label %192

170:                                              ; preds = %144
  %171 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %172 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %191

175:                                              ; preds = %170
  %176 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %177 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %182 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %185 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %184, i32 0, i32 3
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %188 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (i32, i8*, i8*, i8*, ...) @dev_dbg(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %186, i8* %189)
  br label %191

191:                                              ; preds = %180, %175, %170
  br label %192

192:                                              ; preds = %191, %150
  br label %193

193:                                              ; preds = %192, %126
  %194 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %195 = call i32 @i2c_dw_set_sda_hold(%struct.dw_i2c_dev* %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %215

199:                                              ; preds = %193
  %200 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %201 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @DW_IC_CON_SPEED_MASK, align 4
  %204 = and i32 %202, %203
  switch i32 %204, label %207 [
    i32 128, label %205
    i32 129, label %206
  ]

205:                                              ; preds = %199
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %208

206:                                              ; preds = %199
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %208

207:                                              ; preds = %199
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %208

208:                                              ; preds = %207, %206, %205
  %209 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %210 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load i8*, i8** %4, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = call i32 (i32, i8*, i8*, i8*, ...) @dev_dbg(i32 %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %212, i8* %213)
  br label %215

215:                                              ; preds = %208, %198
  %216 = load i32, i32* %11, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %18
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @i2c_dw_release_lock(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_clk_rate(%struct.dw_i2c_dev*) #1

declare dso_local i8* @i2c_dw_scl_hcnt(i32, i32, i32, i32, i32) #1

declare dso_local i8* @i2c_dw_scl_lcnt(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @i2c_dw_set_sda_hold(%struct.dw_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
