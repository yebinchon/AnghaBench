; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_set_ber_per_period_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_set_ber_per_period_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2880_priv* }
%struct.cxd2880_priv = type { i32, i32, i32, %struct.cxd2880_tnrdmd, %struct.TYPE_4__ }
%struct.cxd2880_tnrdmd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.cxd2880_dvbt_tpsinfo = type { i64, i32, i64, i64, i64 }

@CXD2880_DTV_BW_1_7_MHZ = common dso_local global i32 0, align 4
@cxd2880_set_ber_per_period_t.cr_table = internal constant [5 x i32] [i32 31500, i32 42000, i32 47250, i32 52500, i32 55125], align 16
@cxd2880_set_ber_per_period_t.denominator_tbl = internal constant [4 x i32] [i32 125664, i32 129472, i32 137088, i32 152320], align 16
@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"tps monitor error ret = %d\0A\00", align 1
@CXD2880_DVBT_HIERARCHY_NON = common dso_local global i64 0, align 8
@CXD2880_DVBT_CONSTELLATION_QPSK = common dso_local global i32 0, align 4
@CXD2880_DVBT_GUARD_1_4 = common dso_local global i64 0, align 8
@CXD2880_DVBT_CODERATE_1_2 = common dso_local global i8* null, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CFG_DVBT_VBER_PERIOD = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CFG_DVBT_BERN_PERIOD = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CFG_DVBT_PER_MES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2880_set_ber_per_period_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_set_ber_per_period_t(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_priv*, align 8
  %6 = alloca %struct.cxd2880_dvbt_tpsinfo, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cxd2880_tnrdmd*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %14 = load i32, i32* @CXD2880_DTV_BW_1_7_MHZ, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = icmp ne %struct.dvb_frontend* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %287

21:                                               ; preds = %1
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %23, align 8
  store %struct.cxd2880_priv* %24, %struct.cxd2880_priv** %5, align 8
  %25 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %26 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %30 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %29, i32 0, i32 3
  %31 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(%struct.cxd2880_tnrdmd* %30, %struct.cxd2880_dvbt_tpsinfo* %6)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @CXD2880_DVBT_HIERARCHY_NON, align 8
  %38 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @CXD2880_DVBT_CONSTELLATION_QPSK, align 4
  %40 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load i64, i64* @CXD2880_DVBT_GUARD_1_4, align 8
  %42 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = load i8*, i8** @CXD2880_DVBT_CODERATE_1_2, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  %46 = load i8*, i8** @CXD2880_DVBT_CODERATE_1_2, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 4
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %34, %21
  %50 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CXD2880_DVBT_HIERARCHY_NON, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %101

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = mul i32 63000000, %55
  %57 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %59, 2
  %61 = mul i32 %56, %60
  %62 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = udiv i32 %61, %65
  store i32 %66, i32* %8, align 4
  %67 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* @cxd2880_set_ber_per_period_t.cr_table, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 1000, %70
  %72 = load i32, i32* %7, align 4
  %73 = mul i32 %71, %72
  %74 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %76, 2
  %78 = mul i32 %73, %77
  %79 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = udiv i32 %78, %82
  store i32 %83, i32* %9, align 4
  %84 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* @cxd2880_set_ber_per_period_t.cr_table, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 875, %87
  %89 = load i32, i32* %7, align 4
  %90 = mul i32 %88, %89
  %91 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %93, 2
  %95 = mul i32 %90, %94
  %96 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = udiv i32 %95, %99
  store i32 %100, i32* %10, align 4
  br label %219

101:                                              ; preds = %49
  store i32 0, i32* %12, align 4
  %102 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %103 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %102, i32 0, i32 3
  store %struct.cxd2880_tnrdmd* %103, %struct.cxd2880_tnrdmd** %13, align 8
  %104 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %13, align 8
  %105 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %107, align 8
  %109 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %13, align 8
  %110 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %113 = call i32 %108(%struct.TYPE_5__* %111, i32 %112, i32 0, i32 16)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %101
  %117 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %13, align 8
  %118 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %120, align 8
  %122 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %13, align 8
  %123 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %126 = call i32 %121(%struct.TYPE_5__* %124, i32 %125, i32 103, i32* %12, i32 1)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %129, %116
  br label %132

131:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %183

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = mul i32 63000000, %137
  %139 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %140, 2
  %142 = add nsw i32 %141, 2
  %143 = mul i32 %138, %142
  %144 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = udiv i32 %143, %147
  store i32 %148, i32* %8, align 4
  %149 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* @cxd2880_set_ber_per_period_t.cr_table, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 1000, %152
  %154 = load i32, i32* %7, align 4
  %155 = mul i32 %153, %154
  %156 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 %158, 2
  %160 = mul i32 %155, %159
  %161 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = udiv i32 %160, %164
  store i32 %165, i32* %9, align 4
  %166 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [5 x i32], [5 x i32]* @cxd2880_set_ber_per_period_t.cr_table, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 875, %169
  %171 = load i32, i32* %7, align 4
  %172 = mul i32 %170, %171
  %173 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %174, 2
  %176 = add nsw i32 %175, 2
  %177 = mul i32 %172, %176
  %178 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = udiv i32 %177, %181
  store i32 %182, i32* %10, align 4
  br label %218

183:                                              ; preds = %132
  %184 = load i32, i32* %7, align 4
  %185 = mul i32 63000000, %184
  %186 = mul i32 %185, 2
  %187 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = udiv i32 %186, %190
  store i32 %191, i32* %8, align 4
  %192 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds [5 x i32], [5 x i32]* @cxd2880_set_ber_per_period_t.cr_table, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 1000, %195
  %197 = load i32, i32* %7, align 4
  %198 = mul i32 %196, %197
  %199 = mul i32 %198, 2
  %200 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = udiv i32 %199, %203
  store i32 %204, i32* %9, align 4
  %205 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds [5 x i32], [5 x i32]* @cxd2880_set_ber_per_period_t.cr_table, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 875, %208
  %210 = load i32, i32* %7, align 4
  %211 = mul i32 %209, %210
  %212 = mul i32 %211, 2
  %213 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %6, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* @cxd2880_set_ber_per_period_t.denominator_tbl, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = udiv i32 %212, %216
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %183, %136
  br label %219

219:                                              ; preds = %218, %54
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %220, 8192
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %227

223:                                              ; preds = %219
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @intlog2(i32 %224)
  %226 = ashr i32 %225, 24
  br label %227

227:                                              ; preds = %223, %222
  %228 = phi i32 [ 8, %222 ], [ %226, %223 ]
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = shl i32 1, %229
  %231 = mul i32 %230, 1000
  %232 = load i32, i32* %8, align 4
  %233 = sdiv i32 %232, 2
  %234 = add i32 %231, %233
  %235 = load i32, i32* %8, align 4
  %236 = udiv i32 %234, %235
  %237 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %238 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %240 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %239, i32 0, i32 3
  %241 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT_VBER_PERIOD, align 4
  %242 = load i32, i32* %11, align 4
  %243 = icmp eq i32 %242, 8
  br i1 %243, label %244, label %245

244:                                              ; preds = %227
  br label %248

245:                                              ; preds = %227
  %246 = load i32, i32* %11, align 4
  %247 = sub nsw i32 %246, 12
  br label %248

248:                                              ; preds = %245, %244
  %249 = phi i32 [ 0, %244 ], [ %247, %245 ]
  %250 = call i32 @cxd2880_tnrdmd_set_cfg(%struct.cxd2880_tnrdmd* %240, i32 %241, i32 %249)
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @intlog2(i32 %251)
  %253 = ashr i32 %252, 24
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = shl i32 1, %254
  %256 = mul i32 %255, 1000
  %257 = load i32, i32* %9, align 4
  %258 = sdiv i32 %257, 2
  %259 = add i32 %256, %258
  %260 = load i32, i32* %9, align 4
  %261 = udiv i32 %259, %260
  %262 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %263 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %265 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %264, i32 0, i32 3
  %266 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT_BERN_PERIOD, align 4
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @cxd2880_tnrdmd_set_cfg(%struct.cxd2880_tnrdmd* %265, i32 %266, i32 %267)
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @intlog2(i32 %269)
  %271 = ashr i32 %270, 24
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = shl i32 1, %272
  %274 = mul i32 %273, 1000
  %275 = load i32, i32* %10, align 4
  %276 = sdiv i32 %275, 2
  %277 = add i32 %274, %276
  %278 = load i32, i32* %10, align 4
  %279 = udiv i32 %277, %278
  %280 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %281 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %283 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %282, i32 0, i32 3
  %284 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT_PER_MES, align 4
  %285 = load i32, i32* %11, align 4
  %286 = call i32 @cxd2880_tnrdmd_set_cfg(%struct.cxd2880_tnrdmd* %283, i32 %284, i32 %285)
  store i32 0, i32* %2, align 4
  br label %287

287:                                              ; preds = %248, %17
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(%struct.cxd2880_tnrdmd*, %struct.cxd2880_dvbt_tpsinfo*) #1

declare dso_local i32 @intlog2(i32) #1

declare dso_local i32 @cxd2880_tnrdmd_set_cfg(%struct.cxd2880_tnrdmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
