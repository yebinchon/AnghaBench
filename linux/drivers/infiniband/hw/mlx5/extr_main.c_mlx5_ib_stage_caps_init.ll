; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_caps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_stage_caps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlx5_core_dev*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@IB_USER_VERBS_CMD_GET_CONTEXT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_PORT = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_PD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_AH = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_REREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEREG_MR = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_RESIZE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_ATTACH_MCAST = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DETACH_MCAST = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_MODIFY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_QUERY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DESTROY_SRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CREATE_XSRQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_OPEN_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_QUERY_DEVICE = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_CREATE_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_CREATE_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_MODIFY_QP = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_MODIFY_CQ = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_CREATE_FLOW = common dso_local global i64 0, align 8
@IB_USER_VERBS_EX_CMD_DESTROY_FLOW = common dso_local global i64 0, align 8
@ipoib_enhanced_offloads = common dso_local global i32 0, align 4
@CONFIG_MLX5_CORE_IPOIB = common dso_local global i32 0, align 4
@mlx5_ib_dev_ipoib_enhanced_ops = common dso_local global i32 0, align 4
@mlx5_ib_dev_sriov_ops = common dso_local global i32 0, align 4
@umr_fence = common dso_local global i32 0, align 4
@imaicl = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_ALLOC_MW = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_DEALLOC_MW = common dso_local global i64 0, align 8
@mlx5_ib_dev_mw_ops = common dso_local global i32 0, align 4
@xrc = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_OPEN_XRCD = common dso_local global i64 0, align 8
@IB_USER_VERBS_CMD_CLOSE_XRCD = common dso_local global i64 0, align 8
@mlx5_ib_dev_xrc_ops = common dso_local global i32 0, align 4
@memic = common dso_local global i32 0, align 4
@general_obj_types = common dso_local global i32 0, align 4
@MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM = common dso_local global i32 0, align 4
@mlx5_ib_dev_dm_ops = common dso_local global i32 0, align 4
@MLX5_ACCEL_IPSEC_CAP_DEVICE = common dso_local global i32 0, align 4
@mlx5_ib_dev_flow_ipsec_ops = common dso_local global i32 0, align 4
@mlx5_ib_dev_ops = common dso_local global i32 0, align 4
@CONFIG_INFINIBAND_USER_ACCESS = common dso_local global i32 0, align 4
@mlx5_ib_defs = common dso_local global i32 0, align 4
@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@disable_local_lb_uc = common dso_local global i32 0, align 4
@disable_local_lb_mc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @mlx5_ib_stage_caps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_stage_caps_init(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  %6 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %6, i32 0, i32 2
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_core_dev* %8, %struct.mlx5_core_dev** %4, align 8
  %9 = load i64, i64* @IB_USER_VERBS_CMD_GET_CONTEXT, align 8
  %10 = shl i64 1, %9
  %11 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_DEVICE, align 8
  %12 = shl i64 1, %11
  %13 = or i64 %10, %12
  %14 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_PORT, align 8
  %15 = shl i64 1, %14
  %16 = or i64 %13, %15
  %17 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_PD, align 8
  %18 = shl i64 1, %17
  %19 = or i64 %16, %18
  %20 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_PD, align 8
  %21 = shl i64 1, %20
  %22 = or i64 %19, %21
  %23 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_AH, align 8
  %24 = shl i64 1, %23
  %25 = or i64 %22, %24
  %26 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_AH, align 8
  %27 = shl i64 1, %26
  %28 = or i64 %25, %27
  %29 = load i64, i64* @IB_USER_VERBS_CMD_REG_MR, align 8
  %30 = shl i64 1, %29
  %31 = or i64 %28, %30
  %32 = load i64, i64* @IB_USER_VERBS_CMD_REREG_MR, align 8
  %33 = shl i64 1, %32
  %34 = or i64 %31, %33
  %35 = load i64, i64* @IB_USER_VERBS_CMD_DEREG_MR, align 8
  %36 = shl i64 1, %35
  %37 = or i64 %34, %36
  %38 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL, align 8
  %39 = shl i64 1, %38
  %40 = or i64 %37, %39
  %41 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_CQ, align 8
  %42 = shl i64 1, %41
  %43 = or i64 %40, %42
  %44 = load i64, i64* @IB_USER_VERBS_CMD_RESIZE_CQ, align 8
  %45 = shl i64 1, %44
  %46 = or i64 %43, %45
  %47 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %48 = shl i64 1, %47
  %49 = or i64 %46, %48
  %50 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_QP, align 8
  %51 = shl i64 1, %50
  %52 = or i64 %49, %51
  %53 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_QP, align 8
  %54 = shl i64 1, %53
  %55 = or i64 %52, %54
  %56 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_QP, align 8
  %57 = shl i64 1, %56
  %58 = or i64 %55, %57
  %59 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_QP, align 8
  %60 = shl i64 1, %59
  %61 = or i64 %58, %60
  %62 = load i64, i64* @IB_USER_VERBS_CMD_ATTACH_MCAST, align 8
  %63 = shl i64 1, %62
  %64 = or i64 %61, %63
  %65 = load i64, i64* @IB_USER_VERBS_CMD_DETACH_MCAST, align 8
  %66 = shl i64 1, %65
  %67 = or i64 %64, %66
  %68 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_SRQ, align 8
  %69 = shl i64 1, %68
  %70 = or i64 %67, %69
  %71 = load i64, i64* @IB_USER_VERBS_CMD_MODIFY_SRQ, align 8
  %72 = shl i64 1, %71
  %73 = or i64 %70, %72
  %74 = load i64, i64* @IB_USER_VERBS_CMD_QUERY_SRQ, align 8
  %75 = shl i64 1, %74
  %76 = or i64 %73, %75
  %77 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_SRQ, align 8
  %78 = shl i64 1, %77
  %79 = or i64 %76, %78
  %80 = load i64, i64* @IB_USER_VERBS_CMD_CREATE_XSRQ, align 8
  %81 = shl i64 1, %80
  %82 = or i64 %79, %81
  %83 = load i64, i64* @IB_USER_VERBS_CMD_OPEN_QP, align 8
  %84 = shl i64 1, %83
  %85 = or i64 %82, %84
  %86 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* @IB_USER_VERBS_EX_CMD_QUERY_DEVICE, align 8
  %90 = shl i64 1, %89
  %91 = load i64, i64* @IB_USER_VERBS_EX_CMD_CREATE_CQ, align 8
  %92 = shl i64 1, %91
  %93 = or i64 %90, %92
  %94 = load i64, i64* @IB_USER_VERBS_EX_CMD_CREATE_QP, align 8
  %95 = shl i64 1, %94
  %96 = or i64 %93, %95
  %97 = load i64, i64* @IB_USER_VERBS_EX_CMD_MODIFY_QP, align 8
  %98 = shl i64 1, %97
  %99 = or i64 %96, %98
  %100 = load i64, i64* @IB_USER_VERBS_EX_CMD_MODIFY_CQ, align 8
  %101 = shl i64 1, %100
  %102 = or i64 %99, %101
  %103 = load i64, i64* @IB_USER_VERBS_EX_CMD_CREATE_FLOW, align 8
  %104 = shl i64 1, %103
  %105 = or i64 %102, %104
  %106 = load i64, i64* @IB_USER_VERBS_EX_CMD_DESTROY_FLOW, align 8
  %107 = shl i64 1, %106
  %108 = or i64 %105, %107
  %109 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %110 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i64 %108, i64* %111, align 8
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %113 = load i32, i32* @ipoib_enhanced_offloads, align 4
  %114 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %1
  %117 = load i32, i32* @CONFIG_MLX5_CORE_IPOIB, align 4
  %118 = call i64 @IS_ENABLED(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %121, i32 0, i32 0
  %123 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %122, i32* @mlx5_ib_dev_ipoib_enhanced_ops)
  br label %124

124:                                              ; preds = %120, %116, %1
  %125 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %126 = call i64 @mlx5_core_is_pf(%struct.mlx5_core_dev* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %129, i32 0, i32 0
  %131 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %130, i32* @mlx5_ib_dev_sriov_ops)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %134 = load i32, i32* @umr_fence, align 4
  %135 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %133, i32 %134)
  %136 = call i32 @mlx5_get_umr_fence(i64 %135)
  %137 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %138 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %140 = load i32, i32* @imaicl, align 4
  %141 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %132
  %144 = load i64, i64* @IB_USER_VERBS_CMD_ALLOC_MW, align 8
  %145 = shl i64 1, %144
  %146 = load i64, i64* @IB_USER_VERBS_CMD_DEALLOC_MW, align 8
  %147 = shl i64 1, %146
  %148 = or i64 %145, %147
  %149 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %150 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, %148
  store i64 %153, i64* %151, align 8
  %154 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %154, i32 0, i32 0
  %156 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %155, i32* @mlx5_ib_dev_mw_ops)
  br label %157

