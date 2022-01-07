; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2880_priv* }
%struct.dtv_frontend_properties = type { i32, i64, i32, i64, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, i8* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i8* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i8* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i8* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i8* }
%struct.cxd2880_priv = type { i32, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_21__, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@CXD2880_DTV_BW_1_7_MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@CXD2880_DTV_BW_5_MHZ = common dso_local global i32 0, align 4
@CXD2880_DTV_BW_6_MHZ = common dso_local global i32 0, align 4
@CXD2880_DTV_BW_7_MHZ = common dso_local global i32 0, align 4
@CXD2880_DTV_BW_8_MHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"sys:%d freq:%d bw:%d\0A\00", align 1
@SYS_DVBT = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT = common dso_local global i32 0, align 4
@CXD2880_DVBT_PROFILE_HP = common dso_local global i32 0, align 4
@SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PROFILE_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid system\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"tune result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2880_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.cxd2880_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load i32, i32* @CXD2880_DTV_BW_1_7_MHZ, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = icmp ne %struct.dvb_frontend* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %233

15:                                               ; preds = %1
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %17, align 8
  store %struct.cxd2880_priv* %18, %struct.cxd2880_priv** %6, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  store %struct.dtv_frontend_properties* %20, %struct.dtv_frontend_properties** %5, align 8
  %21 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  store i8* %21, i8** %27, align 8
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  store i8* %37, i8** %43, align 8
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 1
  store i8* %53, i8** %59, align 8
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 1
  store i8* %69, i8** %75, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 1
  store i8* %85, i8** %91, align 8
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  store i8* %101, i8** %107, align 8
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %130 [
    i32 1712000, label %120
    i32 5000000, label %122
    i32 6000000, label %124
    i32 7000000, label %126
    i32 8000000, label %128
  ]

120:                                              ; preds = %15
  %121 = load i32, i32* @CXD2880_DTV_BW_1_7_MHZ, align 4
  store i32 %121, i32* %7, align 4
  br label %133

122:                                              ; preds = %15
  %123 = load i32, i32* @CXD2880_DTV_BW_5_MHZ, align 4
  store i32 %123, i32* %7, align 4
  br label %133

124:                                              ; preds = %15
  %125 = load i32, i32* @CXD2880_DTV_BW_6_MHZ, align 4
  store i32 %125, i32* %7, align 4
  br label %133

126:                                              ; preds = %15
  %127 = load i32, i32* @CXD2880_DTV_BW_7_MHZ, align 4
  store i32 %127, i32* %7, align 4
  br label %133

128:                                              ; preds = %15
  %129 = load i32, i32* @CXD2880_DTV_BW_8_MHZ, align 4
  store i32 %129, i32* %7, align 4
  br label %133

130:                                              ; preds = %15
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %233

133:                                              ; preds = %128, %126, %124, %122, %120
  %134 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %135 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %142, i32 %143)
  %145 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %146 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @mutex_lock(i32 %147)
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SYS_DVBT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %133
  %155 = load i32, i32* @CXD2880_DTV_SYS_DVBT, align 4
  %156 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %157 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sdiv i32 %161, 1000
  %163 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %164 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %168 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* @CXD2880_DVBT_PROFILE_HP, align 4
  %171 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %172 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 4
  %174 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %175 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %174, i32 0, i32 2
  %176 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %177 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %176, i32 0, i32 3
  %178 = call i32 @cxd2880_dvbt_tune(%struct.TYPE_20__* %175, %struct.TYPE_21__* %177)
  store i32 %178, i32* %4, align 4
  br label %225

179:                                              ; preds = %133
  %180 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %181 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SYS_DVBT2, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %216

185:                                              ; preds = %179
  %186 = load i32, i32* @CXD2880_DTV_SYS_DVBT2, align 4
  %187 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %188 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 8
  %190 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %191 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sdiv i32 %192, 1000
  %194 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %195 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %199 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %202 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %205 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 3
  store i64 %203, i64* %206, align 8
  %207 = load i32, i32* @CXD2880_DVBT2_PROFILE_BASE, align 4
  %208 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %209 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 2
  store i32 %207, i32* %210, align 8
  %211 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %212 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %211, i32 0, i32 2
  %213 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %214 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %213, i32 0, i32 1
  %215 = call i32 @cxd2880_dvbt2_tune(%struct.TYPE_20__* %212, %struct.TYPE_22__* %214)
  store i32 %215, i32* %4, align 4
  br label %224

216:                                              ; preds = %179
  %217 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %218 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %219 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @mutex_unlock(i32 %220)
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %233

224:                                              ; preds = %185
  br label %225

225:                                              ; preds = %224, %154
  %226 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %6, align 8
  %227 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @mutex_unlock(i32 %228)
  %230 = load i32, i32* %4, align 4
  %231 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %4, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %225, %216, %130, %11
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cxd2880_dvbt_tune(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @cxd2880_dvbt2_tune(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
