; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_CDRXD.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_CDRXD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i64, i64, i64, i32, i32, i64, i32*, %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@DRXD_FE_CTRL_MAX = common dso_local global i32 0, align 4
@HI_I2C_DELAY = common dso_local global i32 0, align 4
@HI_I2C_BRIDGE_DELAY = common dso_local global i32 0, align 4
@APPENV_PORTABLE = common dso_local global i32 0, align 4
@APPENV_MOBILE = common dso_local global i32 0, align 4
@IFFILTER_SAW = common dso_local global i32 0, align 4
@AGC_CTRL_AUTO = common dso_local global i8* null, align 8
@AGC_CTRL_USER = common dso_local global i8* null, align 8
@AGC_CTRL_OFF = common dso_local global i8* null, align 8
@IFFILTER_DISCRETE = common dso_local global i32 0, align 4
@DRXD_HiI2cPatch_1 = common dso_local global i32* null, align 8
@DRXD_HiI2cPatch_3 = common dso_local global i32* null, align 8
@CSCD_INIT = common dso_local global i32 0, align 4
@DRXD_UNINITIALIZED = common dso_local global i32 0, align 4
@DRXD_DEF_AG_PWD_CONSUMER = common dso_local global i32 0, align 4
@DRXD_DEF_AG_AGC_SIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32)* @CDRXD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CDRXD(%struct.drxd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.drxd_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 528, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %32 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 820, i32* %11, align 4
  store i32 2200, i32* %12, align 4
  store i32 150, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 820, i32* %20, align 4
  store i32 2200, i32* %21, align 4
  store i32 150, i32* %22, align 4
  %33 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %34 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 4, i32* %25, align 4
  %37 = load i32, i32* @HI_I2C_DELAY, align 4
  store i32 %37, i32* %26, align 4
  %38 = load i32, i32* @HI_I2C_BRIDGE_DELAY, align 4
  store i32 %38, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %39 = load i32, i32* @APPENV_PORTABLE, align 4
  store i32 %39, i32* %29, align 4
  %40 = load i32, i32* @APPENV_MOBILE, align 4
  store i32 %40, i32* %30, align 4
  %41 = load i32, i32* @IFFILTER_SAW, align 4
  store i32 %41, i32* %31, align 4
  %42 = load i8*, i8** @AGC_CTRL_AUTO, align 8
  %43 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %44 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %43, i32 0, i32 24
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 8
  store i8* %42, i8** %45, align 8
  %46 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %47 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %46, i32 0, i32 24
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %50 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %49, i32 0, i32 24
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 140, i32* %51, align 4
  %52 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %53 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %52, i32 0, i32 24
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %56 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %55, i32 0, i32 24
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32 1023, i32* %57, align 4
  %58 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %59 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %58, i32 0, i32 24
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  store i32 904, i32* %60, align 8
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %76

63:                                               ; preds = %2
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i8*, i8** @AGC_CTRL_USER, align 8
  %69 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %70 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %69, i32 0, i32 24
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 8
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %74 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %73, i32 0, i32 24
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %67, %63, %2
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %83
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load i8*, i8** @AGC_CTRL_AUTO, align 8
  %97 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %98 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %97, i32 0, i32 24
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 8
  store i8* %96, i8** %99, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %102 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %101, i32 0, i32 24
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %106 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %105, i32 0, i32 24
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %110 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %109, i32 0, i32 24
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %114 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %113, i32 0, i32 24
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %95, %91, %87, %83, %79, %76
  %117 = load i32, i32* %20, align 4
  %118 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %119 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %118, i32 0, i32 24
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 5
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %123 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %122, i32 0, i32 24
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* %22, align 4
  %126 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %127 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %126, i32 0, i32 24
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 7
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %131 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %130, i32 0, i32 23
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %135 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %134, i32 0, i32 23
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %139 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %138, i32 0, i32 23
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = load i8*, i8** @AGC_CTRL_AUTO, align 8
  %142 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %143 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %142, i32 0, i32 23
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 8
  store i8* %141, i8** %144, align 8
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %160

147:                                              ; preds = %116
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i8*, i8** @AGC_CTRL_USER, align 8
  %153 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %154 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %153, i32 0, i32 23
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 8
  store i8* %152, i8** %155, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %158 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %157, i32 0, i32 23
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 4
  br label %160

160:                                              ; preds = %151, %147, %116
  %161 = load i32, i32* %10, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %200

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %200

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %200

171:                                              ; preds = %167
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @DRXD_FE_CTRL_MAX, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %175
  %180 = load i8*, i8** @AGC_CTRL_AUTO, align 8
  %181 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %182 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %181, i32 0, i32 23
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 8
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %186 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %185, i32 0, i32 23
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %190 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %189, i32 0, i32 23
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 5
  store i32 %188, i32* %191, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %194 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %193, i32 0, i32 23
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 6
  store i32 %192, i32* %195, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %198 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %197, i32 0, i32 23
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 7
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %179, %175, %171, %167, %163, %160
  %201 = load i32, i32* %10, align 4
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i8*, i8** @AGC_CTRL_OFF, align 8
  %205 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %206 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %205, i32 0, i32 23
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 8
  store i8* %204, i8** %207, align 8
  br label %208

208:                                              ; preds = %203, %200
  %209 = load i32, i32* %29, align 4
  %210 = icmp sle i32 %209, 2
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, i32* %29, align 4
  %213 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %214 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i32, i32* %30, align 4
  %217 = icmp sle i32 %216, 2
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32, i32* %30, align 4
  %220 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %221 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %215
  %223 = load i32, i32* %31, align 4
  %224 = load i32, i32* @IFFILTER_DISCRETE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %228 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %227, i32 0, i32 22
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  store i32 0, i32* %229, align 8
  %230 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %231 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %230, i32 0, i32 22
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  store i32 40, i32* %232, align 4
  %233 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %234 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %233, i32 0, i32 22
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  store i32 -40, i32* %235, align 8
  %236 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %237 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %236, i32 0, i32 22
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 3
  store i32 -24, i32* %238, align 4
  br label %252

239:                                              ; preds = %222
  %240 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %241 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %240, i32 0, i32 22
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %244 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %243, i32 0, i32 22
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  %246 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %247 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %246, i32 0, i32 22
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 2
  store i32 -21, i32* %248, align 8
  %249 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %250 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %249, i32 0, i32 22
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  store i32 -24, i32* %251, align 4
  br label %252

252:                                              ; preds = %239, %226
  %253 = load i32, i32* %25, align 4
  %254 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %255 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 8
  %256 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %257 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %256, i32 0, i32 13
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 %259, 1
  %261 = or i32 %260, 1
  %262 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %263 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %28, align 4
  switch i32 %264, label %273 [
    i32 1, label %265
    i32 3, label %269
  ]

265:                                              ; preds = %252
  %266 = load i32*, i32** @DRXD_HiI2cPatch_1, align 8
  %267 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %268 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %267, i32 0, i32 21
  store i32* %266, i32** %268, align 8
  br label %276

269:                                              ; preds = %252
  %270 = load i32*, i32** @DRXD_HiI2cPatch_3, align 8
  %271 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %272 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %271, i32 0, i32 21
  store i32* %270, i32** %272, align 8
  br label %276

273:                                              ; preds = %252
  %274 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %275 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %274, i32 0, i32 21
  store i32* null, i32** %275, align 8
  br label %276

276:                                              ; preds = %273, %269, %265
  %277 = load i32, i32* %4, align 4
  %278 = sdiv i32 %277, 1000
  %279 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %280 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %279, i32 0, i32 4
  store i32 %278, i32* %280, align 8
  %281 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %282 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %281, i32 0, i32 5
  store i32 48000, i32* %282, align 4
  %283 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %284 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %283, i32 0, i32 6
  store i32 48000, i32* %284, align 8
  %285 = load i32, i32* %23, align 4
  %286 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %287 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %286, i32 0, i32 7
  store i32 %285, i32* %287, align 4
  %288 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %289 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %288, i32 0, i32 20
  store i64 0, i64* %289, align 8
  %290 = load i32, i32* @CSCD_INIT, align 4
  %291 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %292 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %291, i32 0, i32 19
  store i32 %290, i32* %292, align 4
  %293 = load i32, i32* @DRXD_UNINITIALIZED, align 4
  %294 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %295 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %294, i32 0, i32 18
  store i32 %293, i32* %295, align 8
  %296 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %297 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %296, i32 0, i32 17
  store i64 0, i64* %297, align 8
  %298 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %299 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %298, i32 0, i32 16
  store i64 0, i64* %299, align 8
  %300 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %301 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %300, i32 0, i32 15
  store i64 0, i64* %301, align 8
  %302 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %303 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %302, i32 0, i32 13
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %307 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %306, i32 0, i32 14
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* %24, align 4
  %309 = icmp ne i32 %308, 1
  %310 = zext i1 %309 to i32
  %311 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %312 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %311, i32 0, i32 8
  store i32 %310, i32* %312, align 8
  %313 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %314 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = sdiv i32 %315, 1000
  %317 = load i32, i32* %26, align 4
  %318 = mul nsw i32 %316, %317
  %319 = sdiv i32 %318, 1000
  %320 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %321 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %320, i32 0, i32 9
  store i32 %319, i32* %321, align 4
  %322 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %323 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %322, i32 0, i32 7
  %324 = load i32, i32* %323, align 4
  %325 = sdiv i32 %324, 1000
  %326 = load i32, i32* %27, align 4
  %327 = mul nsw i32 %325, %326
  %328 = sdiv i32 %327, 1000
  %329 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %330 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %329, i32 0, i32 10
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* @DRXD_DEF_AG_PWD_CONSUMER, align 4
  %332 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %333 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %332, i32 0, i32 12
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* @DRXD_DEF_AG_AGC_SIO, align 4
  %335 = load %struct.drxd_state*, %struct.drxd_state** %3, align 8
  %336 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %335, i32 0, i32 11
  store i32 %334, i32* %336, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
