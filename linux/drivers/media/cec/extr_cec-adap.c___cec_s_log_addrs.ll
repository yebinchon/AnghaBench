; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c___cec_s_log_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c___cec_s_log_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32, i64, %struct.cec_log_addrs, %struct.TYPE_2__ }
%struct.cec_log_addrs = type { i32, i8*, i32, i64, i32, i32*, i32*, i32**, i32, i64*, i8** }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i8* null, align 8
@CEC_VENDOR_ID_NONE = common dso_local global i8* null, align 8
@CEC_OP_CEC_VERSION_2_0 = common dso_local global i64 0, align 8
@CEC_LOG_ADDRS_FL_CDC_ONLY = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_TYPE_UNREGISTERED = common dso_local global i32 0, align 4
@CEC_OP_PRIM_DEVTYPE_SWITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"num_log_addrs > %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid vendor ID\0A\00", align 1
@CEC_OP_CEC_VERSION_1_4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid CEC version\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"num_log_addrs > 1 can't be combined with unregistered LA\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"duplicate logical address type\0A\00", align 1
@CEC_LOG_ADDR_TYPE_RECORD = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_TYPE_PLAYBACK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"invalid record + playback combination\0A\00", align 1
@CEC_OP_PRIM_DEVTYPE_PROCESSOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"unknown primary device type\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid primary device type\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"unknown logical address type\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"malformed features\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"CEC 2.0 allows no more than 2 logical addresses\0A\00", align 1
@CEC_LOG_ADDR_TYPE_AUDIOSYSTEM = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_TYPE_TV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [48 x i8] c"two LAs is only allowed for audiosystem and TV\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"an audiosystem/TV can only be combined with record or playback\0A\00", align 1
@CEC_PHYS_ADDR_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cec_s_log_addrs(%struct.cec_adapter* %0, %struct.cec_log_addrs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca %struct.cec_log_addrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store %struct.cec_log_addrs* %1, %struct.cec_log_addrs** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %460

22:                                               ; preds = %3
  %23 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %24 = icmp ne %struct.cec_log_addrs* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %27 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %25, %22
  %31 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %32 = call i32 @cec_adap_unconfigure(%struct.cec_adapter* %31)
  %33 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %49, %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i8*, i8** @CEC_LOG_ADDR_INVALID, align 8
  %42 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %43, i32 0, i32 10
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %41, i8** %48, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** @CEC_VENDOR_ID_NONE, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i64, i64* @CEC_OP_CEC_VERSION_2_0, align 8
  %64 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %65, i32 0, i32 3
  store i64 %63, i64* %66, align 8
  store i32 0, i32* %4, align 4
  br label %460

67:                                               ; preds = %25
  %68 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %69 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CEC_LOG_ADDRS_FL_CDC_ONLY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %67
  %75 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %76 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %78 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** @CEC_VENDOR_ID_NONE, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %84 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @CEC_LOG_ADDR_TYPE_UNREGISTERED, align 4
  %86 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %87 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @CEC_OP_PRIM_DEVTYPE_SWITCH, align 4
  %91 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %92 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %96 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %95, i32 0, i32 9
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %100 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %99, i32 0, i32 7
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 0, i32* %104, align 4
  %105 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %106 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %105, i32 0, i32 7
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %74, %67
  %112 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %113 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 7
  store i8 0, i8* %115, align 1
  %116 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %117 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %120 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %118, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %111
  %124 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %125 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %460

130:                                              ; preds = %111
  %131 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %132 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = load i8*, i8** @CEC_VENDOR_ID_NONE, align 8
  %137 = icmp ne i8* %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %130
  %139 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %140 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, -16777216
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %460

148:                                              ; preds = %138, %130
  %149 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %150 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CEC_OP_CEC_VERSION_1_4, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %156 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @CEC_OP_CEC_VERSION_2_0, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %460

164:                                              ; preds = %154, %148
  %165 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %166 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %195

169:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %191, %169
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %173 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %170
  %177 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %178 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @CEC_LOG_ADDR_TYPE_UNREGISTERED, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %176
  %187 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %4, align 4
  br label %460

190:                                              ; preds = %176
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %170

194:                                              ; preds = %170
  br label %195

195:                                              ; preds = %194, %164
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %349, %195
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %199 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %352

202:                                              ; preds = %196
  %203 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %204 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %203, i32 0, i32 7
  %205 = load i32**, i32*** %204, align 8
  %206 = getelementptr inbounds i32*, i32** %205, i64 0
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @ARRAY_SIZE(i32* %207)
  store i32 %208, i32* %10, align 4
  %209 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %210 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %209, i32 0, i32 7
  %211 = load i32**, i32*** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  %215 = load i32*, i32** %214, align 8
  store i32* %215, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %216 = load i8*, i8** @CEC_LOG_ADDR_INVALID, align 8
  %217 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %218 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %217, i32 0, i32 10
  %219 = load i8**, i8*** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  store i8* %216, i8** %222, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %225 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 1, %230
  %232 = and i32 %223, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %202
  %235 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %4, align 4
  br label %460

238:                                              ; preds = %202
  %239 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %240 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %239, i32 0, i32 5
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 1, %245
  %247 = load i32, i32* %8, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @CEC_LOG_ADDR_TYPE_RECORD, align 4
  %251 = shl i32 1, %250
  %252 = and i32 %249, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %238
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @CEC_LOG_ADDR_TYPE_PLAYBACK, align 4
  %257 = shl i32 1, %256
  %258 = and i32 %255, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %254
  %261 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %262 = load i32, i32* @EINVAL, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %4, align 4
  br label %460

264:                                              ; preds = %254, %238
  %265 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %266 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %265, i32 0, i32 6
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @CEC_OP_PRIM_DEVTYPE_PROCESSOR, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %264
  %275 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %276 = load i32, i32* @EINVAL, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %4, align 4
  br label %460

278:                                              ; preds = %264
  %279 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %280 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %279, i32 0, i32 6
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %285, 2
  br i1 %286, label %287, label %291

287:                                              ; preds = %278
  %288 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %4, align 4
  br label %460

291:                                              ; preds = %278
  %292 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %293 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %292, i32 0, i32 5
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @CEC_LOG_ADDR_TYPE_UNREGISTERED, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %291
  %302 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %303 = load i32, i32* @EINVAL, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  br label %460

305:                                              ; preds = %291
  store i32 0, i32* %13, align 4
  br label %306

306:                                              ; preds = %324, %305
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp ult i32 %307, %308
  br i1 %309, label %310, label %327

310:                                              ; preds = %306
  %311 = load i32*, i32** %11, align 8
  %312 = load i32, i32* %13, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, 128
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %310
  %319 = load i32, i32* %12, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  br label %327

322:                                              ; preds = %318
  store i32 1, i32* %12, align 4
  br label %323

323:                                              ; preds = %322, %310
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %13, align 4
  %326 = add i32 %325, 1
  store i32 %326, i32* %13, align 4
  br label %306

327:                                              ; preds = %321, %306
  %328 = load i32, i32* %12, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %10, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %330, %327
  %335 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %336 = load i32, i32* @EINVAL, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %4, align 4
  br label %460

338:                                              ; preds = %330
  %339 = load i32*, i32** %11, align 8
  %340 = load i32, i32* %13, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %10, align 4
  %345 = load i32, i32* %13, align 4
  %346 = sub i32 %344, %345
  %347 = sub i32 %346, 1
  %348 = call i32 @memset(i32* %343, i32 0, i32 %347)
  br label %349

349:                                              ; preds = %338
  %350 = load i32, i32* %9, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %9, align 4
  br label %196

352:                                              ; preds = %196
  %353 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %354 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %353, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @CEC_OP_CEC_VERSION_2_0, align 8
  %357 = icmp sge i64 %355, %356
  br i1 %357, label %358, label %400

358:                                              ; preds = %352
  %359 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %360 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp sgt i32 %361, 2
  br i1 %362, label %363, label %367

363:                                              ; preds = %358
  %364 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %365 = load i32, i32* @EINVAL, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %4, align 4
  br label %460

367:                                              ; preds = %358
  %368 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %369 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %372, label %399

372:                                              ; preds = %367
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* @CEC_LOG_ADDR_TYPE_AUDIOSYSTEM, align 4
  %375 = shl i32 1, %374
  %376 = load i32, i32* @CEC_LOG_ADDR_TYPE_TV, align 4
  %377 = shl i32 1, %376
  %378 = or i32 %375, %377
  %379 = and i32 %373, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %385, label %381

381:                                              ; preds = %372
  %382 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %383 = load i32, i32* @EINVAL, align 4
  %384 = sub nsw i32 0, %383
  store i32 %384, i32* %4, align 4
  br label %460

385:                                              ; preds = %372
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* @CEC_LOG_ADDR_TYPE_PLAYBACK, align 4
  %388 = shl i32 1, %387
  %389 = load i32, i32* @CEC_LOG_ADDR_TYPE_RECORD, align 4
  %390 = shl i32 1, %389
  %391 = or i32 %388, %390
  %392 = and i32 %386, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %385
  %395 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0))
  %396 = load i32, i32* @EINVAL, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %4, align 4
  br label %460

