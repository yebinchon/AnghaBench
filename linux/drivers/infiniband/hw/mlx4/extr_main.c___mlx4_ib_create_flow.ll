; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_create_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_flow_attr = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_net_trans_rule_hw_ctrl* }
%struct.mlx4_net_trans_rule_hw_ctrl = type { i32, i32, i64, i32 }
%struct._rule_hw = type { i32 }
%union.ib_flow_spec = type { i32 }

@__mlx4_ib_create_flow.__mlx4_domain = internal constant [136 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 129, i32 130, i32 131], align 16
@MLX4_IB_FLOW_MAX_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid priority value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_FLOW_DOMAIN_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid domain value %d\0A\00", align 1
@default_table = common dso_local global i64 0, align 8
@MLX4_FS_REGULAR = common dso_local global i32 0, align 4
@IB_FLOW_SPEC_ETH = common dso_local global i32 0, align 4
@MLX4_QP_FLOW_STEERING_ATTACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"mcg table is full. Fail to register network rule.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"Device managed flow steering is disabled. Fail to register network rule.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Invalid argument. Fail to register network rule.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_flow_attr*, i32, i32, i32*)* @__mlx4_ib_create_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx4_ib_create_flow(%struct.ib_qp* %0, %struct.ib_flow_attr* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_flow_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.mlx4_ib_dev*, align 8
  %17 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %18 = alloca %struct.mlx4_net_trans_rule_hw_ctrl*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct._rule_hw*, align 8
  %21 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %23 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mlx4_ib_dev* @to_mdev(i32 %24)
  store %struct.mlx4_ib_dev* %25, %struct.mlx4_ib_dev** %16, align 8
  %26 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %27 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MLX4_IB_FLOW_MAX_PRIO, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %33 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %260

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IB_FLOW_DOMAIN_NUM, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %260

47:                                               ; preds = %38
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @mlx4_map_sw_to_hw_steering_mode(i32 %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %260

57:                                               ; preds = %47
  %58 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32 %60)
  store %struct.mlx4_cmd_mailbox* %61, %struct.mlx4_cmd_mailbox** %17, align 8
  %62 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %63 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %67 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %66)
  store i32 %67, i32* %6, align 4
  br label %260

68:                                               ; preds = %57
  %69 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %70 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %69, i32 0, i32 1
  %71 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %70, align 8
  store %struct.mlx4_net_trans_rule_hw_ctrl* %71, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [136 x i32], [136 x i32]* @__mlx4_ib_create_flow.__mlx4_domain, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %77 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = call i32 @cpu_to_be16(i32 %79)
  %81 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %82 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @mlx4_map_sw_to_hw_steering_mode(i32 %85, i32 %86)
  %88 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %89 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %91 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %94 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %96 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cpu_to_be32(i32 %97)
  %99 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %100 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %102 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %101, i64 1
  %103 = bitcast %struct.ib_flow_attr* %102 to i8*
  store i8* %103, i8** %15, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 24
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %14, align 4
  %108 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %109 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %110 = call i32 @__mlx4_ib_default_rules_match(%struct.ib_qp* %108, %struct.ib_flow_attr* %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %68
  %114 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %115 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %116 = load i64, i64* @default_table, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %121 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %120, i32 0, i32 1
  %122 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %122, i64 %124
  %126 = call i32 @__mlx4_ib_create_default_rules(%struct.mlx4_ib_dev* %114, %struct.ib_qp* %115, i64 %119, %struct.mlx4_net_trans_rule_hw_ctrl* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %113
  %130 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %131 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %134 = call i32 @mlx4_free_cmd_mailbox(i32 %132, %struct.mlx4_cmd_mailbox* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %260

137:                                              ; preds = %113
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %137, %68
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %184, %141
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %145 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %187

148:                                              ; preds = %142
  %149 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %153 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %15, align 8
  %156 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %157 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %156, i32 0, i32 1
  %158 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %158, i64 %160
  %162 = call i32 @parse_flow_attr(i32 %151, i32 %154, i8* %155, %struct.mlx4_net_trans_rule_hw_ctrl* %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %148
  %166 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %167 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %170 = call i32 @mlx4_free_cmd_mailbox(i32 %168, %struct.mlx4_cmd_mailbox* %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %6, align 4
  br label %260

173:                                              ; preds = %148
  %174 = load i8*, i8** %15, align 8
  %175 = bitcast i8* %174 to %union.ib_flow_spec*
  %176 = bitcast %union.ib_flow_spec* %175 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** %15, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr i8, i8* %178, i64 %179
  store i8* %180, i8** %15, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %14, align 4
  br label %184

184:                                              ; preds = %173
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %142

187:                                              ; preds = %142
  %188 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %189 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @mlx4_is_master(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %187
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @MLX4_FS_REGULAR, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %193
  %198 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %199 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %219

202:                                              ; preds = %197
  %203 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %204 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %203, i64 1
  %205 = bitcast %struct.mlx4_net_trans_rule_hw_ctrl* %204 to %struct._rule_hw*
  store %struct._rule_hw* %205, %struct._rule_hw** %20, align 8
  %206 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %207 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %206, i64 1
  %208 = bitcast %struct.ib_flow_attr* %207 to %union.ib_flow_spec*
  %209 = bitcast %union.ib_flow_spec* %208 to i32*
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* @IB_FLOW_SPEC_ETH, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %202
  %215 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %216 = load %struct._rule_hw*, %struct._rule_hw** %20, align 8
  %217 = call i32 @mlx4_handle_eth_header_mcast_prio(%struct.mlx4_net_trans_rule_hw_ctrl* %215, %struct._rule_hw* %216)
  br label %218

218:                                              ; preds = %214, %202
  br label %219

219:                                              ; preds = %218, %197, %193, %187
  %220 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %221 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %224 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = load i32, i32* %14, align 4
  %228 = ashr i32 %227, 2
  %229 = load i32, i32* @MLX4_QP_FLOW_STEERING_ATTACH, align 4
  %230 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %231 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %232 = call i32 @mlx4_cmd_imm(i32 %222, i32 %225, i32* %226, i32 %228, i32 0, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = sub nsw i32 0, %234
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %219
  %238 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %253

239:                                              ; preds = %219
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @ENXIO, align 4
  %242 = sub nsw i32 0, %241
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %252

246:                                              ; preds = %239
  %247 = load i32, i32* %12, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246
  %250 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %246
  br label %252

252:                                              ; preds = %251, %244
  br label %253

253:                                              ; preds = %252, %237
  %254 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %255 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %258 = call i32 @mlx4_free_cmd_mailbox(i32 %256, %struct.mlx4_cmd_mailbox* %257)
  %259 = load i32, i32* %12, align 4
  store i32 %259, i32* %6, align 4
  br label %260

260:                                              ; preds = %253, %165, %129, %65, %54, %42, %31
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @mlx4_map_sw_to_hw_steering_mode(i32, i32) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @__mlx4_ib_default_rules_match(%struct.ib_qp*, %struct.ib_flow_attr*) #1

declare dso_local i32 @__mlx4_ib_create_default_rules(%struct.mlx4_ib_dev*, %struct.ib_qp*, i64, %struct.mlx4_net_trans_rule_hw_ctrl*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @parse_flow_attr(i32, i32, i8*, %struct.mlx4_net_trans_rule_hw_ctrl*) #1

declare dso_local i64 @mlx4_is_master(i32) #1

declare dso_local i32 @mlx4_handle_eth_header_mcast_prio(%struct.mlx4_net_trans_rule_hw_ctrl*, %struct._rule_hw*) #1

declare dso_local i32 @mlx4_cmd_imm(i32, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