157:                                              ; preds = %143, %132
  %158 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %159 = load i32, i32* @xrc, align 4
  %160 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load i64, i64* @IB_USER_VERBS_CMD_OPEN_XRCD, align 8
  %164 = shl i64 1, %163
  %165 = load i64, i64* @IB_USER_VERBS_CMD_CLOSE_XRCD, align 8
  %166 = shl i64 1, %165
  %167 = or i64 %164, %166
  %168 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %169 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = or i64 %171, %167
  store i64 %172, i64* %170, align 8
  %173 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %173, i32 0, i32 0
  %175 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %174, i32* @mlx5_ib_dev_xrc_ops)
  br label %176

176:                                              ; preds = %162, %157
  %177 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %178 = load i32, i32* @memic, align 4
  %179 = call i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %176
  %182 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %183 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %182, i32 0, i32 2
  %184 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %183, align 8
  %185 = load i32, i32* @general_obj_types, align 4
  %186 = call i32 @MLX5_CAP_GEN_64(%struct.mlx5_core_dev* %184, i32 %185)
  %187 = load i32, i32* @MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %181, %176
  %191 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %192 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %191, i32 0, i32 0
  %193 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %192, i32* @mlx5_ib_dev_dm_ops)
  br label %194

194:                                              ; preds = %190, %181
  %195 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %196 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %195, i32 0, i32 2
  %197 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %196, align 8
  %198 = call i32 @mlx5_accel_ipsec_device_caps(%struct.mlx5_core_dev* %197)
  %199 = load i32, i32* @MLX5_ACCEL_IPSEC_CAP_DEVICE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %194
  %203 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %204 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %203, i32 0, i32 0
  %205 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %204, i32* @mlx5_ib_dev_flow_ipsec_ops)
  br label %206

