; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_set_qp_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_set_qp_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.mlx4_ib_rss = type { i32, i32, i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_ib_create_qp_rss = type { i64, i32, i32 }

@MLX4_IB_RX_HASH_FUNC_TOEPLITZ = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG2_RSS_TOP = common dso_local global i32 0, align 4
@MLX4_EN_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RX Hash function is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_SRC_IPV4 = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_DST_IPV4 = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_SRC_IPV6 = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_DST_IPV6 = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_SRC_PORT_TCP = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_DST_PORT_TCP = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_SRC_PORT_UDP = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_DST_PORT_UDP = common dso_local global i32 0, align 4
@MLX4_IB_RX_HASH_INNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"RX Hash fields_mask has unsupported mask (0x%llx)\0A\00", align 1
@MLX4_RSS_IPV4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"RX Hash fields_mask is not supported - both IPv4 SRC and DST must be set\0A\00", align 1
@MLX4_RSS_IPV6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"RX Hash fields_mask is not supported - both IPv6 SRC and DST must be set\0A\00", align 1
@MLX4_DEV_CAP_FLAG_UDP_RSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"RX Hash fields_mask for UDP is not supported\0A\00", align 1
@MLX4_RSS_UDP_IPV4 = common dso_local global i32 0, align 4
@MLX4_RSS_UDP_IPV6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"RX Hash fields_mask is not supported - UDP must be set with IPv4 or IPv6\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"RX Hash fields_mask is not supported - both UDP SRC and DST must be set\0A\00", align 1
@MLX4_RSS_TCP_IPV4 = common dso_local global i32 0, align 4
@MLX4_RSS_TCP_IPV6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [74 x i8] c"RX Hash fields_mask is not supported - TCP must be set with IPv4 or IPv6\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"RX Hash fields_mask is not supported - both TCP SRC and DST must be set\0A\00", align 1
@MLX4_TUNNEL_OFFLOAD_MODE_VXLAN = common dso_local global i64 0, align 8
@MLX4_RSS_BY_INNER_HEADERS_IPONLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"RSS Hash for inner headers isn't supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_rss*, %struct.ib_qp_init_attr*, %struct.mlx4_ib_create_qp_rss*)* @set_qp_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_qp_rss(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_rss* %1, %struct.ib_qp_init_attr* %2, %struct.mlx4_ib_create_qp_rss* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_rss*, align 8
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.mlx4_ib_create_qp_rss*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store %struct.mlx4_ib_rss* %1, %struct.mlx4_ib_rss** %7, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %8, align 8
  store %struct.mlx4_ib_create_qp_rss* %3, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %10 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %11 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 24
  %25 = or i32 %18, %24
  %26 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX4_IB_RX_HASH_FUNC_TOEPLITZ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %4
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MLX4_DEV_CAP_FLAG2_RSS_TOP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MLX4_EN_RSS_KEY_SIZE, align 4
  %51 = call i32 @memcpy(i32 %46, i32 %49, i32 %50)
  br label %56

52:                                               ; preds = %33, %4
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %351

56:                                               ; preds = %43
  %57 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MLX4_IB_RX_HASH_SRC_IPV4, align 4
  %61 = load i32, i32* @MLX4_IB_RX_HASH_DST_IPV4, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MLX4_IB_RX_HASH_SRC_IPV6, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MLX4_IB_RX_HASH_DST_IPV6, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MLX4_IB_RX_HASH_SRC_PORT_TCP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MLX4_IB_RX_HASH_DST_PORT_TCP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MLX4_IB_RX_HASH_SRC_PORT_UDP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MLX4_IB_RX_HASH_DST_PORT_UDP, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MLX4_IB_RX_HASH_INNER, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %59, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %56
  %81 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %351

87:                                               ; preds = %56
  %88 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %89 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MLX4_IB_RX_HASH_SRC_IPV4, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %96 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MLX4_IB_RX_HASH_DST_IPV4, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @MLX4_RSS_IPV4, align 4
  %103 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %124

105:                                              ; preds = %94, %87
  %106 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MLX4_IB_RX_HASH_SRC_IPV4, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %105
  %113 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MLX4_IB_RX_HASH_DST_IPV4, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112, %105
  %120 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %351

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123, %101
  %125 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %126 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MLX4_IB_RX_HASH_SRC_IPV6, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MLX4_IB_RX_HASH_DST_IPV6, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* @MLX4_RSS_IPV6, align 4
  %140 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %141 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %163

144:                                              ; preds = %131, %124
  %145 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %146 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @MLX4_IB_RX_HASH_SRC_IPV6, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %144
  %152 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %153 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MLX4_IB_RX_HASH_DST_IPV6, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151, %144
  %159 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @EOPNOTSUPP, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %351

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %138
  %164 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %165 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MLX4_IB_RX_HASH_SRC_PORT_UDP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %231

170:                                              ; preds = %163
  %171 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %172 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @MLX4_IB_RX_HASH_DST_PORT_UDP, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %231

177:                                              ; preds = %170
  %178 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @MLX4_DEV_CAP_FLAG_UDP_RSS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %177
  %188 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %189 = load i32, i32* @EOPNOTSUPP, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %5, align 4
  br label %351

191:                                              ; preds = %177
  %192 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %193 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @MLX4_RSS_IPV4, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load i32, i32* @MLX4_RSS_UDP_IPV4, align 4
  %200 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %201 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %198, %191
  %205 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %206 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @MLX4_RSS_IPV6, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i32, i32* @MLX4_RSS_UDP_IPV6, align 4
  %213 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %214 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %211, %204
  %218 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %219 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @MLX4_RSS_IPV6, align 4
  %222 = load i32, i32* @MLX4_RSS_IPV4, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %220, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %217
  %227 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i32, i32* @EOPNOTSUPP, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %5, align 4
  br label %351

230:                                              ; preds = %217
  br label %250

231:                                              ; preds = %170, %163
  %232 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %233 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @MLX4_IB_RX_HASH_SRC_PORT_UDP, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %231
  %239 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @MLX4_IB_RX_HASH_DST_PORT_UDP, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %238, %231
  %246 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0))
  %247 = load i32, i32* @EOPNOTSUPP, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %5, align 4
  br label %351

