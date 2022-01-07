; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_build_mlx_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_build_mlx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_sqp = type { i32, i32*, %struct.TYPE_42__, %struct.TYPE_41__, i32, i32 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, i32, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_50__ }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_35__ = type { i32, i32, i8*, i8* }
%struct.TYPE_34__ = type { i8*, i8* }
%struct.TYPE_33__ = type { i8*, %struct.mlx4_wqe_inline_seg*, i32 }
%struct.mlx4_wqe_inline_seg = type { i32 }
%struct.TYPE_28__ = type { i64, i8*, i8* }
%struct.TYPE_27__ = type { i32, i32, %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg, i32, i8*, i64 }
%struct.TYPE_50__ = type { i32, i32, %struct.TYPE_49__, %struct.TYPE_46__, i32 }
%struct.TYPE_49__ = type { %struct.mlx4_wqe_inline_seg* }
%struct.TYPE_46__ = type { %struct.TYPE_43__, %struct.mlx4_wqe_inline_seg* }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_ud_wr = type { i32, i32, i32, %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i32, i32, i32, %struct.TYPE_29__, %struct.TYPE_37__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_37__ = type { i64 }
%struct.mlx4_ib_dev = type { %struct.TYPE_45__, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32*, i32 }
%struct.mlx4_wqe_mlx_seg = type { i32, i8*, i8* }
%struct.mlx4_wqe_ctrl_seg = type { %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* }
%struct.mlx4_ib_ah = type { %struct.TYPE_32__, %struct.TYPE_48__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i8*, i32*, i32, i32 }
%struct.TYPE_30__ = type { i32, i64, i32, i32, i32*, i32, i8* }
%struct.TYPE_48__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%union.ib_gid = type { i32* }
%struct.in6_addr = type { i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@ROCE_V2_UDP_DPORT = common dso_local global i32 0, align 4
@MLX4_ROCEV2_QP1_SPORT = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@MLX4_WQE_MLX_VL15 = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@MLX4_WQE_MLX_SLR = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IBOE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@MLX4_WQE_CTRL_FORCE_LOOPBACK = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@MLX4_INLINE_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_sqp*, %struct.ib_ud_wr*, i8*, i32*)* @build_mlx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_mlx_header(%struct.mlx4_ib_sqp* %0, %struct.ib_ud_wr* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_sqp*, align 8
  %7 = alloca %struct.ib_ud_wr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.mlx4_ib_dev*, align 8
  %12 = alloca %struct.mlx4_wqe_mlx_seg*, align 8
  %13 = alloca %struct.mlx4_wqe_ctrl_seg*, align 8
  %14 = alloca %struct.mlx4_wqe_inline_seg*, align 8
  %15 = alloca %struct.mlx4_ib_ah*, align 8
  %16 = alloca %union.ib_gid, align 8
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
  %30 = alloca %struct.in6_addr, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.mlx4_ib_sqp* %0, %struct.mlx4_ib_sqp** %6, align 8
  store %struct.ib_ud_wr* %1, %struct.ib_ud_wr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %33 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %35, i32 0, i32 1
  %37 = load %struct.ib_device*, %struct.ib_device** %36, align 8
  store %struct.ib_device* %37, %struct.ib_device** %10, align 8
  %38 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %39 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %38)
  store %struct.mlx4_ib_dev* %39, %struct.mlx4_ib_dev** %11, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to %struct.mlx4_wqe_mlx_seg*
  store %struct.mlx4_wqe_mlx_seg* %41, %struct.mlx4_wqe_mlx_seg** %12, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to %struct.mlx4_wqe_ctrl_seg*
  store %struct.mlx4_wqe_ctrl_seg* %43, %struct.mlx4_wqe_ctrl_seg** %13, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr i8, i8* %44, i64 24
  %46 = bitcast i8* %45 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %46, %struct.mlx4_wqe_inline_seg** %14, align 8
  %47 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %48 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.mlx4_ib_ah* @to_mah(i32 %49)
  store %struct.mlx4_ib_ah* %50, %struct.mlx4_ib_ah** %15, align 8
  store i32 0, i32* %22, align 4
  store i32 65535, i32* %23, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %51

51:                                               ; preds = %72, %4
  %52 = load i32, i32* %21, align 4
  %53 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %54 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %60 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %61, align 8
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %21, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %78, i32 0, i32 1
  %80 = load %struct.ib_device*, %struct.ib_device** %79, align 8
  %81 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %80, i32 %84)
  %86 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %24, align 4
  %89 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %90 = call i32 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah* %89)
  store i32 %90, i32* %26, align 4
  %91 = load i32, i32* %24, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %176

