; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_set_ber_per_period_t2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_set_ber_per_period_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2880_priv* }
%struct.cxd2880_priv = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cxd2880_dvbt2_l1pre = type { i64, i64, i32, i64 }
%struct.cxd2880_dvbt2_l1post = type { i32, i32 }
%struct.cxd2880_dvbt2_plp = type { i32, i32, i64, i64, i64 }
%struct.cxd2880_dvbt2_bbheader = type { i64, i32 }

@cxd2880_set_ber_per_period_t2.gi_tbl = internal constant [7 x i32] [i32 32, i32 64, i32 128, i32 256, i32 8, i32 152, i32 76], align 16
@cxd2880_set_ber_per_period_t2.n_tbl = internal constant [6 x i32] [i32 8, i32 2, i32 4, i32 16, i32 1, i32 1], align 16
@cxd2880_set_ber_per_period_t2.mode_tbl = internal constant [6 x i32] [i32 2, i32 8, i32 4, i32 1, i32 16, i32 32], align 16
@cxd2880_set_ber_per_period_t2.kbch_tbl = internal constant [2 x [8 x i32]] [[8 x i32] [i32 6952, i32 9472, i32 10552, i32 11632, i32 12352, i32 13072, i32 5152, i32 6232], [8 x i32] [i32 32128, i32 38608, i32 42960, i32 48328, i32 51568, i32 53760, i32 0, i32 0]], align 16
@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"l1 pre error\0A\00", align 1
@CXD2880_DVBT2_PLP_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"plp info error\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"l1 post error\0A\00", align 1
@CXD2880_TNRDMD_CFG_DVBT2_LBER_MES = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CFG_DVBT2_BBER_MES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"bb header error\0A\00", align 1
@CXD2880_DVBT2_PLP_MODE_NM = common dso_local global i64 0, align 8
@CXD2880_DVBT2_PLP_MODE_HEM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"plp mode is not Normal or HEM\0A\00", align 1
@CXD2880_TNRDMD_CFG_DVBT2_PER_MES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2880_set_ber_per_period_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_set_ber_per_period_t2(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_priv*, align 8
  %6 = alloca %struct.cxd2880_dvbt2_l1pre, align 8
  %7 = alloca %struct.cxd2880_dvbt2_l1post, align 4
  %8 = alloca %struct.cxd2880_dvbt2_plp, align 8
  %9 = alloca %struct.cxd2880_dvbt2_bbheader, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 132, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = icmp ne %struct.dvb_frontend* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %304

24:                                               ; preds = %1
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  %27 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %26, align 8
  store %struct.cxd2880_priv* %27, %struct.cxd2880_priv** %5, align 8
  %28 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %29 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %33 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %32, i32 0, i32 3
  %34 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(i32* %33, %struct.cxd2880_dvbt2_l1pre* %6)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %284

39:                                               ; preds = %24
  %40 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %41 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %40, i32 0, i32 3
  %42 = load i32, i32* @CXD2880_DVBT2_PLP_DATA, align 4
  %43 = call i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(i32* %41, i32 %42, %struct.cxd2880_dvbt2_plp* %8)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %284

48:                                               ; preds = %39
  %49 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %50 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %49, i32 0, i32 3
  %51 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(i32* %50, %struct.cxd2880_dvbt2_l1post* %7)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %284

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* @cxd2880_set_ber_per_period_t2.mode_tbl, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %6, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* @cxd2880_set_ber_per_period_t2.gi_tbl, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 1024, %64
  %66 = mul nsw i32 %60, %65
  %67 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %6, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %6, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* @cxd2880_set_ber_per_period_t2.n_tbl, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %68, %72
  %74 = mul nsw i32 %66, %73
  %75 = add nsw i32 %74, 2048
  store i32 %75, i32* %15, align 4
  %76 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %6, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %56
  %80 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %7, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %85, %88
  %90 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, %struct.cxd2880_dvbt2_l1post* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %89, %91
  store i32 %92, i32* %16, align 4
  br label %94

93:                                               ; preds = %79, %56
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %93, %83
  %95 = load i32, i32* %10, align 4
  switch i32 %95, label %124 [
    i32 132, label %96
    i32 131, label %103
    i32 130, label %110
    i32 129, label %117
    i32 128, label %123
  ]

96:                                               ; preds = %94
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %97, %98
  %100 = mul nsw i32 %99, 71
  %101 = add nsw i32 %100, 65
  %102 = sdiv i32 %101, 131
  store i32 %102, i32* %17, align 4
  br label %131

103:                                              ; preds = %94
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %104, %105
  %107 = mul nsw i32 %106, 7
  %108 = add nsw i32 %107, 20
  %109 = sdiv i32 %108, 40
  store i32 %109, i32* %17, align 4
  br label %131

110:                                              ; preds = %94
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %111, %112
  %114 = mul nsw i32 %113, 7
  %115 = add nsw i32 %114, 24
  %116 = sdiv i32 %115, 48
  store i32 %116, i32* %17, align 4
  br label %131

117:                                              ; preds = %94
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %118, %119
  %121 = add nsw i32 %120, 4
  %122 = sdiv i32 %121, 8
  store i32 %122, i32* %17, align 4
  br label %131

123:                                              ; preds = %94
  br label %124

124:                                              ; preds = %94, %123
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %125, %126
  %128 = mul nsw i32 %127, 7
  %129 = add nsw i32 %128, 32
  %130 = sdiv i32 %129, 64
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %124, %117, %110, %103, %96
  %132 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 1000000
  %143 = load i32, i32* %17, align 4
  %144 = sdiv i32 %143, 2
  %145 = add nsw i32 %142, %144
  %146 = load i32, i32* %17, align 4
  %147 = sdiv i32 %145, %146
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %150, 2
  %152 = add nsw i32 %148, %151
  %153 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sdiv i32 %152, %154
  store i32 %155, i32* %11, align 4
  br label %165

156:                                              ; preds = %135, %131
  %157 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %158, 1000000
  %160 = load i32, i32* %17, align 4
  %161 = sdiv i32 %160, 2
  %162 = add nsw i32 %159, %161
  %163 = load i32, i32* %17, align 4
  %164 = sdiv i32 %162, %163
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %156, %139
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @intlog2(i32 %167)
  %169 = ashr i32 %168, 24
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = shl i32 1, %170
  %172 = mul i32 %171, 1000
  %173 = load i32, i32* %11, align 4
  %174 = sdiv i32 %173, 2
  %175 = add i32 %172, %174
  %176 = load i32, i32* %11, align 4
  %177 = udiv i32 %175, %176
  %178 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %179 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %181 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %180, i32 0, i32 3
  %182 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT2_LBER_MES, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @cxd2880_tnrdmd_set_cfg(i32* %181, i32 %182, i32 %183)
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @intlog2(i32 %185)
  %187 = ashr i32 %186, 24
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = shl i32 1, %188
  %190 = mul i32 %189, 1000
  %191 = load i32, i32* %12, align 4
  %192 = sdiv i32 %191, 2
  %193 = add i32 %190, %192
  %194 = load i32, i32* %12, align 4
  %195 = udiv i32 %193, %194
  %196 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %197 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %199 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %198, i32 0, i32 3
  %200 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT2_BBER_MES, align 4
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @cxd2880_tnrdmd_set_cfg(i32* %199, i32 %200, i32 %201)
  %203 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %204 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %203, i32 0, i32 3
  %205 = load i32, i32* @CXD2880_DVBT2_PLP_DATA, align 4
  %206 = call i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(i32* %204, i32 %205, %struct.cxd2880_dvbt2_bbheader* %9)
  store i32 %206, i32* %4, align 4
  %207 = load i32, i32* %4, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %165
  %210 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %297

211:                                              ; preds = %165
  %212 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %9, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @CXD2880_DVBT2_PLP_MODE_NM, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %245

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %9, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %11, align 4
  %222 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @cxd2880_set_ber_per_period_t2.kbch_tbl, i64 0, i64 %223
  %225 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds [8 x i32], [8 x i32]* %224, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %221, %228
  %230 = add nsw i32 %229, 752
  %231 = sdiv i32 %230, 1504
  store i32 %231, i32* %13, align 4
  br label %244

232:                                              ; preds = %216
  %233 = load i32, i32* %11, align 4
  %234 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @cxd2880_set_ber_per_period_t2.kbch_tbl, i64 0, i64 %235
  %237 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %236, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %233, %240
  %242 = add nsw i32 %241, 764
  %243 = sdiv i32 %242, 1528
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %232, %220
  br label %265

245:                                              ; preds = %211
  %246 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %9, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @CXD2880_DVBT2_PLP_MODE_HEM, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %245
  %251 = load i32, i32* %11, align 4
  %252 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @cxd2880_set_ber_per_period_t2.kbch_tbl, i64 0, i64 %253
  %255 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %8, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %254, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %251, %258
  %260 = add nsw i32 %259, 748
  %261 = sdiv i32 %260, 1496
  store i32 %261, i32* %13, align 4
  br label %264

262:                                              ; preds = %245
  %263 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %297

264:                                              ; preds = %250
  br label %265

265:                                              ; preds = %264, %244
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @intlog2(i32 %266)
  %268 = ashr i32 %267, 24
  store i32 %268, i32* %14, align 4
  %269 = load i32, i32* %14, align 4
  %270 = shl i32 1, %269
  %271 = mul i32 %270, 1000
  %272 = load i32, i32* %13, align 4
  %273 = sdiv i32 %272, 2
  %274 = add i32 %271, %273
  %275 = load i32, i32* %13, align 4
  %276 = udiv i32 %274, %275
  %277 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %278 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  %279 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %280 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %279, i32 0, i32 3
  %281 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT2_PER_MES, align 4
  %282 = load i32, i32* %14, align 4
  %283 = call i32 @cxd2880_tnrdmd_set_cfg(i32* %280, i32 %281, i32 %282)
  store i32 0, i32* %2, align 4
  br label %304

284:                                              ; preds = %54, %46, %37
  %285 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %286 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %285, i32 0, i32 0
  store i32 1000, i32* %286, align 4
  %287 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %288 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %287, i32 0, i32 3
  %289 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT2_LBER_MES, align 4
  %290 = call i32 @cxd2880_tnrdmd_set_cfg(i32* %288, i32 %289, i32 0)
  %291 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %292 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %291, i32 0, i32 1
  store i32 1000, i32* %292, align 4
  %293 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %294 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %293, i32 0, i32 3
  %295 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT2_BBER_MES, align 4
  %296 = call i32 @cxd2880_tnrdmd_set_cfg(i32* %294, i32 %295, i32 0)
  br label %297

297:                                              ; preds = %284, %262, %209
  %298 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %299 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %298, i32 0, i32 2
  store i32 1000, i32* %299, align 4
  %300 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %5, align 8
  %301 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %300, i32 0, i32 3
  %302 = load i32, i32* @CXD2880_TNRDMD_CFG_DVBT2_PER_MES, align 4
  %303 = call i32 @cxd2880_tnrdmd_set_cfg(i32* %301, i32 %302, i32 8)
  store i32 0, i32* %2, align 4
  br label %304

304:                                              ; preds = %297, %265, %20
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(i32*, %struct.cxd2880_dvbt2_l1pre*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(i32*, i32, %struct.cxd2880_dvbt2_plp*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(i32*, %struct.cxd2880_dvbt2_l1post*) #1

declare dso_local i32 @intlog2(i32) #1

declare dso_local i32 @cxd2880_tnrdmd_set_cfg(i32*, i32, i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(i32*, i32, %struct.cxd2880_dvbt2_bbheader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
