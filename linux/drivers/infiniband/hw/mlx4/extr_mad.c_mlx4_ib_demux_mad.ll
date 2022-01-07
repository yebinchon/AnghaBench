; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_demux_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_demux_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.ib_grh = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.ib_mad = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_19__*, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_sa_mad = type { i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RoCE grh not present.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"RoCE mgmt class is not CM\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"resolved slave %d from gid %pI6 wire port %d other %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed matching grh\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"slave id: %d is bigger than allowed:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"failed sending to slave %d via tunnel qp (%d)\0A\00", align 1
@IB_SA_WELL_KNOWN_GUID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_RESP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [75 x i8] c"demux QP0. rejecting unsolicited mad for slave %d class 0x%x, method 0x%x\0A\00", align 1
@IB_MGMT_METHOD_GET_RESP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"dropping unsupported ingress mad from class:%d for slave:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*)* @mlx4_ib_demux_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_demux_mad(%struct.ib_device* %0, i32 %1, %struct.ib_wc* %2, %struct.ib_grh* %3, %struct.ib_mad* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca %struct.ib_grh*, align 8
  %11 = alloca %struct.ib_mad*, align 8
  %12 = alloca %struct.mlx4_ib_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %union.ib_gid, align 4
  %19 = alloca %union.ib_gid, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store %struct.ib_grh* %3, %struct.ib_grh** %10, align 8
  store %struct.ib_mad* %4, %struct.ib_mad** %11, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %21 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %20)
  store %struct.mlx4_ib_dev* %21, %struct.mlx4_ib_dev** %12, align 8
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %22, i32 %23)
  %25 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %29

28:                                               ; preds = %5
  store i32 1, i32* %17, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %159

32:                                               ; preds = %29
  %33 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %34 = call i64 @get_gids_from_l3_hdr(%struct.ib_grh* %33, %union.ib_gid* %19, %union.ib_gid* %18)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %367

39:                                               ; preds = %32
  %40 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IB_WC_GRH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %48 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %367

51:                                               ; preds = %39
  %52 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %53 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 132
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %59 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %367

62:                                               ; preds = %51
  %63 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %64 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = bitcast %union.ib_gid* %18 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mlx4_get_slave_from_roce_gid(%struct.TYPE_19__* %65, i32 %66, i32 %68, i32* %15)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %62
  %73 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = call i64 @mlx4_is_mf_bonded(%struct.TYPE_19__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 2, i32 1
  store i32 %82, i32* %14, align 4
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = bitcast %union.ib_gid* %18 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mlx4_get_slave_from_roce_gid(%struct.TYPE_19__* %85, i32 %86, i32 %88, i32* %15)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %96 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %92, %78
  br label %103

103:                                              ; preds = %102, %72, %62
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %108 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @ENOENT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %367

111:                                              ; preds = %103
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %112, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %111
  %121 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %124 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %128)
  %130 = load i32, i32* @ENOENT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %367