93:                                               ; preds = %75
  %94 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %95 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %94)
  %96 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @mlx4_is_mfunc(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %93
  %101 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %102 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %101)
  %103 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @be32_to_cpu(i32 %109)
  %111 = ashr i32 %110, 24
  %112 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = bitcast %union.ib_gid* %16 to i32**
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = call i32 @mlx4_get_roce_gid_from_slave(i32 %104, i32 %111, i64 %116, i32* %119)
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %100
  %124 = load i32, i32* %22, align 4
  store i32 %124, i32* %5, align 4
  br label %903

125:                                              ; preds = %100
  br label %159

126:                                              ; preds = %93
  %127 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %128 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %129 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %133 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @fill_gid_by_hw_index(%struct.mlx4_ib_dev* %127, i32 %131, i64 %136, %union.ib_gid* %16, i32* %29)
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %22, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %29, align 4
  %142 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %27, align 4
  %145 = load i32, i32* %27, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = bitcast %union.ib_gid* %16 to %struct.in6_addr*
  %149 = bitcast %struct.in6_addr* %148 to %struct.mlx4_wqe_inline_seg*
  %150 = call i64 @ipv6_addr_v4mapped(%struct.mlx4_wqe_inline_seg* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 4, i32* %28, align 4
  br label %154

153:                                              ; preds = %147
  store i32 6, i32* %28, align 4
  br label %154

154:                                              ; preds = %153, %152
  store i32 0, i32* %26, align 4
  br label %155

155:                                              ; preds = %154, %140
  br label %158

156:                                              ; preds = %126
  %157 = load i32, i32* %22, align 4
  store i32 %157, i32* %5, align 4
  br label %903

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %158, %125
  %160 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* @cpu_to_be16(i32 65535)
  %166 = icmp ne i8* %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @be16_to_cpu(i8* %172)
  %174 = and i32 %173, 4095
  store i32 %174, i32* %23, align 4
  store i32 1, i32* %25, align 4
  br label %175

175:                                              ; preds = %167, %159
  br label %176

176:                                              ; preds = %175, %75
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %24, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %26, align 4
  %185 = load i32, i32* %28, align 4
  %186 = load i32, i32* %27, align 4
  %187 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %188 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %187, i32 0, i32 2
  %189 = call i32 @ib_ud_header_init(i32 %177, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 0, %struct.TYPE_42__* %188)
  store i32 %189, i32* %22, align 4
  %190 = load i32, i32* %22, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %176
  %193 = load i32, i32* %22, align 4
  store i32 %193, i32* %5, align 4
  br label %903

194:                                              ; preds = %176
  %195 = load i32, i32* %24, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %229, label %197

197:                                              ; preds = %194
  %198 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %199 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @be32_to_cpu(i32 %202)
  %204 = ashr i32 %203, 28
  %205 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %206 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 8
  %209 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %210 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 6
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %215 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 3
  store i8* %213, i8** %217, align 8
  %218 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %219 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 127
  %224 = call i8* @cpu_to_be16(i32 %223)
  %225 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %226 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %227, i32 0, i32 2
  store i8* %224, i8** %228, align 8
  br label %229

229:                                              ; preds = %197, %194
  %230 = load i32, i32* %26, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %28, align 4
  %234 = icmp eq i32 %233, 6
  br i1 %234, label %235, label %362

235:                                              ; preds = %232, %229
  %236 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %237 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @be32_to_cpu(i32 %240)
  %242 = ashr i32 %241, 20
  %243 = and i32 %242, 255
  %244 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %245 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %245, i32 0, i32 9
  %247 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %246, i32 0, i32 0
  store i32 %243, i32* %247, align 8
  %248 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %249 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @cpu_to_be32(i32 1048575)
  %254 = and i32 %252, %253
  %255 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %256 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %257, i32 0, i32 1
  store i32 %254, i32* %258, align 4
  %259 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %260 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %265 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %266, i32 0, i32 4
  store i32 %263, i32* %267, align 8
  %268 = load i32, i32* %24, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %235
  %271 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %272 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %272, i32 0, i32 9
  %274 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %274, i32 0, i32 1
  %276 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %275, align 8
  %277 = bitcast %union.ib_gid* %16 to i32**
  %278 = load i32*, i32** %277, align 8
  %279 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %276, i32* %278, i32 16)
  br label %349