398:                                              ; preds = %385
  br label %399

399:                                              ; preds = %398, %367
  br label %400

400:                                              ; preds = %399, %352
  %401 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %402 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  store i32 %403, i32* %9, align 4
  br label %404

404:                                              ; preds = %435, %400
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %438

408:                                              ; preds = %404
  %409 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %410 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %409, i32 0, i32 6
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %9, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  store i32 0, i32* %414, align 4
  %415 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %416 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %415, i32 0, i32 5
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %9, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  store i32 0, i32* %420, align 4
  %421 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %422 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %421, i32 0, i32 9
  %423 = load i64*, i64** %422, align 8
  %424 = load i32, i32* %9, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i64, i64* %423, i64 %425
  store i64 0, i64* %426, align 8
  %427 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %428 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %427, i32 0, i32 7
  %429 = load i32**, i32*** %428, align 8
  %430 = load i32, i32* %9, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32*, i32** %429, i64 %431
  %433 = load i32*, i32** %432, align 8
  %434 = call i32 @memset(i32* %433, i32 0, i32 8)
  br label %435

435:                                              ; preds = %408
  %436 = load i32, i32* %9, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %9, align 4
  br label %404

438:                                              ; preds = %404
  %439 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %440 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %440, i32 0, i32 8
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %444 = getelementptr inbounds %struct.cec_log_addrs, %struct.cec_log_addrs* %443, i32 0, i32 8
  store i32 %442, i32* %444, align 8
  %445 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %446 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %445, i32 0, i32 2
  %447 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %448 = bitcast %struct.cec_log_addrs* %446 to i8*
  %449 = bitcast %struct.cec_log_addrs* %447 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %448, i8* align 8 %449, i64 88, i1 false)
  %450 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %451 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @CEC_PHYS_ADDR_INVALID, align 8
  %454 = icmp ne i64 %452, %453
  br i1 %454, label %455, label %459

455:                                              ; preds = %438
  %456 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %457 = load i32, i32* %7, align 4
  %458 = call i32 @cec_claim_log_addrs(%struct.cec_adapter* %456, i32 %457)
  br label %459

459:                                              ; preds = %455, %438
  store i32 0, i32* %4, align 4
  br label %460

460:                                              ; preds = %459, %394, %381, %363, %334, %301, %287, %274, %260, %234, %186, %160, %144, %123, %52, %19
  %461 = load i32, i32* %4, align 4
  ret i32 %461
}

declare dso_local i32 @cec_adap_unconfigure(%struct.cec_adapter*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cec_claim_log_addrs(%struct.cec_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
