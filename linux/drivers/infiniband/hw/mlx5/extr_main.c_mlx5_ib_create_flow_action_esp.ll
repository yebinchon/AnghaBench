; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_create_flow_action_esp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_create_flow_action_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_action = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_flow_action_attrs_esp = type { i32, i32, %struct.TYPE_7__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm }
%struct.ib_uverbs_flow_action_esp_keymat_aes_gcm = type { i32, i64, i32, i32, i32, i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5_ib_flow_action = type { %struct.ib_flow_action, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@MLX5_IB_ATTR_CREATE_FLOW_ACTION_FLAGS = common dso_local global i32 0, align 4
@MLX5_FLOW_ACTION_ESP_CREATE_LAST_SUPPORTED = common dso_local global i32 0, align 4
@IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED = common dso_local global i32 0, align 4
@IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_UVERBS_FLOW_ACTION_ESP_KEYMAT_AES_GCM = common dso_local global i64 0, align 8
@IB_UVERBS_FLOW_ACTION_IV_ALGO_SEQ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_AES_GCM_IV_ALGO_SEQ = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_KEYMAT_AES_GCM = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED = common dso_local global i32 0, align 4
@IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_flow_action* (%struct.ib_device*, %struct.ib_flow_action_attrs_esp*, %struct.uverbs_attr_bundle*)* @mlx5_ib_create_flow_action_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_flow_action* @mlx5_ib_create_flow_action_esp(%struct.ib_device* %0, %struct.ib_flow_action_attrs_esp* %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca %struct.ib_flow_action*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_flow_action_attrs_esp*, align 8
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, align 8
  %10 = alloca %struct.mlx5_accel_esp_xfrm_attrs, align 4
  %11 = alloca %struct.mlx5_ib_flow_action*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_flow_action_attrs_esp* %1, %struct.ib_flow_action_attrs_esp** %6, align 8
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx5_ib_dev* %16, %struct.mlx5_ib_dev** %8, align 8
  %17 = bitcast %struct.mlx5_accel_esp_xfrm_attrs* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 40, i1 false)
  store i32 0, i32* %14, align 4
  %18 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %7, align 8
  %19 = load i32, i32* @MLX5_IB_ATTR_CREATE_FLOW_ACTION_FLAGS, align 4
  %20 = load i32, i32* @MLX5_FLOW_ACTION_ESP_CREATE_LAST_SUPPORTED, align 4
  %21 = shl i32 %20, 1
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @uverbs_get_flags64(i32* %12, %struct.uverbs_attr_bundle* %18, i32 %19, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %14, align 4
  %28 = call %struct.ib_flow_action* @ERR_PTR(i32 %27)
  store %struct.ib_flow_action* %28, %struct.ib_flow_action** %4, align 8
  br label %240

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @mlx5_ib_flow_action_flags_to_accel_xfrm_flags(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %33 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %76

36:                                               ; preds = %29
  %37 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %38 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %76, label %41

41:                                               ; preds = %36
  %42 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %43 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %41
  %47 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %48 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %46
  %52 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %53 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %51
  %57 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %58 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %63 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %68 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED, align 4
  %71 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ENCRYPT, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %66, %61, %56, %51, %46, %41, %36, %29
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.ib_flow_action* @ERR_PTR(i32 %78)
  store %struct.ib_flow_action* %79, %struct.ib_flow_action** %4, align 8
  br label %240

80:                                               ; preds = %66
  %81 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %82 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IB_UVERBS_FLOW_ACTION_ESP_KEYMAT_AES_GCM, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.ib_flow_action* @ERR_PTR(i32 %90)
  store %struct.ib_flow_action* %91, %struct.ib_flow_action** %4, align 8
  br label %240

92:                                               ; preds = %80
  %93 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %94 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %97, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %98 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %99 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 16
  br i1 %101, label %108, label %102

102:                                              ; preds = %92
  %103 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %104 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IB_UVERBS_FLOW_ACTION_IV_ALGO_SEQ, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102, %92
  %109 = load i32, i32* @EOPNOTSUPP, align 4
  %110 = sub nsw i32 0, %109
  %111 = call %struct.ib_flow_action* @ERR_PTR(i32 %110)
  store %struct.ib_flow_action* %111, %struct.ib_flow_action** %4, align 8
  br label %240

112:                                              ; preds = %102
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.mlx5_ib_flow_action* @kmalloc(i32 12, i32 %113)
  store %struct.mlx5_ib_flow_action* %114, %struct.mlx5_ib_flow_action** %11, align 8
  %115 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %116 = icmp ne %struct.mlx5_ib_flow_action* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  %120 = call %struct.ib_flow_action* @ERR_PTR(i32 %119)
  store %struct.ib_flow_action* %120, %struct.ib_flow_action** %4, align 8
  br label %240

121:                                              ; preds = %112
  %122 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %123 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %126 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  %131 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %132 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %131, i32 0, i32 5
  %133 = call i32 @memcpy(i32* %130, i32* %132, i32 4)
  %134 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %135 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %136, 8
  %138 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 4
  %141 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %145 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %144, i32 0, i32 4
  %146 = call i32 @memcpy(i32* %143, i32* %145, i32 4)
  %147 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %151 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %150, i32 0, i32 3
  %152 = call i32 @memcpy(i32* %149, i32* %151, i32 4)
  %153 = load %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm*, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm** %9, align 8
  %154 = getelementptr inbounds %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm, %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %155, 8
  %157 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* @MLX5_ACCEL_ESP_AES_GCM_IV_ALGO_SEQ, align 4
  %161 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @MLX5_ACCEL_ESP_KEYMAT_AES_GCM, align 4
  %165 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 3
  store i32 %164, i32* %165, align 4
  %166 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %167 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 2
  store i32 %168, i32* %169, align 4
  %170 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %171 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %121
  %177 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_TRIGGERED, align 4
  %178 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %177
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %176, %121
  %182 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %183 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP, align 4
  %190 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %189
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %188, %181
  %194 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %195 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ENCRYPT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load i32, i32* @MLX5_ACCEL_ESP_ACTION_ENCRYPT, align 4
  %202 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %201
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %200, %193
  %206 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %207 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @mlx5_accel_esp_create_xfrm(i32 %208, %struct.mlx5_accel_esp_xfrm_attrs* %10, i32 %209)
  %211 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %212 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %215 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @IS_ERR(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %205
  %221 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %222 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @PTR_ERR(i32 %224)
  store i32 %225, i32* %14, align 4
  br label %235

226:                                              ; preds = %205
  %227 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %228 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %231 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  store i32 %229, i32* %232, align 4
  %233 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %234 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %233, i32 0, i32 0
  store %struct.ib_flow_action* %234, %struct.ib_flow_action** %4, align 8
  br label %240

235:                                              ; preds = %220
  %236 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %11, align 8
  %237 = call i32 @kfree(%struct.mlx5_ib_flow_action* %236)
  %238 = load i32, i32* %14, align 4
  %239 = call %struct.ib_flow_action* @ERR_PTR(i32 %238)
  store %struct.ib_flow_action* %239, %struct.ib_flow_action** %4, align 8
  br label %240

240:                                              ; preds = %235, %226, %117, %108, %88, %76, %26
  %241 = load %struct.ib_flow_action*, %struct.ib_flow_action** %4, align 8
  ret %struct.ib_flow_action* %241
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @uverbs_get_flags64(i32*, %struct.uverbs_attr_bundle*, i32, i32) #1

declare dso_local %struct.ib_flow_action* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_ib_flow_action_flags_to_accel_xfrm_flags(i32) #1

declare dso_local %struct.mlx5_ib_flow_action* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mlx5_accel_esp_create_xfrm(i32, %struct.mlx5_accel_esp_xfrm_attrs*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
