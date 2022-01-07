; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_ah.c_create_iboe_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_ah.c_create_iboe_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32, i32 }
%struct.rdma_ah_attr = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_ib_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mlx4_ib_ah = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.in6_addr*, i32, i8*, i32, i32*, %struct.in6_addr* }
%struct.in6_addr = type { i32 }
%struct.TYPE_12__ = type { i8* }
%struct.ib_global_route = type { i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_STAT_RATE_OFFSET = common dso_local global i32 0, align 4
@IB_RATE_2_5_GBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ah*, %struct.rdma_ah_attr*)* @create_iboe_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_iboe_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_ah*, align 8
  %8 = alloca %struct.ib_gid_attr*, align 8
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_global_route*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_ah* %0, %struct.ib_ah** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %15 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %16 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %6, align 8
  %19 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %20 = call %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah* %19)
  store %struct.mlx4_ib_ah* %20, %struct.mlx4_ib_ah** %7, align 8
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %22, align 8
  store %struct.mlx4_dev* %23, %struct.mlx4_dev** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 65535, i32* %12, align 4
  %24 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %25 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %24)
  store %struct.ib_global_route* %25, %struct.ib_global_route** %13, align 8
  %26 = load %struct.ib_global_route*, %struct.ib_global_route** %13, align 8
  %27 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(%struct.in6_addr* %11, i32 %29, i32 4)
  %31 = call i64 @rdma_is_multicast_addr(%struct.in6_addr* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %38, align 8
  %40 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %41 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(%struct.in6_addr* %39, i32 %43, i32 %44)
  %46 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @eth_zero_addr(i32* %50)
  %52 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %53 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %54, align 8
  store %struct.ib_gid_attr* %55, %struct.ib_gid_attr** %8, align 8
  %56 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %57 = icmp ne %struct.ib_gid_attr* %56, null
  br i1 %57, label %58, label %85

58:                                               ; preds = %34
  %59 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %60 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %59, i32* %12, i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %3, align 4
  br label %224

71:                                               ; preds = %58
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %73 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  %74 = call i32 @mlx4_ib_gid_index_to_real_index(%struct.mlx4_ib_dev* %72, %struct.ib_gid_attr* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %3, align 4
  br label %224

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  br label %94

85:                                               ; preds = %34
  %86 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %87 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %91 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  br label %94

94:                                               ; preds = %85, %79
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 4096
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %99 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %98)
  %100 = and i32 %99, 7
  %101 = shl i32 %100, 13
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %97, %94
  %105 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  %106 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.TYPE_16__* @to_mpd(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %112 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %111)
  %113 = shl i32 %112, 24
  %114 = or i32 %110, %113
  %115 = call i32 @cpu_to_be32(i32 %114)
  %116 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 6
  store i32 %115, i32* %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i8* @cpu_to_be16(i32 %120)
  %122 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %123 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 5
  store i8* %121, i8** %125, align 8
  %126 = load %struct.ib_global_route*, %struct.ib_global_route** %13, align 8
  %127 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %130 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  store i32 %128, i32* %132, align 8
  %133 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %134 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %179

136:                                              ; preds = %104
  %137 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %138 = call i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr* %137)
  %139 = load i32, i32* @MLX4_STAT_RATE_OFFSET, align 4
  %140 = add nsw i32 %138, %139
  %141 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %142 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %171, %136
  %146 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %147 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IB_RATE_2_5_GBPS, align 4
  %152 = load i32, i32* @MLX4_STAT_RATE_OFFSET, align 4
  %153 = add nsw i32 %151, %152
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %145
  %156 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %157 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 1, %160
  %162 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %163 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %161, %165
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br label %169

169:                                              ; preds = %155, %145
  %170 = phi i1 [ false, %145 ], [ %168, %155 ]
  br i1 %170, label %171, label %178

171:                                              ; preds = %169
  %172 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %173 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %175, align 4
  br label %145

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %104
  %180 = load %struct.ib_global_route*, %struct.ib_global_route** %13, align 8
  %181 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 20
  %184 = load %struct.ib_global_route*, %struct.ib_global_route** %13, align 8
  %185 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %183, %186
  %188 = call i32 @cpu_to_be32(i32 %187)
  %189 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %190 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %188
  store i32 %194, i32* %192, align 8
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %179
  %198 = call i8* @cpu_to_be16(i32 49152)
  %199 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %200 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i8* %198, i8** %202, align 8
  br label %203

203:                                              ; preds = %197, %179
  %204 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 3
  %208 = load %struct.in6_addr*, %struct.in6_addr** %207, align 8
  %209 = load %struct.ib_global_route*, %struct.ib_global_route** %13, align 8
  %210 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @memcpy(%struct.in6_addr* %208, i32 %212, i32 16)
  %214 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %215 = call i32 @rdma_ah_get_sl(%struct.rdma_ah_attr* %214)
  %216 = shl i32 %215, 29
  %217 = call i32 @cpu_to_be32(i32 %216)
  %218 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %219 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %217
  store i32 %223, i32* %221, align 8
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %203, %77, %69
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_ah* @to_mah(%struct.ib_ah*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32, i32) #1

declare dso_local i64 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i32*, i32*) #1

declare dso_local i32 @mlx4_ib_gid_index_to_real_index(%struct.mlx4_ib_dev*, %struct.ib_gid_attr*) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.rdma_ah_attr*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_16__* @to_mpd(i32) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