280:                                              ; preds = %235
  %281 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %282 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %281)
  %283 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i64 @mlx4_is_mfunc(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %336

287:                                              ; preds = %280
  %288 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %289 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %288)
  %290 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_44__*, %struct.TYPE_44__** %291, align 8
  %293 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %294 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %292, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %299, i32 0, i32 1
  %301 = call i32 @atomic64_read(i32* %300)
  %302 = call i32 @cpu_to_be64(i32 %301)
  %303 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %304 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %304, i32 0, i32 9
  %306 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %307, i32 0, i32 1
  store i32 %302, i32* %308, align 4
  %309 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %310 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %309)
  %311 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_44__*, %struct.TYPE_44__** %312, align 8
  %314 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %315 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sub nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %313, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %324 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds i32, i32* %322, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %331 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %331, i32 0, i32 9
  %333 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %334, i32 0, i32 0
  store i32 %329, i32* %335, align 8
  br label %348

336:                                              ; preds = %280
  %337 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %338 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %338, i32 0, i32 9
  %340 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %339, i32 0, i32 3
  %341 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %342 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_47__*, %struct.TYPE_47__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %344, i32 0, i32 0
  %346 = bitcast %struct.TYPE_46__* %340 to i8*
  %347 = bitcast %struct.TYPE_46__* %345 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %346, i8* align 8 %347, i64 16, i1 false)
  br label %348

348:                                              ; preds = %336, %287
  br label %349

349:                                              ; preds = %348, %270
  %350 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %351 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %351, i32 0, i32 9
  %353 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %353, i32 0, i32 0
  %355 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %354, align 8
  %356 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %357 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %358, i32 0, i32 4
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %355, i32* %360, i32 16)
  br label %362

362:                                              ; preds = %349, %232
  %363 = load i32, i32* %28, align 4
  %364 = icmp eq i32 %363, 4
  br i1 %364, label %365, label %423

365:                                              ; preds = %362
  %366 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %367 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @be32_to_cpu(i32 %370)
  %372 = ashr i32 %371, 20
  %373 = and i32 %372, 255
  %374 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %375 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %375, i32 0, i32 8
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 0
  store i32 %373, i32* %377, align 8
  %378 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %379 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %379, i32 0, i32 8
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %380, i32 0, i32 6
  store i64 0, i64* %381, align 8
  %382 = load i32, i32* @IP_DF, align 4
  %383 = call i8* @htons(i32 %382)
  %384 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %385 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %385, i32 0, i32 8
  %387 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %386, i32 0, i32 5
  store i8* %383, i8** %387, align 8
  %388 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %389 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %394 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %394, i32 0, i32 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 4
  store i32 %392, i32* %396, align 8
  %397 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %398 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %398, i32 0, i32 8
  %400 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %399, i32 0, i32 3
  %401 = bitcast %union.ib_gid* %16 to i32**
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 12
  %404 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %400, i32* %403, i32 4)
  %405 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %406 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %406, i32 0, i32 8
  %408 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %407, i32 0, i32 2
  %409 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %410 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 4
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 12
  %415 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %408, i32* %414, i32 4)
  %416 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %417 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %416, i32 0, i32 2
  %418 = call i32 @ib_ud_ip4_csum(%struct.TYPE_42__* %417)
  %419 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %420 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %419, i32 0, i32 2
  %421 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %420, i32 0, i32 8
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %421, i32 0, i32 1
  store i32 %418, i32* %422, align 4
  br label %423

423:                                              ; preds = %365, %362
  %424 = load i32, i32* %27, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %443