249:                                              ; preds = %238
  br label %250

250:                                              ; preds = %249, %230
  %251 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %252 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @MLX4_IB_RX_HASH_SRC_PORT_TCP, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %304

257:                                              ; preds = %250
  %258 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %259 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @MLX4_IB_RX_HASH_DST_PORT_TCP, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %304

264:                                              ; preds = %257
  %265 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %266 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @MLX4_RSS_IPV4, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load i32, i32* @MLX4_RSS_TCP_IPV4, align 4
  %273 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %274 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %271, %264
  %278 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %279 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @MLX4_RSS_IPV6, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %277
  %285 = load i32, i32* @MLX4_RSS_TCP_IPV6, align 4
  %286 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %287 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %284, %277
  %291 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %292 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @MLX4_RSS_IPV6, align 4
  %295 = load i32, i32* @MLX4_RSS_IPV4, align 4
  %296 = or i32 %294, %295
  %297 = and i32 %293, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %290
  %300 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0))
  %301 = load i32, i32* @EOPNOTSUPP, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %5, align 4
  br label %351

303:                                              ; preds = %290
  br label %323

304:                                              ; preds = %257, %250
  %305 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %306 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @MLX4_IB_RX_HASH_SRC_PORT_TCP, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %318, label %311

311:                                              ; preds = %304
  %312 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %313 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @MLX4_IB_RX_HASH_DST_PORT_TCP, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %311, %304
  %319 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %320 = load i32, i32* @EOPNOTSUPP, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %5, align 4
  br label %351

322:                                              ; preds = %311
  br label %323

323:                                              ; preds = %322, %303
  %324 = load %struct.mlx4_ib_create_qp_rss*, %struct.mlx4_ib_create_qp_rss** %9, align 8
  %325 = getelementptr inbounds %struct.mlx4_ib_create_qp_rss, %struct.mlx4_ib_create_qp_rss* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @MLX4_IB_RX_HASH_INNER, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %350

330:                                              ; preds = %323
  %331 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %332 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %331, i32 0, i32 0
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @MLX4_TUNNEL_OFFLOAD_MODE_VXLAN, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %330
  %340 = load i32, i32* @MLX4_RSS_BY_INNER_HEADERS_IPONLY, align 4
  %341 = load %struct.mlx4_ib_rss*, %struct.mlx4_ib_rss** %7, align 8
  %342 = getelementptr inbounds %struct.mlx4_ib_rss, %struct.mlx4_ib_rss* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  br label %349

345:                                              ; preds = %330
  %346 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %347 = load i32, i32* @EOPNOTSUPP, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %5, align 4
  br label %351

349:                                              ; preds = %339
  br label %350

350:                                              ; preds = %349, %323
  store i32 0, i32* %5, align 4
  br label %351

351:                                              ; preds = %350, %345, %318, %299, %245, %226, %187, %158, %119, %80, %52
  %352 = load i32, i32* %5, align 4
  ret i32 %352
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
