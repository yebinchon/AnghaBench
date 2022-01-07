; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_raw_fs_rule_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_raw_fs_rule_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_handler = type { %struct.mlx5_ib_flow_matcher* }
%struct.mlx5_ib_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_flow_matcher = type { i64, i64, i32 }
%struct.mlx5_flow_context = type { i32 }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32, i32, i32 }
%struct.mlx5_ib_flow_prio = type { %struct.mlx5_ib_flow_matcher* }

@MLX5_IB_FLOW_TYPE_NORMAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_IB_FLOW_LAST_PRIO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_PORT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ALLOW = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_COUNTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_ib_flow_handler* @mlx5_ib_raw_fs_rule_add(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_matcher* %1, %struct.mlx5_flow_context* %2, %struct.mlx5_flow_act* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %11 = alloca %struct.mlx5_ib_dev*, align 8
  %12 = alloca %struct.mlx5_ib_flow_matcher*, align 8
  %13 = alloca %struct.mlx5_flow_context*, align 8
  %14 = alloca %struct.mlx5_flow_act*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mlx5_flow_destination*, align 8
  %21 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %22 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %11, align 8
  store %struct.mlx5_ib_flow_matcher* %1, %struct.mlx5_ib_flow_matcher** %12, align 8
  store %struct.mlx5_flow_context* %2, %struct.mlx5_flow_context** %13, align 8
  store %struct.mlx5_flow_act* %3, %struct.mlx5_flow_act** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %23, align 4
  %26 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %12, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MLX5_IB_FLOW_TYPE_NORMAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %9
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.mlx5_ib_flow_prio* @ERR_PTR(i32 %33)
  %35 = bitcast %struct.mlx5_ib_flow_prio* %34 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %35, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %207

36:                                               ; preds = %9
  %37 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %12, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MLX5_IB_FLOW_LAST_PRIO, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.mlx5_ib_flow_prio* @ERR_PTR(i32 %44)
  %46 = bitcast %struct.mlx5_ib_flow_prio* %45 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %46, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %207

47:                                               ; preds = %36
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.mlx5_flow_destination* @kcalloc(i32 2, i32 16, i32 %48)
  store %struct.mlx5_flow_destination* %49, %struct.mlx5_flow_destination** %20, align 8
  %50 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %51 = icmp ne %struct.mlx5_flow_destination* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.mlx5_ib_flow_prio* @ERR_PTR(i32 %54)
  %56 = bitcast %struct.mlx5_ib_flow_prio* %55 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %56, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %207

57:                                               ; preds = %47
  %58 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %12, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @raw_fs_is_multicast(%struct.mlx5_ib_flow_matcher* %58, i8* %59)
  store i32 %60, i32* %24, align 4
  %61 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %67 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %12, align 8
  %68 = load i32, i32* %24, align 4
  %69 = call %struct.mlx5_ib_flow_prio* @_get_flow_table(%struct.mlx5_ib_dev* %66, %struct.mlx5_ib_flow_matcher* %67, i32 %68)
  store %struct.mlx5_ib_flow_prio* %69, %struct.mlx5_ib_flow_prio** %21, align 8
  %70 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %21, align 8
  %71 = call i64 @IS_ERR(%struct.mlx5_ib_flow_prio* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %21, align 8
  %75 = call i32 @PTR_ERR(%struct.mlx5_ib_flow_prio* %74)
  store i32 %75, i32* %25, align 4
  br label %196

76:                                               ; preds = %57
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i32, i32* %19, align 4
  %82 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %83 = load i32, i32* %23, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %82, i64 %84
  %86 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %89 = load i32, i32* %23, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %88, i64 %90
  %92 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %91, i32 0, i32 1
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %94 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %14, align 8
  %95 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %133

98:                                               ; preds = %76
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM, align 4
  %104 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %105 = load i32, i32* %23, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %104, i64 %106
  %108 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %111 = load i32, i32* %23, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %110, i64 %112
  %114 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %113, i32 0, i32 2
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %116 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %14, align 8
  %117 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %132

120:                                              ; preds = %98
  %121 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_PORT, align 4
  %122 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %123 = load i32, i32* %23, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %122, i64 %124
  %126 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 4
  %127 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ALLOW, align 4
  %128 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %14, align 8
  %129 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %120, %102
  br label %133

133:                                              ; preds = %132, %80
  %134 = load i32, i32* %23, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %23, align 4
  %136 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %14, align 8
  %137 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %133
  %143 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_COUNTER, align 4
  %144 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %145 = load i32, i32* %23, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %144, i64 %146
  %148 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %147, i32 0, i32 0
  store i32 %143, i32* %148, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %151 = load i32, i32* %23, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %150, i64 %152
  %154 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %153, i32 0, i32 3
  store i32 %149, i32* %154, align 4
  %155 = load i32, i32* %23, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %23, align 4
  br label %157

157:                                              ; preds = %142, %133
  %158 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %159 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %21, align 8
  %160 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %161 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %12, align 8
  %162 = load %struct.mlx5_flow_context*, %struct.mlx5_flow_context** %13, align 8
  %163 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %14, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %23, align 4
  %167 = call %struct.mlx5_ib_flow_prio* @_create_raw_flow_rule(%struct.mlx5_ib_dev* %158, %struct.mlx5_ib_flow_prio* %159, %struct.mlx5_flow_destination* %160, %struct.mlx5_ib_flow_matcher* %161, %struct.mlx5_flow_context* %162, %struct.mlx5_flow_act* %163, i8* %164, i32 %165, i32 %166)
  %168 = bitcast %struct.mlx5_ib_flow_prio* %167 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %168, %struct.mlx5_ib_flow_handler** %22, align 8
  %169 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %22, align 8
  %170 = bitcast %struct.mlx5_ib_flow_handler* %169 to %struct.mlx5_ib_flow_prio*
  %171 = call i64 @IS_ERR(%struct.mlx5_ib_flow_prio* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %157
  %174 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %22, align 8
  %175 = bitcast %struct.mlx5_ib_flow_handler* %174 to %struct.mlx5_ib_flow_prio*
  %176 = call i32 @PTR_ERR(%struct.mlx5_ib_flow_prio* %175)
  store i32 %176, i32* %25, align 4
  br label %192

177:                                              ; preds = %157
  %178 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %179 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = call i32 @mutex_unlock(i32* %181)
  %183 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %12, align 8
  %184 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, %struct.mlx5_ib_flow_matcher* %183, i32 0, i32 2
  %185 = call i32 @atomic_inc(i32* %184)
  %186 = load %struct.mlx5_ib_flow_matcher*, %struct.mlx5_ib_flow_matcher** %12, align 8
  %187 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %22, align 8
  %188 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %187, i32 0, i32 0
  store %struct.mlx5_ib_flow_matcher* %186, %struct.mlx5_ib_flow_matcher** %188, align 8
  %189 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %190 = call i32 @kfree(%struct.mlx5_flow_destination* %189)
  %191 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %22, align 8
  store %struct.mlx5_ib_flow_handler* %191, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %207

192:                                              ; preds = %173
  %193 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %194 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %21, align 8
  %195 = call i32 @put_flow_table(%struct.mlx5_ib_dev* %193, %struct.mlx5_ib_flow_prio* %194, i32 0)
  br label %196

196:                                              ; preds = %192, %73
  %197 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %198 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %197, i32 0, i32 0
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %20, align 8
  %203 = call i32 @kfree(%struct.mlx5_flow_destination* %202)
  %204 = load i32, i32* %25, align 4
  %205 = call %struct.mlx5_ib_flow_prio* @ERR_PTR(i32 %204)
  %206 = bitcast %struct.mlx5_ib_flow_prio* %205 to %struct.mlx5_ib_flow_handler*
  store %struct.mlx5_ib_flow_handler* %206, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %207

207:                                              ; preds = %196, %177, %52, %42, %31
  %208 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  ret %struct.mlx5_ib_flow_handler* %208
}

declare dso_local %struct.mlx5_ib_flow_prio* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_destination* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @raw_fs_is_multicast(%struct.mlx5_ib_flow_matcher*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @_get_flow_table(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_matcher*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_flow_prio*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_ib_flow_prio*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @_create_raw_flow_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.mlx5_flow_destination*, %struct.mlx5_ib_flow_matcher*, %struct.mlx5_flow_context*, %struct.mlx5_flow_act*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_destination*) #1

declare dso_local i32 @put_flow_table(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