426:                                              ; preds = %423
  %427 = load i32, i32* @ROCE_V2_UDP_DPORT, align 4
  %428 = call i8* @htons(i32 %427)
  %429 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %430 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %430, i32 0, i32 7
  %432 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %431, i32 0, i32 2
  store i8* %428, i8** %432, align 8
  %433 = load i32, i32* @MLX4_ROCEV2_QP1_SPORT, align 4
  %434 = call i8* @htons(i32 %433)
  %435 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %436 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %436, i32 0, i32 7
  %438 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %437, i32 0, i32 1
  store i8* %434, i8** %438, align 8
  %439 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %440 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %440, i32 0, i32 7
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %441, i32 0, i32 0
  store i64 0, i64* %442, align 8
  br label %443

443:                                              ; preds = %426, %423
  %444 = load i32, i32* @MLX4_WQE_CTRL_CQ_UPDATE, align 4
  %445 = call i32 @cpu_to_be32(i32 %444)
  %446 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %12, align 8
  %447 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = and i32 %448, %445
  store i32 %449, i32* %447, align 8
  %450 = load i32, i32* %24, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %511, label %452

452:                                              ; preds = %443
  %453 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %454 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %453, i32 0, i32 3
  %455 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %461, label %459

459:                                              ; preds = %452
  %460 = load i32, i32* @MLX4_WQE_MLX_VL15, align 4
  br label %462

461:                                              ; preds = %452
  br label %462

462:                                              ; preds = %461, %459
  %463 = phi i32 [ %460, %459 ], [ 0, %461 ]
  %464 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %465 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %465, i32 0, i32 3
  %467 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %466, i32 0, i32 3
  %468 = load i8*, i8** %467, align 8
  %469 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %470 = icmp eq i8* %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %462
  %472 = load i32, i32* @MLX4_WQE_MLX_SLR, align 4
  br label %474

473:                                              ; preds = %462
  br label %474

474:                                              ; preds = %473, %471
  %475 = phi i32 [ %472, %471 ], [ 0, %473 ]
  %476 = or i32 %463, %475
  %477 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %478 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %478, i32 0, i32 3
  %480 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = shl i32 %481, 8
  %483 = or i32 %476, %482
  %484 = call i32 @cpu_to_be32(i32 %483)
  %485 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %12, align 8
  %486 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = or i32 %487, %484
  store i32 %488, i32* %486, align 8
  %489 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %490 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = call i32 @cpu_to_be32(i32 -2147483648)
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %503

497:                                              ; preds = %474
  %498 = call i32 @cpu_to_be32(i32 1)
  %499 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %12, align 8
  %500 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = or i32 %501, %498
  store i32 %502, i32* %500, align 8
  br label %503

503:                                              ; preds = %497, %474
  %504 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %505 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %505, i32 0, i32 3
  %507 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %506, i32 0, i32 3
  %508 = load i8*, i8** %507, align 8
  %509 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %12, align 8
  %510 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %509, i32 0, i32 2
  store i8* %508, i8** %510, align 8
  br label %511

511:                                              ; preds = %503, %443
  %512 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %513 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %512, i32 0, i32 3
  %514 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  switch i32 %515, label %542 [
    i32 129, label %516
    i32 128, label %525
  ]

516:                                              ; preds = %511
  %517 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %518 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %519 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %519, i32 0, i32 2
  %521 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %520, i32 0, i32 4
  store i32 %517, i32* %521, align 8
  %522 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %523 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %523, i32 0, i32 0
  store i32 0, i32* %524, align 8
  br label %545

525:                                              ; preds = %511
  %526 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %527 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %528 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %529, i32 0, i32 4
  store i32 %526, i32* %530, align 8
  %531 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %532 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %532, i32 0, i32 0
  store i32 1, i32* %533, align 8
  %534 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %535 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %534, i32 0, i32 3
  %536 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %535, i32 0, i32 3
  %537 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %540 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %539, i32 0, i32 2
  %541 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %540, i32 0, i32 6
  store i32 %538, i32* %541, align 8
  br label %545

542:                                              ; preds = %511
  %543 = load i32, i32* @EINVAL, align 4
  %544 = sub nsw i32 0, %543
  store i32 %544, i32* %5, align 4
  br label %903