206:                                              ; preds = %202, %194
  %207 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %208 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %207, i32 0, i32 0
  %209 = call i32 @ib_set_device_ops(%struct.TYPE_4__* %208, i32* @mlx5_ib_dev_ops)
  %210 = load i32, i32* @CONFIG_INFINIBAND_USER_ACCESS, align 4
  %211 = call i64 @IS_ENABLED(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load i32, i32* @mlx5_ib_defs, align 4
  %215 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %216 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 3
  store i32 %214, i32* %217, align 4
  br label %218

218:                                              ; preds = %213, %206
  %219 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %220 = call i32 @init_node_data(%struct.mlx5_ib_dev* %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load i32, i32* %5, align 4
  store i32 %224, i32* %2, align 4
  br label %256

225:                                              ; preds = %218
  %226 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %227 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %226, i32 0, i32 2
  %228 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %227, align 8
  %229 = load i32, i32* @port_type, align 4
  %230 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %228, i32 %229)
  %231 = load i64, i64* @MLX5_CAP_PORT_TYPE_ETH, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %252

233:                                              ; preds = %225
  %234 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %235 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %234, i32 0, i32 2
  %236 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %235, align 8
  %237 = load i32, i32* @disable_local_lb_uc, align 4
  %238 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %236, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %233
  %241 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %242 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %241, i32 0, i32 2
  %243 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %242, align 8
  %244 = load i32, i32* @disable_local_lb_mc, align 4
  %245 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %240, %233
  %248 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %249 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = call i32 @mutex_init(i32* %250)
  br label %252

252:                                              ; preds = %247, %240, %225
  %253 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %254 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 2
  store i32 1, i32* %255, align 8
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %252, %223
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ib_set_device_ops(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @mlx5_core_is_pf(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_get_umr_fence(i64) #1

declare dso_local i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_GEN_64(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_accel_ipsec_device_caps(%struct.mlx5_core_dev*) #1

declare dso_local i32 @init_node_data(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
