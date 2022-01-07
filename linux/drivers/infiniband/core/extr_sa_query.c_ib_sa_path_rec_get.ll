; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_path_rec_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_path_rec_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.sa_path_rec = type { i64, void (i32, %struct.sa_path_rec*, i8*)*, %struct.sa_path_rec*, %struct.ib_sa_query, i8* }
%struct.ib_sa_query = type { i32, %struct.ib_sa_client*, %struct.TYPE_6__*, i32, i32*, %struct.ib_sa_port* }
%struct.TYPE_6__ = type { %struct.sa_path_rec**, %struct.ib_sa_mad* }
%struct.ib_sa_mad = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_sa_port = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.ib_sa_path_query = type { i64, void (i32, %struct.sa_path_rec*, i8*)*, %struct.ib_sa_path_query*, %struct.ib_sa_query, i8* }
%struct.ib_sa_device = type { i64, %struct.ib_sa_port* }

@sa_client = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_IB = common dso_local global i64 0, align 8
@SA_PATH_REC_TYPE_OPA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PR_OPA_SUPPORTED = common dso_local global i32 0, align 4
@IB_SA_QUERY_OPA = common dso_local global i32 0, align 4
@ib_sa_path_rec_callback = common dso_local global i32* null, align 8
@ib_sa_path_rec_release = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_SA_ATTR_PATH_REC = common dso_local global i32 0, align 4
@opa_path_rec_table = common dso_local global i32 0, align 4
@path_rec_table = common dso_local global i32 0, align 4
@IB_SA_ENABLE_LOCAL_SERVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_sa_path_rec_get(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2, %struct.sa_path_rec* %3, i32 %4, i64 %5, i32 %6, void (i32, %struct.sa_path_rec*, i8*)* %7, i8* %8, %struct.ib_sa_query** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_sa_client*, align 8
  %13 = alloca %struct.ib_device*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sa_path_rec*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca void (i32, %struct.sa_path_rec*, i8*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ib_sa_query**, align 8
  %22 = alloca %struct.ib_sa_path_query*, align 8
  %23 = alloca %struct.ib_sa_device*, align 8
  %24 = alloca %struct.ib_sa_port*, align 8
  %25 = alloca %struct.ib_mad_agent*, align 8
  %26 = alloca %struct.ib_sa_mad*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %12, align 8
  store %struct.ib_device* %1, %struct.ib_device** %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.sa_path_rec* %3, %struct.sa_path_rec** %15, align 8
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store void (i32, %struct.sa_path_rec*, i8*)* %7, void (i32, %struct.sa_path_rec*, i8*)** %19, align 8
  store i8* %8, i8** %20, align 8
  store %struct.ib_sa_query** %9, %struct.ib_sa_query*** %21, align 8
  %29 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %30 = call %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device* %29, i32* @sa_client)
  store %struct.ib_sa_device* %30, %struct.ib_sa_device** %23, align 8
  %31 = load %struct.ib_sa_device*, %struct.ib_sa_device** %23, align 8
  %32 = icmp ne %struct.ib_sa_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %10
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %291

36:                                               ; preds = %10
  %37 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %38 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SA_PATH_REC_TYPE_IB, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %44 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %291

51:                                               ; preds = %42, %36
  %52 = load %struct.ib_sa_device*, %struct.ib_sa_device** %23, align 8
  %53 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %52, i32 0, i32 1
  %54 = load %struct.ib_sa_port*, %struct.ib_sa_port** %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load %struct.ib_sa_device*, %struct.ib_sa_device** %23, align 8
  %57 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  %60 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %54, i64 %59
  store %struct.ib_sa_port* %60, %struct.ib_sa_port** %24, align 8
  %61 = load %struct.ib_sa_port*, %struct.ib_sa_port** %24, align 8
  %62 = getelementptr inbounds %struct.ib_sa_port, %struct.ib_sa_port* %61, i32 0, i32 0
  %63 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %62, align 8
  store %struct.ib_mad_agent* %63, %struct.ib_mad_agent** %25, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call %struct.sa_path_rec* @kzalloc(i32 80, i32 %64)
  %66 = bitcast %struct.sa_path_rec* %65 to %struct.ib_sa_path_query*
  store %struct.ib_sa_path_query* %66, %struct.ib_sa_path_query** %22, align 8
  %67 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %68 = icmp ne %struct.ib_sa_path_query* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %51
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %291

72:                                               ; preds = %51
  %73 = load %struct.ib_sa_port*, %struct.ib_sa_port** %24, align 8
  %74 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %75 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %75, i32 0, i32 5
  store %struct.ib_sa_port* %73, %struct.ib_sa_port** %76, align 8
  %77 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %78 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %72
  %83 = load %struct.ib_sa_client*, %struct.ib_sa_client** %12, align 8
  %84 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %87 = call i32 @opa_pr_query_possible(%struct.ib_sa_client* %83, %struct.ib_device* %84, i64 %85, %struct.sa_path_rec* %86)
  store i32 %87, i32* %27, align 4
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* @PR_NOT_SUPPORTED, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %28, align 4
  br label %286

94:                                               ; preds = %82
  %95 = load i32, i32* %27, align 4
  %96 = load i32, i32* @PR_OPA_SUPPORTED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* @IB_SA_QUERY_OPA, align 4
  %100 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %101 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 8
  br label %119

105:                                              ; preds = %94
  %106 = load i32, i32* %18, align 4
  %107 = call %struct.sa_path_rec* @kmalloc(i32 80, i32 %106)
  %108 = bitcast %struct.sa_path_rec* %107 to %struct.ib_sa_path_query*
  %109 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %110 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %109, i32 0, i32 2
  store %struct.ib_sa_path_query* %108, %struct.ib_sa_path_query** %110, align 8
  %111 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %112 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %111, i32 0, i32 2
  %113 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %112, align 8
  %114 = icmp ne %struct.ib_sa_path_query* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %105
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %28, align 4
  br label %286

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %98
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %72
  %122 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %123 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %122, i32 0, i32 3
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @alloc_mad(%struct.ib_sa_query* %123, i32 %124)
  store i32 %125, i32* %28, align 4
  %126 = load i32, i32* %28, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %280

129:                                              ; preds = %121
  %130 = load %struct.ib_sa_client*, %struct.ib_sa_client** %12, align 8
  %131 = call i32 @ib_sa_client_get(%struct.ib_sa_client* %130)
  %132 = load %struct.ib_sa_client*, %struct.ib_sa_client** %12, align 8
  %133 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %134 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %134, i32 0, i32 1
  store %struct.ib_sa_client* %132, %struct.ib_sa_client** %135, align 8
  %136 = load void (i32, %struct.sa_path_rec*, i8*)*, void (i32, %struct.sa_path_rec*, i8*)** %19, align 8
  %137 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %138 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %137, i32 0, i32 1
  store void (i32, %struct.sa_path_rec*, i8*)* %136, void (i32, %struct.sa_path_rec*, i8*)** %138, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %141 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %140, i32 0, i32 4
  store i8* %139, i8** %141, align 8
  %142 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %143 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %146, align 8
  store %struct.ib_sa_mad* %147, %struct.ib_sa_mad** %26, align 8
  %148 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %149 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %148, i32 0, i32 3
  %150 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %25, align 8
  %151 = call i32 @init_mad(%struct.ib_sa_query* %149, %struct.ib_mad_agent* %150)
  %152 = load void (i32, %struct.sa_path_rec*, i8*)*, void (i32, %struct.sa_path_rec*, i8*)** %19, align 8
  %153 = icmp ne void (i32, %struct.sa_path_rec*, i8*)* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %129
  %155 = load i32*, i32** @ib_sa_path_rec_callback, align 8
  br label %157

156:                                              ; preds = %129
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32* [ %155, %154 ], [ null, %156 ]
  %159 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %160 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %160, i32 0, i32 4
  store i32* %158, i32** %161, align 8
  %162 = load i32, i32* @ib_sa_path_rec_release, align 4
  %163 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %164 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %167 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %168 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* @IB_SA_ATTR_PATH_REC, align 4
  %171 = call i32 @cpu_to_be16(i32 %170)
  %172 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %173 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %177 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  %179 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %180 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @IB_SA_QUERY_OPA, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %157
  %187 = load i32, i32* @opa_path_rec_table, align 4
  %188 = load i32, i32* @opa_path_rec_table, align 4
  %189 = call i32 @ARRAY_SIZE(i32 %188)
  %190 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %191 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %192 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ib_pack(i32 %187, i32 %189, %struct.sa_path_rec* %190, i32 %193)
  br label %228

195:                                              ; preds = %157
  %196 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %197 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %196, i32 0, i32 2
  %198 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %197, align 8
  %199 = icmp ne %struct.ib_sa_path_query* %198, null
  br i1 %199, label %200, label %218

200:                                              ; preds = %195
  %201 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %202 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %201, i32 0, i32 2
  %203 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %202, align 8
  %204 = bitcast %struct.ib_sa_path_query* %203 to %struct.sa_path_rec*
  %205 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %206 = call i32 @sa_convert_path_opa_to_ib(%struct.sa_path_rec* %204, %struct.sa_path_rec* %205)
  %207 = load i32, i32* @path_rec_table, align 4
  %208 = load i32, i32* @path_rec_table, align 4
  %209 = call i32 @ARRAY_SIZE(i32 %208)
  %210 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %211 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %210, i32 0, i32 2
  %212 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %211, align 8
  %213 = bitcast %struct.ib_sa_path_query* %212 to %struct.sa_path_rec*
  %214 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %215 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ib_pack(i32 %207, i32 %209, %struct.sa_path_rec* %213, i32 %216)
  br label %227

218:                                              ; preds = %195
  %219 = load i32, i32* @path_rec_table, align 4
  %220 = load i32, i32* @path_rec_table, align 4
  %221 = call i32 @ARRAY_SIZE(i32 %220)
  %222 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %223 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %26, align 8
  %224 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ib_pack(i32 %219, i32 %221, %struct.sa_path_rec* %222, i32 %225)
  br label %227

227:                                              ; preds = %218, %200
  br label %228

228:                                              ; preds = %227, %186
  %229 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %230 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %229, i32 0, i32 3
  %231 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %21, align 8
  store %struct.ib_sa_query* %230, %struct.ib_sa_query** %231, align 8
  %232 = load i32, i32* @IB_SA_ENABLE_LOCAL_SERVICE, align 4
  %233 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %234 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %232
  store i32 %237, i32* %235, align 8
  %238 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %239 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %238, i32 0, i32 2
  %240 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %239, align 8
  %241 = icmp ne %struct.ib_sa_path_query* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %228
  %243 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %244 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %243, i32 0, i32 2
  %245 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %244, align 8
  %246 = bitcast %struct.ib_sa_path_query* %245 to i8*
  br label %250

247:                                              ; preds = %228
  %248 = load %struct.sa_path_rec*, %struct.sa_path_rec** %15, align 8
  %249 = bitcast %struct.sa_path_rec* %248 to i8*
  br label %250

250:                                              ; preds = %247, %242
  %251 = phi i8* [ %246, %242 ], [ %249, %247 ]
  %252 = bitcast i8* %251 to %struct.sa_path_rec*
  %253 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %254 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %254, i32 0, i32 2
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load %struct.sa_path_rec**, %struct.sa_path_rec*** %257, align 8
  %259 = getelementptr inbounds %struct.sa_path_rec*, %struct.sa_path_rec** %258, i64 1
  store %struct.sa_path_rec* %252, %struct.sa_path_rec** %259, align 8
  %260 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %261 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %260, i32 0, i32 3
  %262 = load i64, i64* %17, align 8
  %263 = load i32, i32* %18, align 4
  %264 = call i32 @send_mad(%struct.ib_sa_query* %261, i64 %262, i32 %263)
  store i32 %264, i32* %28, align 4
  %265 = load i32, i32* %28, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %250
  br label %270

268:                                              ; preds = %250
  %269 = load i32, i32* %28, align 4
  store i32 %269, i32* %11, align 4
  br label %291

270:                                              ; preds = %267
  %271 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %21, align 8
  store %struct.ib_sa_query* null, %struct.ib_sa_query** %271, align 8
  %272 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %273 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %273, i32 0, i32 1
  %275 = load %struct.ib_sa_client*, %struct.ib_sa_client** %274, align 8
  %276 = call i32 @ib_sa_client_put(%struct.ib_sa_client* %275)
  %277 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %278 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %277, i32 0, i32 3
  %279 = call i32 @free_mad(%struct.ib_sa_query* %278)
  br label %280

280:                                              ; preds = %270, %128
  %281 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %282 = getelementptr inbounds %struct.ib_sa_path_query, %struct.ib_sa_path_query* %281, i32 0, i32 2
  %283 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %282, align 8
  %284 = bitcast %struct.ib_sa_path_query* %283 to %struct.sa_path_rec*
  %285 = call i32 @kfree(%struct.sa_path_rec* %284)
  br label %286

286:                                              ; preds = %280, %115, %91
  %287 = load %struct.ib_sa_path_query*, %struct.ib_sa_path_query** %22, align 8
  %288 = bitcast %struct.ib_sa_path_query* %287 to %struct.sa_path_rec*
  %289 = call i32 @kfree(%struct.sa_path_rec* %288)
  %290 = load i32, i32* %28, align 4
  store i32 %290, i32* %11, align 4
  br label %291

291:                                              ; preds = %286, %268, %69, %48, %33
  %292 = load i32, i32* %11, align 4
  ret i32 %292
}

declare dso_local %struct.ib_sa_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local %struct.sa_path_rec* @kzalloc(i32, i32) #1

declare dso_local i32 @opa_pr_query_possible(%struct.ib_sa_client*, %struct.ib_device*, i64, %struct.sa_path_rec*) #1

declare dso_local %struct.sa_path_rec* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_mad(%struct.ib_sa_query*, i32) #1

declare dso_local i32 @ib_sa_client_get(%struct.ib_sa_client*) #1

declare dso_local i32 @init_mad(%struct.ib_sa_query*, %struct.ib_mad_agent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_pack(i32, i32, %struct.sa_path_rec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sa_convert_path_opa_to_ib(%struct.sa_path_rec*, %struct.sa_path_rec*) #1

declare dso_local i32 @send_mad(%struct.ib_sa_query*, i64, i32) #1

declare dso_local i32 @ib_sa_client_put(%struct.ib_sa_client*) #1

declare dso_local i32 @free_mad(%struct.ib_sa_query*) #1

declare dso_local i32 @kfree(%struct.sa_path_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