545:                                              ; preds = %525, %516
  %546 = load i32, i32* %24, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %666

548:                                              ; preds = %545
  %549 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %550 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 8
  %554 = call i32 @be32_to_cpu(i32 %553)
  %555 = ashr i32 %554, 29
  %556 = shl i32 %555, 13
  store i32 %556, i32* %32, align 4
  %557 = load i32, i32* %27, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %561, label %559

559:                                              ; preds = %548
  %560 = load i32, i32* @ETH_P_IBOE, align 4
  br label %570

561:                                              ; preds = %548
  %562 = load i32, i32* %28, align 4
  %563 = icmp eq i32 %562, 4
  br i1 %563, label %564, label %566

564:                                              ; preds = %561
  %565 = load i32, i32* @ETH_P_IP, align 4
  br label %568

566:                                              ; preds = %561
  %567 = load i32, i32* @ETH_P_IPV6, align 4
  br label %568

568:                                              ; preds = %566, %564
  %569 = phi i32 [ %565, %564 ], [ %567, %566 ]
  br label %570

570:                                              ; preds = %568, %559
  %571 = phi i32 [ %560, %559 ], [ %569, %568 ]
  store i32 %571, i32* %31, align 4
  %572 = load i32, i32* %32, align 4
  %573 = call i8* @cpu_to_be16(i32 %572)
  %574 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %12, align 8
  %575 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %574, i32 0, i32 1
  store i8* %573, i8** %575, align 8
  %576 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %577 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %576, i32 0, i32 2
  %578 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %577, i32 0, i32 5
  %579 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 8
  %581 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %582 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 8
  %586 = call i32 @ether_addr_copy(i32 %580, i32 %585)
  %587 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %588 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %587, i32 0, i32 2
  %589 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %588, i32 0, i32 5
  %590 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %589, i32 0, i32 1
  %591 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %590, align 8
  %592 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %593 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %594, i32 0, i32 1
  %596 = load i32*, i32** %595, align 8
  %597 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %591, i32* %596, i32 6)
  %598 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %13, align 8
  %599 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %598, i32 0, i32 1
  %600 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %599, align 8
  %601 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %600, i64 0
  %602 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %603 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %604, i32 0, i32 1
  %606 = load i32*, i32** %605, align 8
  %607 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %601, i32* %606, i32 2)
  %608 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %13, align 8
  %609 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %608, i32 0, i32 0
  %610 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %15, align 8
  %611 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %612, i32 0, i32 1
  %614 = load i32*, i32** %613, align 8
  %615 = getelementptr inbounds i32, i32* %614, i64 2
  %616 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %609, i32* %615, i32 4)
  %617 = bitcast %struct.in6_addr* %30 to %struct.mlx4_wqe_inline_seg*
  %618 = bitcast %union.ib_gid* %16 to i32**
  %619 = load i32*, i32** %618, align 8
  %620 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %617, i32* %619, i32 4)
  %621 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %622 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %621, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %622, i32 0, i32 5
  %624 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %623, i32 0, i32 2
  %625 = load i32, i32* %624, align 8
  %626 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %627 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %626, i32 0, i32 2
  %628 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %627, i32 0, i32 5
  %629 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %628, i32 0, i32 1
  %630 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %629, align 8
  %631 = call i32 @memcmp(i32 %625, %struct.mlx4_wqe_inline_seg* %630, i32 6)
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %640, label %633

633:                                              ; preds = %570
  %634 = load i32, i32* @MLX4_WQE_CTRL_FORCE_LOOPBACK, align 4
  %635 = call i32 @cpu_to_be32(i32 %634)
  %636 = load %struct.mlx4_wqe_mlx_seg*, %struct.mlx4_wqe_mlx_seg** %12, align 8
  %637 = getelementptr inbounds %struct.mlx4_wqe_mlx_seg, %struct.mlx4_wqe_mlx_seg* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = or i32 %638, %635
  store i32 %639, i32* %637, align 8
  br label %640

640:                                              ; preds = %633, %570
  %641 = load i32, i32* %25, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %650, label %643

