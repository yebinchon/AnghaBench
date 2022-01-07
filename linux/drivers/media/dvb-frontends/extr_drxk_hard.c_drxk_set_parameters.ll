; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_29__, %struct.drxk_state*, %struct.dtv_frontend_properties }
%struct.TYPE_29__ = type { %struct.TYPE_28__, i32 (%struct.dvb_frontend.2*, i32)* }
%struct.TYPE_28__ = type { i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.drxk_state = type { i64, i32, i32, i32, %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_35__, %struct.TYPE_33__, %struct.TYPE_31__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i8* }
%struct.TYPE_35__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i8* }
%struct.TYPE_33__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DRXK_NO_DEV = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DRXK_UNINITIALIZED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Error: get_if_frequency() not defined at tuner. Can't work without it!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OM_QAM_ITU_C = common dso_local global i32 0, align 4
@OM_QAM_ITU_A = common dso_local global i32 0, align 4
@OM_DVBT = common dso_local global i32 0, align 4
@FE_SCALE_RELATIVE = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @drxk_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxk_set_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drxk_state*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %4, align 8
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1
  %16 = load %struct.drxk_state*, %struct.drxk_state** %15, align 8
  store %struct.drxk_state* %16, %struct.drxk_state** %7, align 8
  %17 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %19 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DRXK_NO_DEV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %219

26:                                               ; preds = %1
  %27 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %28 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DRXK_UNINITIALIZED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %219

35:                                               ; preds = %26
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %39, align 8
  %41 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %219

46:                                               ; preds = %35
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  %50 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 1
  %56 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %55, align 8
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %58 = bitcast %struct.dvb_frontend* %57 to %struct.dvb_frontend.2*
  %59 = call i32 %56(%struct.dvb_frontend.2* %58, i32 1)
  br label %60

60:                                               ; preds = %52, %46
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %64, align 8
  %66 = icmp ne i32 (%struct.dvb_frontend.1*)* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 1
  %72 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %71, align 8
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %74 = bitcast %struct.dvb_frontend* %73 to %struct.dvb_frontend.1*
  %75 = call i32 %72(%struct.dvb_frontend.1* %74)
  br label %76

76:                                               ; preds = %67, %60
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 1
  %80 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %85, align 8
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %88 = bitcast %struct.dvb_frontend* %87 to %struct.dvb_frontend.2*
  %89 = call i32 %86(%struct.dvb_frontend.2* %88, i32 0)
  br label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %92 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %6, align 4
  %95 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %96 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %95, i32 0, i32 4
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %98 = bitcast %struct.dtv_frontend_properties* %96 to i8*
  %99 = bitcast %struct.dtv_frontend_properties* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 72, i1 false)
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %151

103:                                              ; preds = %90
  %104 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %105 = call i32 @shut_down(%struct.drxk_state* %104)
  %106 = load i32, i32* %5, align 4
  switch i32 %106, label %147 [
    i32 130, label %107
    i32 129, label %107
    i32 128, label %135
  ]

107:                                              ; preds = %103, %103
  %108 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %109 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %219

115:                                              ; preds = %107
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 129
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %121 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %123 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %128 = load i32, i32* @OM_QAM_ITU_C, align 4
  %129 = call i32 @setoperation_mode(%struct.drxk_state* %127, i32 %128)
  br label %134

130:                                              ; preds = %115
  %131 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %132 = load i32, i32* @OM_QAM_ITU_A, align 4
  %133 = call i32 @setoperation_mode(%struct.drxk_state* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %126
  br label %150

135:                                              ; preds = %103
  %136 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %137 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %219

143:                                              ; preds = %135
  %144 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %145 = load i32, i32* @OM_DVBT, align 4
  %146 = call i32 @setoperation_mode(%struct.drxk_state* %144, i32 %145)
  br label %150

147:                                              ; preds = %103
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %219

150:                                              ; preds = %143, %134
  br label %151

151:                                              ; preds = %150, %90
  %152 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %153 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %155, align 8
  %157 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %158 = bitcast %struct.dvb_frontend* %157 to %struct.dvb_frontend.0*
  %159 = call i32 %156(%struct.dvb_frontend.0* %158, i32* %8)
  %160 = load %struct.drxk_state*, %struct.drxk_state** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @start(%struct.drxk_state* %160, i32 0, i32 %161)
  %163 = load i32, i32* @FE_SCALE_RELATIVE, align 4
  %164 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %165 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %164, i32 0, i32 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 0
  store i32 %163, i32* %169, align 4
  %170 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %171 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %172 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 0
  store i8* %170, i8** %176, align 8
  %177 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %178 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %179 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 0
  store i8* %177, i8** %183, align 8
  %184 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %185 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %186 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 0
  store i8* %184, i8** %190, align 8
  %191 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %192 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %193 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  store i8* %191, i8** %197, align 8
  %198 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %199 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %200 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  store i8* %198, i8** %204, align 8
  %205 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %206 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %207 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  store i8* %205, i8** %211, align 8
  %212 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %213 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %214 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  store i8* %212, i8** %218, align 8
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %151, %147, %140, %112, %42, %32, %23
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shut_down(%struct.drxk_state*) #1

declare dso_local i32 @setoperation_mode(%struct.drxk_state*, i32) #1

declare dso_local i32 @start(%struct.drxk_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