132:                                              ; preds = %111
  %133 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %136 = call i64 @mlx4_ib_demux_cm_handler(%struct.ib_device* %133, i32 %134, i32* null, %struct.ib_mad* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %367

139:                                              ; preds = %132
  %140 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %144 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %143, i32 0, i32 1
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %149 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %150 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %151 = call i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev* %140, i32 %141, i32 %142, i32 %147, %struct.ib_wc* %148, %struct.ib_grh* %149, %struct.ib_mad* %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %139
  store i32 0, i32* %6, align 4
  br label %367

159:                                              ; preds = %29
  %160 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %160, i32 0, i32 0
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = call i32 @mlx4_master_func_num(%struct.TYPE_19__* %162)
  store i32 %163, i32* %15, align 4
  %164 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %165 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 128
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %159
  %171 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %172 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  store i32* %173, i32** %16, align 8
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 255
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = load i32*, i32** %16, align 8
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %178, %170
  br label %181

181:                                              ; preds = %180, %159
  %182 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %183 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @IB_WC_GRH, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %234

188:                                              ; preds = %181
  %189 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %190 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @IB_SA_WELL_KNOWN_GUID, align 4
  %195 = call i64 @cpu_to_be64(i32 %194)
  %196 = icmp eq i64 %193, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %188
  %198 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %199 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %204 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = call i32 @atomic64_read(i32* %211)
  %213 = call i64 @cpu_to_be64(i32 %212)
  %214 = icmp eq i64 %202, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %197
  store i32 0, i32* %15, align 4
  br label %233

216:                                              ; preds = %197, %188
  %217 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %220 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @mlx4_ib_find_real_gid(%struct.ib_device* %217, i32 %218, i64 %223)
  store i32 %224, i32* %15, align 4
  %225 = load i32, i32* %15, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %216
  %228 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %229 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %230 = load i32, i32* @ENOENT, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %6, align 4
  br label %367

232:                                              ; preds = %216
  br label %233

233:                                              ; preds = %232, %215
  br label %234

234:                                              ; preds = %233, %181
  %235 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %236 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  switch i32 %238, label %311 [
    i32 128, label %239
    i32 129, label %239
    i32 130, label %284
    i32 132, label %294
    i32 131, label %302
  ]

239:                                              ; preds = %234, %234
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %240, 255
  br i1 %241, label %242, label %283

242:                                              ; preds = %239
  %243 = load i32, i32* %15, align 4
  %244 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %245 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %244, i32 0, i32 0
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %245, align 8
  %247 = call i32 @mlx4_master_func_num(%struct.TYPE_19__* %246)
  %248 = icmp ne i32 %243, %247
  br i1 %248, label %249, label %283

249:                                              ; preds = %242
  %250 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %250, i32 0, i32 0
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %251, align 8
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @mlx4_vf_smi_enabled(%struct.TYPE_19__* %252, i32 %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %249
  %258 = load i32, i32* @EPERM, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %6, align 4
  br label %367

260:                                              ; preds = %249
  %261 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %262 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @IB_MGMT_METHOD_RESP, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %282, label %268

268:                                              ; preds = %260
  %269 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %270 = load i32, i32* %15, align 4
  %271 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %272 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %276 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %269, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 %270, i32 %274, i32 %278)
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %6, align 4
  br label %367

282:                                              ; preds = %260
  br label %283

283:                                              ; preds = %282, %242, %239
  br label %326

284:                                              ; preds = %234
  %285 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %15, align 4
  %288 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %289 = bitcast %struct.ib_mad* %288 to %struct.ib_sa_mad*
  %290 = call i32 @mlx4_ib_demux_sa_handler(%struct.ib_device* %285, i32 %286, i32 %287, %struct.ib_sa_mad* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %284
  store i32 0, i32* %6, align 4
  br label %367

293:                                              ; preds = %284
  br label %326

294:                                              ; preds = %234
  %295 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %298 = call i64 @mlx4_ib_demux_cm_handler(%struct.ib_device* %295, i32 %296, i32* %15, %struct.ib_mad* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %294
  store i32 0, i32* %6, align 4
  br label %367

301:                                              ; preds = %294
  br label %326

302:                                              ; preds = %234
  %303 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %304 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @IB_MGMT_METHOD_GET_RESP, align 4
  %308 = icmp ne i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  store i32 0, i32* %6, align 4
  br label %367

310:                                              ; preds = %302
  br label %326

311:                                              ; preds = %234
  %312 = load i32, i32* %15, align 4
  %313 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %314 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %313, i32 0, i32 0
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %314, align 8
  %316 = call i32 @mlx4_master_func_num(%struct.TYPE_19__* %315)
  %317 = icmp ne i32 %312, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %311
  %319 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %320 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %15, align 4
  %324 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %322, i32 %323)
  store i32 0, i32* %6, align 4
  br label %367

325:                                              ; preds = %311
  br label %326

326:                                              ; preds = %325, %310, %301, %293, %283
  %327 = load i32, i32* %15, align 4
  %328 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %329 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %328, i32 0, i32 0
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = icmp sge i32 %327, %333
  br i1 %334, label %335, label %347

335:                                              ; preds = %326
  %336 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %337 = load i32, i32* %15, align 4
  %338 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %339 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %338, i32 0, i32 0
  %340 = load %struct.TYPE_19__*, %struct.TYPE_19__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 (%struct.ib_device*, i8*, ...) @mlx4_ib_warn(%struct.ib_device* %336, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %337, i32 %343)
  %345 = load i32, i32* @ENOENT, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %6, align 4
  br label %367

347:                                              ; preds = %326
  %348 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %12, align 8
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %8, align 4
  %351 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %352 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %351, i32 0, i32 1
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %357 = load %struct.ib_grh*, %struct.ib_grh** %10, align 8
  %358 = load %struct.ib_mad*, %struct.ib_mad** %11, align 8
  %359 = call i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev* %348, i32 %349, i32 %350, i32 %355, %struct.ib_wc* %356, %struct.ib_grh* %357, %struct.ib_mad* %358)
  store i32 %359, i32* %13, align 4
  %360 = load i32, i32* %13, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %347
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* %13, align 4
  %365 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %363, i32 %364)
  br label %366

366:                                              ; preds = %362, %347
  store i32 0, i32* %6, align 4
  br label %367

367:                                              ; preds = %366, %335, %318, %309, %300, %292, %268, %257, %227, %158, %138, %120, %106, %57, %46, %36
  %368 = load i32, i32* %6, align 4
  ret i32 %368
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i64 @get_gids_from_l3_hdr(%struct.ib_grh*, %union.ib_gid*, %union.ib_gid*) #1

declare dso_local i32 @mlx4_ib_warn(%struct.ib_device*, i8*, ...) #1

declare dso_local i32 @mlx4_get_slave_from_roce_gid(%struct.TYPE_19__*, i32, i32, i32*) #1

declare dso_local i64 @mlx4_is_mf_bonded(%struct.TYPE_19__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @mlx4_ib_demux_cm_handler(%struct.ib_device*, i32, i32*, %struct.ib_mad*) #1

declare dso_local i32 @mlx4_ib_send_to_slave(%struct.mlx4_ib_dev*, i32, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.TYPE_19__*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @mlx4_ib_find_real_gid(%struct.ib_device*, i32, i64) #1

declare dso_local i32 @mlx4_vf_smi_enabled(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @mlx4_ib_demux_sa_handler(%struct.ib_device*, i32, i32, %struct.ib_sa_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