643:                                              ; preds = %640
  %644 = load i32, i32* %31, align 4
  %645 = call i8* @cpu_to_be16(i32 %644)
  %646 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %647 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %648, i32 0, i32 0
  store i8* %645, i8** %649, align 8
  br label %665

650:                                              ; preds = %640
  %651 = load i32, i32* %31, align 4
  %652 = call i8* @cpu_to_be16(i32 %651)
  %653 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %654 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %653, i32 0, i32 2
  %655 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %654, i32 0, i32 4
  %656 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %655, i32 0, i32 1
  store i8* %652, i8** %656, align 8
  %657 = load i32, i32* %23, align 4
  %658 = load i32, i32* %32, align 4
  %659 = or i32 %657, %658
  %660 = call i8* @cpu_to_be16(i32 %659)
  %661 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %662 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %661, i32 0, i32 2
  %663 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %662, i32 0, i32 4
  %664 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %663, i32 0, i32 0
  store i8* %660, i8** %664, align 8
  br label %665

665:                                              ; preds = %650, %643
  br label %724

666:                                              ; preds = %545
  %667 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %668 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %667, i32 0, i32 3
  %669 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %668, i32 0, i32 1
  %670 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 8
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %674, label %673

673:                                              ; preds = %666
  br label %687

674:                                              ; preds = %666
  %675 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %676 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %675)
  %677 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %678 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %677, i32 0, i32 2
  %679 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %678, i32 0, i32 3
  %680 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 8
  %682 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %683 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %682, i32 0, i32 3
  %684 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = call i32 @sl_to_vl(%struct.mlx4_ib_dev* %676, i32 %681, i32 %685)
  br label %687

687:                                              ; preds = %674, %673
  %688 = phi i32 [ 15, %673 ], [ %686, %674 ]
  %689 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %690 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %689, i32 0, i32 2
  %691 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %690, i32 0, i32 3
  %692 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %691, i32 0, i32 1
  store i32 %688, i32* %692, align 4
  %693 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %694 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %693, i32 0, i32 3
  %695 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %694, i32 0, i32 1
  %696 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %709

699:                                              ; preds = %687
  %700 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %701 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %700, i32 0, i32 2
  %702 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %701, i32 0, i32 3
  %703 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %702, i32 0, i32 1
  %704 = load i32, i32* %703, align 4
  %705 = icmp eq i32 %704, 15
  br i1 %705, label %706, label %709

706:                                              ; preds = %699
  %707 = load i32, i32* @EINVAL, align 4
  %708 = sub nsw i32 0, %707
  store i32 %708, i32* %5, align 4
  br label %903

709:                                              ; preds = %699, %687
  %710 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %711 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %710, i32 0, i32 2
  %712 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %712, i32 0, i32 3
  %714 = load i8*, i8** %713, align 8
  %715 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %716 = icmp eq i8* %714, %715
  br i1 %716, label %717, label %723

717:                                              ; preds = %709
  %718 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %719 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %720 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %719, i32 0, i32 2
  %721 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %720, i32 0, i32 3
  %722 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %721, i32 0, i32 2
  store i8* %718, i8** %722, align 8
  br label %723

723:                                              ; preds = %717, %709
  br label %724

724:                                              ; preds = %723, %665
  %725 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %726 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %725, i32 0, i32 3
  %727 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %726, i32 0, i32 2
  %728 = load i32, i32* %727, align 8
  %729 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %730 = and i32 %728, %729
  %731 = icmp ne i32 %730, 0
  %732 = xor i1 %731, true
  %733 = xor i1 %732, true
  %734 = zext i1 %733 to i32
  %735 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %736 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %735, i32 0, i32 2
  %737 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %736, i32 0, i32 2
  %738 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %737, i32 0, i32 0
  store i32 %734, i32* %738, align 8
  %739 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %740 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %739, i32 0, i32 3
  %741 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %740, i32 0, i32 1
  %742 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 8
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %755, label %745

745:                                              ; preds = %724
  %746 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %747 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %748 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %747, i32 0, i32 3
  %749 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %748, i32 0, i32 0
  %750 = load i32, i32* %749, align 8
  %751 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %752 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %751, i32 0, i32 5
  %753 = load i32, i32* %752, align 4
  %754 = call i32 @ib_get_cached_pkey(%struct.ib_device* %746, i32 %750, i32 %753, i32* %17)
  br label %765

