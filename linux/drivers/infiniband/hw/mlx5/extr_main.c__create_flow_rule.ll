; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c__create_flow_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c__create_flow_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_handler = type { %struct.TYPE_8__*, %struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_ib_dev = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.mlx5_ib_flow_prio = type { %struct.mlx5_flow_table*, i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.ib_flow_attr = type { i32, i32, i32, i32 }
%struct.mlx5_flow_destination = type { i32, i32 }
%struct.mlx5_ib_create_flow = type { i32 }
%struct.mlx5_flow_act = type { i32, %struct.TYPE_8__* }
%struct.mlx5_flow_spec = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx5_ib_mcounters = type { i32 }
%union.ib_flow_spec = type { i32 }

@IB_FLOW_ATTR_FLAGS_EGRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_COUNTER = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DROP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ALLOW = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO = common dso_local global i32 0, align 4
@FLOW_CONTEXT_HAS_TAG = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_ALL_DEFAULT = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_MC_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Flow tag %u and attribute type %x isn't allowed in leftovers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_handler* (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_flow_destination*, i32, %struct.mlx5_ib_create_flow*)* @_create_flow_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_handler* @_create_flow_rule(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_prio* %1, %struct.ib_flow_attr* %2, %struct.mlx5_flow_destination* %3, i32 %4, %struct.mlx5_ib_create_flow* %5) #0 {
  %7 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %10 = alloca %struct.ib_flow_attr*, align 8
  %11 = alloca %struct.mlx5_flow_destination*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_ib_create_flow*, align 8
  %14 = alloca %struct.mlx5_flow_table*, align 8
  %15 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %16 = alloca %struct.mlx5_flow_act, align 8
  %17 = alloca %struct.mlx5_flow_spec*, align 8
  %18 = alloca [2 x %struct.mlx5_flow_destination], align 16
  %19 = alloca %struct.mlx5_flow_destination*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.mlx5_eswitch_rep*, align 8
  %27 = alloca %struct.mlx5_ib_mcounters*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %8, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %9, align 8
  store %struct.ib_flow_attr* %2, %struct.ib_flow_attr** %10, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.mlx5_ib_create_flow* %5, %struct.mlx5_ib_create_flow** %13, align 8
  %28 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %28, i32 0, i32 0
  %30 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %29, align 8
  store %struct.mlx5_flow_table* %30, %struct.mlx5_flow_table** %14, align 8
  %31 = bitcast %struct.mlx5_flow_act* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 16, i1 false)
  %32 = bitcast [2 x %struct.mlx5_flow_destination]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 16, i1 false)
  %33 = getelementptr inbounds [2 x %struct.mlx5_flow_destination], [2 x %struct.mlx5_flow_destination]* %18, i64 0, i64 0
  store %struct.mlx5_flow_destination* %33, %struct.mlx5_flow_destination** %19, align 8
  %34 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %35 = bitcast %struct.ib_flow_attr* %34 to i8*
  %36 = getelementptr i8, i8* %35, i64 16
  store i8* %36, i8** %20, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %37 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %38 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IB_FLOW_ATTR_FLAGS_EGRESS, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %25, align 4
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %46 = call i32 @is_valid_attr(i32 %44, %struct.ib_flow_attr* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %6
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.mlx5_ib_flow_handler* @ERR_PTR(i32 %50)
  store %struct.mlx5_ib_flow_handler* %51, %struct.mlx5_ib_flow_handler** %7, align 8
  br label %353

52:                                               ; preds = %6
  %53 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %25, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.mlx5_ib_flow_handler* @ERR_PTR(i32 %62)
  store %struct.mlx5_ib_flow_handler* %63, %struct.mlx5_ib_flow_handler** %7, align 8
  br label %353

64:                                               ; preds = %57, %52
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.mlx5_flow_spec* @kvzalloc(i32 16, i32 %65)
  store %struct.mlx5_flow_spec* %66, %struct.mlx5_flow_spec** %17, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.mlx5_ib_flow_handler* @kzalloc(i32 32, i32 %67)
  store %struct.mlx5_ib_flow_handler* %68, %struct.mlx5_ib_flow_handler** %15, align 8
  %69 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %70 = icmp ne %struct.mlx5_ib_flow_handler* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %73 = icmp ne %struct.mlx5_flow_spec* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71, %64
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %23, align 4
  br label %315

77:                                               ; preds = %71
  %78 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %78, i32 0, i32 4
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %82 = icmp ne %struct.mlx5_flow_destination* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = getelementptr inbounds [2 x %struct.mlx5_flow_destination], [2 x %struct.mlx5_flow_destination]* %18, i64 0, i64 0
  %85 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %11, align 8
  %86 = call i32 @memcpy(%struct.mlx5_flow_destination* %84, %struct.mlx5_flow_destination* %85, i32 8)
  %87 = load i32, i32* %24, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %24, align 4
  br label %89

89:                                               ; preds = %83, %77
  store i32 0, i32* %21, align 4
  br label %90

90:                                               ; preds = %120, %89
  %91 = load i32, i32* %21, align 4
  %92 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %93 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %90
  %97 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @parse_flow_attr(i32 %99, %struct.mlx5_flow_spec* %100, i8* %101, %struct.ib_flow_attr* %102, %struct.mlx5_flow_act* %16, i32 %103)
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %23, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %315

108:                                              ; preds = %96
  %109 = load i8*, i8** %20, align 8
  %110 = bitcast i8* %109 to %union.ib_flow_spec*
  %111 = bitcast %union.ib_flow_spec* %110 to i32*
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %22, align 4
  %113 = load i8*, i8** %20, align 8
  %114 = bitcast i8* %113 to %union.ib_flow_spec*
  %115 = bitcast %union.ib_flow_spec* %114 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %20, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr i8, i8* %117, i64 %118
  store i8* %119, i8** %20, align 8
  br label %120

120:                                              ; preds = %108
  %121 = load i32, i32* %21, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %21, align 4
  br label %90

123:                                              ; preds = %90
  %124 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %125 = call i32 @flow_is_multicast_only(%struct.ib_flow_attr* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %129 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @set_underlay_qp(%struct.mlx5_ib_dev* %128, %struct.mlx5_flow_spec* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %123
  %133 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %134 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %132
  %138 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %139 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %142 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %147, align 8
  store %struct.mlx5_eswitch_rep* %148, %struct.mlx5_eswitch_rep** %26, align 8
  %149 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %26, align 8
  %150 = icmp ne %struct.mlx5_eswitch_rep* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %137
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %23, align 4
  br label %315

154:                                              ; preds = %137
  %155 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %156 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %157 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %26, align 8
  %158 = call i32 @mlx5_ib_set_rule_source_port(%struct.mlx5_ib_dev* %155, %struct.mlx5_flow_spec* %156, %struct.mlx5_eswitch_rep* %157)
  br label %159

159:                                              ; preds = %154, %132
  %160 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %161 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @get_match_criteria_enable(i32 %162)
  %164 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %165 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %25, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %159
  %169 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %170 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %173 = load i32, i32* %25, align 4
  %174 = call i32 @is_valid_spec(i32 %171, %struct.mlx5_flow_spec* %172, %struct.mlx5_flow_act* %16, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %23, align 4
  br label %315

179:                                              ; preds = %168, %159
  %180 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %216

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load %struct.mlx5_ib_create_flow*, %struct.mlx5_ib_create_flow** %13, align 8
  %189 = call i32 @flow_counters_set_data(%struct.TYPE_8__* %187, %struct.mlx5_ib_create_flow* %188)
  store i32 %189, i32* %23, align 4
  %190 = load i32, i32* %23, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %315

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 1
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = call %struct.mlx5_ib_mcounters* @to_mcounters(%struct.TYPE_8__* %195)
  store %struct.mlx5_ib_mcounters* %196, %struct.mlx5_ib_mcounters** %27, align 8
  %197 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 1
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %200 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %199, i32 0, i32 0
  store %struct.TYPE_8__* %198, %struct.TYPE_8__** %200, align 8
  %201 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_COUNTER, align 4
  %202 = load i32, i32* %24, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [2 x %struct.mlx5_flow_destination], [2 x %struct.mlx5_flow_destination]* %18, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %204, i32 0, i32 1
  store i32 %201, i32* %205, align 4
  %206 = load %struct.mlx5_ib_mcounters*, %struct.mlx5_ib_mcounters** %27, align 8
  %207 = getelementptr inbounds %struct.mlx5_ib_mcounters, %struct.mlx5_ib_mcounters* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @mlx5_fc_id(i32 %208)
  %210 = load i32, i32* %24, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [2 x %struct.mlx5_flow_destination], [2 x %struct.mlx5_flow_destination]* %18, i64 0, i64 %211
  %213 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %212, i32 0, i32 0
  store i32 %209, i32* %213, align 8
  %214 = load i32, i32* %24, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %24, align 4
  br label %216

216:                                              ; preds = %193, %179
  %217 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DROP, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  store %struct.mlx5_flow_destination* null, %struct.mlx5_flow_destination** %19, align 8
  store i32 0, i32* %24, align 4
  br label %229

229:                                              ; preds = %228, %222
  br label %251

230:                                              ; preds = %216
  %231 = load i32, i32* %25, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ALLOW, align 4
  %235 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %234
  store i32 %237, i32* %235, align 8
  br label %250

238:                                              ; preds = %230
  %239 = load i32, i32* %24, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  br label %245

243:                                              ; preds = %238
  %244 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO, align 4
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i32 [ %242, %241 ], [ %244, %243 ]
  %247 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %16, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %246
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %245, %233
  br label %251

251:                                              ; preds = %250, %229
  %252 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %253 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @FLOW_CONTEXT_HAS_TAG, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %251
  %260 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %261 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @IB_FLOW_ATTR_ALL_DEFAULT, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %271, label %265

265:                                              ; preds = %259
  %266 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %267 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IB_FLOW_ATTR_MC_DEFAULT, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %283

271:                                              ; preds = %265, %259
  %272 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %273 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %274 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %10, align 8
  %278 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %272, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %276, i32 %279)
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %23, align 4
  br label %315

283:                                              ; preds = %265, %251
  %284 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %285 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %286 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %19, align 8
  %287 = load i32, i32* %24, align 4
  %288 = call i32 @mlx5_add_flow_rules(%struct.mlx5_flow_table* %284, %struct.mlx5_flow_spec* %285, %struct.mlx5_flow_act* %16, %struct.mlx5_flow_destination* %286, i32 %287)
  %289 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %290 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 8
  %291 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %292 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = call i64 @IS_ERR(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %283
  %297 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %298 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @PTR_ERR(i32 %299)
  store i32 %300, i32* %23, align 4
  br label %315

301:                                              ; preds = %283
  %302 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %9, align 8
  %303 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 8
  %306 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %9, align 8
  %307 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %308 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %307, i32 0, i32 2
  store %struct.mlx5_ib_flow_prio* %306, %struct.mlx5_ib_flow_prio** %308, align 8
  %309 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %310 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %311 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %310, i32 0, i32 1
  store %struct.mlx5_ib_dev* %309, %struct.mlx5_ib_dev** %311, align 8
  %312 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %313 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %9, align 8
  %314 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %313, i32 0, i32 0
  store %struct.mlx5_flow_table* %312, %struct.mlx5_flow_table** %314, align 8
  br label %315

315:                                              ; preds = %301, %296, %271, %192, %176, %151, %107, %74
  %316 = load i32, i32* %23, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %341

318:                                              ; preds = %315
  %319 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %320 = icmp ne %struct.mlx5_ib_flow_handler* %319, null
  br i1 %320, label %321, label %341

321:                                              ; preds = %318
  %322 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %323 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %322, i32 0, i32 0
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %323, align 8
  %325 = icmp ne %struct.TYPE_8__* %324, null
  br i1 %325, label %326, label %338

326:                                              ; preds = %321
  %327 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %328 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %327, i32 0, i32 0
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = call i32 @atomic_read(i32* %330)
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %338

333:                                              ; preds = %326
  %334 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %335 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %334, i32 0, i32 0
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = call i32 @counters_clear_description(%struct.TYPE_8__* %336)
  br label %338

338:                                              ; preds = %333, %326, %321
  %339 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  %340 = call i32 @kfree(%struct.mlx5_ib_flow_handler* %339)
  br label %341

341:                                              ; preds = %338, %318, %315
  %342 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %17, align 8
  %343 = call i32 @kvfree(%struct.mlx5_flow_spec* %342)
  %344 = load i32, i32* %23, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %341
  %347 = load i32, i32* %23, align 4
  %348 = call %struct.mlx5_ib_flow_handler* @ERR_PTR(i32 %347)
  br label %351

349:                                              ; preds = %341
  %350 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %15, align 8
  br label %351

351:                                              ; preds = %349, %346
  %352 = phi %struct.mlx5_ib_flow_handler* [ %348, %346 ], [ %350, %349 ]
  store %struct.mlx5_ib_flow_handler* %352, %struct.mlx5_ib_flow_handler** %7, align 8
  br label %353

353:                                              ; preds = %351, %60, %48
  %354 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %7, align 8
  ret %struct.mlx5_ib_flow_handler* %354
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_valid_attr(i32, %struct.ib_flow_attr*) #2

declare dso_local %struct.mlx5_ib_flow_handler* @ERR_PTR(i32) #2

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local %struct.mlx5_ib_flow_handler* @kzalloc(i32, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @memcpy(%struct.mlx5_flow_destination*, %struct.mlx5_flow_destination*, i32) #2

declare dso_local i32 @parse_flow_attr(i32, %struct.mlx5_flow_spec*, i8*, %struct.ib_flow_attr*, %struct.mlx5_flow_act*, i32) #2

declare dso_local i32 @flow_is_multicast_only(%struct.ib_flow_attr*) #2

declare dso_local i32 @set_underlay_qp(%struct.mlx5_ib_dev*, %struct.mlx5_flow_spec*, i32) #2

declare dso_local i32 @mlx5_ib_set_rule_source_port(%struct.mlx5_ib_dev*, %struct.mlx5_flow_spec*, %struct.mlx5_eswitch_rep*) #2

declare dso_local i32 @get_match_criteria_enable(i32) #2

declare dso_local i32 @is_valid_spec(i32, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, i32) #2

declare dso_local i32 @flow_counters_set_data(%struct.TYPE_8__*, %struct.mlx5_ib_create_flow*) #2

declare dso_local %struct.mlx5_ib_mcounters* @to_mcounters(%struct.TYPE_8__*) #2

declare dso_local i32 @mlx5_fc_id(i32) #2

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #2

declare dso_local i32 @mlx5_add_flow_rules(%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @counters_clear_description(%struct.TYPE_8__*) #2

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_handler*) #2

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
