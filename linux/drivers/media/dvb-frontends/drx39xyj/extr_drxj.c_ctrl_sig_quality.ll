; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_sig_quality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_sig_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.drxj_data*, %struct.i2c_device_addr* }
%struct.drxj_data = type { i32 }
%struct.i2c_device_addr = type { %struct.drx39xxj_state* }
%struct.drx39xxj_state = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_34__, %struct.TYPE_28__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, i8* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_34__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"error getting signal strength %d\0A\00", align 1
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_SCALE_RELATIVE = common dso_local global i8* null, align 8
@DRXJ_DEMOD_LOCK = common dso_local global i32 0, align 4
@DRX_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error %d getting UCB\0A\00", align 1
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"error %d getting pre-ber\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error %d getting post-ber\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"error %d getting MER\0A\00", align 1
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32)* @ctrl_sig_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_sig_quality(%struct.drx_demod_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca %struct.drxj_data*, align 8
  %8 = alloca %struct.drx39xxj_state*, align 8
  %9 = alloca %struct.dtv_frontend_properties*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %19 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %18, i32 0, i32 1
  %20 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %19, align 8
  store %struct.i2c_device_addr* %20, %struct.i2c_device_addr** %6, align 8
  %21 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %22 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %21, i32 0, i32 0
  %23 = load %struct.drxj_data*, %struct.drxj_data** %22, align 8
  store %struct.drxj_data* %23, %struct.drxj_data** %7, align 8
  %24 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %25 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %24, i32 0, i32 0
  %26 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %25, align 8
  store %struct.drx39xxj_state* %26, %struct.drx39xxj_state** %8, align 8
  %27 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %8, align 8
  %28 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  store %struct.dtv_frontend_properties* %29, %struct.dtv_frontend_properties** %9, align 8
  %30 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %31 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  store i64 0, i64* %17, align 8
  %33 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %34 = call i32 @get_sig_strength(%struct.drx_demod_instance* %33, i64* %17)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %2
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  store i8* %40, i8** %46, align 8
  br label %64

47:                                               ; preds = %2
  %48 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  store i8* %48, i8** %54, align 8
  %55 = load i64, i64* %17, align 8
  %56 = mul i64 65535, %55
  %57 = udiv i64 %56, 100
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  store i64 %57, i64* %63, align 8
  br label %64

64:                                               ; preds = %47, %37
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %310 [
    i32 131, label %66
    i32 130, label %301
    i32 129, label %301
    i32 128, label %301
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @DRXJ_DEMOD_LOCK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %124

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @DRX_LOCKED, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %124

74:                                               ; preds = %70
  %75 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  store i8* %75, i8** %81, align 8
  %82 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  store i8* %82, i8** %88, align 8
  %89 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  store i8* %89, i8** %95, align 8
  %96 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  store i8* %96, i8** %102, align 8
  %103 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %104 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  store i8* %103, i8** %109, align 8
  %110 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 1
  store i8* %110, i8** %116, align 8
  %117 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 1
  store i8* %117, i8** %123, align 8
  br label %300

124:                                              ; preds = %70, %66
  %125 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %126 = call i32 @get_vsb_post_rs_pck_err(%struct.i2c_device_addr* %125, i32* %14, i32* %15)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 1
  store i8* %132, i8** %138, align 8
  br label %172

139:                                              ; preds = %124
  %140 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 1
  store i8* %140, i8** %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %147
  store i32 %155, i32* %153, align 8
  %156 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  store i8* %156, i8** %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %165 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, %163
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %139, %129
  %173 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %174 = call i32 @get_vs_bpre_viterbi_ber(%struct.i2c_device_addr* %173, i32* %12, i32* %13)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  %180 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  store i8* %180, i8** %186, align 8
  br label %220

187:                                              ; preds = %172
  %188 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %189 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %190 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  store i8* %188, i8** %194, align 8
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %197 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %195
  store i32 %203, i32* %201, align 8
  %204 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %205 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %206 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 1
  store i8* %204, i8** %210, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, %211
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %187, %177
  %221 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %222 = call i32 @get_vs_bpost_viterbi_ber(%struct.i2c_device_addr* %221, i32* %12, i32* %13)
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %220
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %226)
  %228 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %229 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %230 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 1
  store i8* %228, i8** %234, align 8
  br label %268

235:                                              ; preds = %220
  %236 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %237 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %238 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 1
  store i8* %236, i8** %242, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %245 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, %243
  store i32 %251, i32* %249, align 8
  %252 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %253 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %254 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 1
  store i8* %252, i8** %258, align 8
  %259 = load i32, i32* %13, align 4
  %260 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %261 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, %259
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %235, %225
  %269 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %270 = call i32 @get_vsbmer(%struct.i2c_device_addr* %269, i64* %16)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %268
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %274)
  %276 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %277 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %278 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_31__*, %struct.TYPE_31__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %280, i64 0
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 1
  store i8* %276, i8** %282, align 8
  br label %299

283:                                              ; preds = %268
  %284 = load i64, i64* %16, align 8
  %285 = mul i64 %284, 100
  %286 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %287 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 0
  store i64 %285, i64* %291, align 8
  %292 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %293 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %294 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_31__*, %struct.TYPE_31__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %297, i32 0, i32 1
  store i8* %292, i8** %298, align 8
  br label %299

299:                                              ; preds = %283, %273
  br label %300

300:                                              ; preds = %299, %74
  br label %313

301:                                              ; preds = %64, %64, %64
  %302 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %303 = call i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance* %302)
  store i32 %303, i32* %11, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load i32, i32* %11, align 4
  %308 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %307)
  br label %314

309:                                              ; preds = %301
  br label %313

310:                                              ; preds = %64
  %311 = load i32, i32* @EIO, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %3, align 4
  br label %316

313:                                              ; preds = %309, %300
  store i32 0, i32* %3, align 4
  br label %316

314:                                              ; preds = %306
  %315 = load i32, i32* %11, align 4
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %314, %313, %310
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @get_sig_strength(%struct.drx_demod_instance*, i64*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @get_vsb_post_rs_pck_err(%struct.i2c_device_addr*, i32*, i32*) #1

declare dso_local i32 @get_vs_bpre_viterbi_ber(%struct.i2c_device_addr*, i32*, i32*) #1

declare dso_local i32 @get_vs_bpost_viterbi_ber(%struct.i2c_device_addr*, i32*, i32*) #1

declare dso_local i32 @get_vsbmer(%struct.i2c_device_addr*, i64*) #1

declare dso_local i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