755:                                              ; preds = %724
  %756 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %757 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %758 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %757, i32 0, i32 3
  %759 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 8
  %761 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %762 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %761, i32 0, i32 2
  %763 = load i32, i32* %762, align 8
  %764 = call i32 @ib_get_cached_pkey(%struct.ib_device* %756, i32 %760, i32 %763, i32* %17)
  br label %765

765:                                              ; preds = %755, %745
  %766 = load i32, i32* %17, align 4
  %767 = call i8* @cpu_to_be16(i32 %766)
  %768 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %769 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %768, i32 0, i32 2
  %770 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %769, i32 0, i32 2
  %771 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %770, i32 0, i32 3
  store i8* %767, i8** %771, align 8
  %772 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %773 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 8
  %775 = call i32 @cpu_to_be32(i32 %774)
  %776 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %777 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %776, i32 0, i32 2
  %778 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %777, i32 0, i32 2
  %779 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %778, i32 0, i32 1
  store i32 %775, i32* %779, align 4
  %780 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %781 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %780, i32 0, i32 4
  %782 = load i32, i32* %781, align 8
  %783 = add nsw i32 %782, 1
  store i32 %783, i32* %781, align 8
  %784 = and i32 %782, 16777215
  %785 = call i32 @cpu_to_be32(i32 %784)
  %786 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %787 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %786, i32 0, i32 2
  %788 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %787, i32 0, i32 2
  %789 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %788, i32 0, i32 2
  store i32 %785, i32* %789, align 8
  %790 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %791 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %790, i32 0, i32 1
  %792 = load i32, i32* %791, align 4
  %793 = and i32 %792, -2147483648
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %795, label %799

795:                                              ; preds = %765
  %796 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %797 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %796, i32 0, i32 0
  %798 = load i32, i32* %797, align 8
  br label %803

799:                                              ; preds = %765
  %800 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %7, align 8
  %801 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %800, i32 0, i32 1
  %802 = load i32, i32* %801, align 4
  br label %803

803:                                              ; preds = %799, %795
  %804 = phi i32 [ %798, %795 ], [ %802, %799 ]
  %805 = call i32 @cpu_to_be32(i32 %804)
  %806 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %807 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %806, i32 0, i32 2
  %808 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %808, i32 0, i32 0
  store i32 %805, i32* %809, align 4
  %810 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %811 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %810, i32 0, i32 3
  %812 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %811, i32 0, i32 1
  %813 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %812, i32 0, i32 0
  %814 = load i32, i32* %813, align 8
  %815 = call i32 @cpu_to_be32(i32 %814)
  %816 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %817 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %816, i32 0, i32 2
  %818 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %817, i32 0, i32 1
  %819 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %818, i32 0, i32 1
  store i32 %815, i32* %819, align 4
  %820 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %821 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %820, i32 0, i32 2
  %822 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %823 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %822, i32 0, i32 1
  %824 = load i32*, i32** %823, align 8
  %825 = call i32 @ib_ud_header_pack(%struct.TYPE_42__* %821, i32* %824)
  store i32 %825, i32* %19, align 4
  %826 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %827 = sext i32 %826 to i64
  %828 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %829 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %828, i64 1
  %830 = ptrtoint %struct.mlx4_wqe_inline_seg* %829 to i64
  %831 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %832 = sub nsw i32 %831, 1
  %833 = sext i32 %832 to i64
  %834 = and i64 %830, %833
  %835 = sub i64 %827, %834
  %836 = trunc i64 %835 to i32
  store i32 %836, i32* %20, align 4
  %837 = load i32, i32* %19, align 4
  %838 = load i32, i32* %20, align 4
  %839 = icmp sle i32 %837, %838
  br i1 %839, label %840, label %853

840:                                              ; preds = %803
  %841 = load i32, i32* %19, align 4
  %842 = or i32 -2147483648, %841
  %843 = call i32 @cpu_to_be32(i32 %842)
  %844 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %845 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %844, i32 0, i32 0
  store i32 %843, i32* %845, align 4
  %846 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %847 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %846, i64 1
  %848 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %849 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %848, i32 0, i32 1
  %850 = load i32*, i32** %849, align 8
  %851 = load i32, i32* %19, align 4
  %852 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %847, i32* %850, i32 %851)
  store i32 1, i32* %21, align 4
  br label %893

853:                                              ; preds = %803
  %854 = load i32, i32* %20, align 4
  %855 = or i32 -2147483648, %854
  %856 = call i32 @cpu_to_be32(i32 %855)
  %857 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %858 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %857, i32 0, i32 0
  store i32 %856, i32* %858, align 4
  %859 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %860 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %859, i64 1
  %861 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %862 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %861, i32 0, i32 1
  %863 = load i32*, i32** %862, align 8
  %864 = load i32, i32* %20, align 4
  %865 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %860, i32* %863, i32 %864)
  %866 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %867 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %866, i64 1
  %868 = bitcast %struct.mlx4_wqe_inline_seg* %867 to i8*
  %869 = load i32, i32* %20, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr i8, i8* %868, i64 %870
  %872 = bitcast i8* %871 to %struct.mlx4_wqe_inline_seg*
  store %struct.mlx4_wqe_inline_seg* %872, %struct.mlx4_wqe_inline_seg** %14, align 8
  %873 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %874 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %873, i64 1
  %875 = load %struct.mlx4_ib_sqp*, %struct.mlx4_ib_sqp** %6, align 8
  %876 = getelementptr inbounds %struct.mlx4_ib_sqp, %struct.mlx4_ib_sqp* %875, i32 0, i32 1
  %877 = load i32*, i32** %876, align 8
  %878 = load i32, i32* %20, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i32, i32* %877, i64 %879
  %881 = load i32, i32* %19, align 4
  %882 = load i32, i32* %20, align 4
  %883 = sub nsw i32 %881, %882
  %884 = call i32 @memcpy(%struct.mlx4_wqe_inline_seg* %874, i32* %880, i32 %883)
  %885 = call i32 (...) @wmb()
  %886 = load i32, i32* %19, align 4
  %887 = load i32, i32* %20, align 4
  %888 = sub nsw i32 %886, %887
  %889 = or i32 -2147483648, %888
  %890 = call i32 @cpu_to_be32(i32 %889)
  %891 = load %struct.mlx4_wqe_inline_seg*, %struct.mlx4_wqe_inline_seg** %14, align 8
  %892 = getelementptr inbounds %struct.mlx4_wqe_inline_seg, %struct.mlx4_wqe_inline_seg* %891, i32 0, i32 0
  store i32 %890, i32* %892, align 4
  store i32 2, i32* %21, align 4
  br label %893

893:                                              ; preds = %853, %840
  %894 = load i32, i32* %21, align 4
  %895 = sext i32 %894 to i64
  %896 = mul i64 %895, 4
  %897 = load i32, i32* %19, align 4
  %898 = sext i32 %897 to i64
  %899 = add i64 %896, %898
  %900 = trunc i64 %899 to i32
  %901 = call i32 @ALIGN(i32 %900, i32 16)
  %902 = load i32*, i32** %9, align 8
  store i32 %901, i32* %902, align 4
  store i32 0, i32* %5, align 4
  br label %903

903:                                              ; preds = %893, %706, %542, %192, %156, %123
  %904 = load i32, i32* %5, align 4
  ret i32 %904
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.mlx4_ib_ah* @to_mah(i32) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i32) #1

declare dso_local i32 @mlx4_ib_ah_grh_present(%struct.mlx4_ib_ah*) #1

declare dso_local i64 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mlx4_get_roce_gid_from_slave(i32, i32, i64, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fill_gid_by_hw_index(%struct.mlx4_ib_dev*, i32, i64, %union.ib_gid*, i32*) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.mlx4_wqe_inline_seg*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i32 @ib_ud_header_init(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_42__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(%struct.mlx4_wqe_inline_seg*, i32*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ib_ud_ip4_csum(%struct.TYPE_42__*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcmp(i32, %struct.mlx4_wqe_inline_seg*, i32) #1

declare dso_local i32 @sl_to_vl(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @ib_get_cached_pkey(%struct.ib_device*, i32, i32, i32*) #1

declare dso_local i32 @ib_ud_header_pack(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
