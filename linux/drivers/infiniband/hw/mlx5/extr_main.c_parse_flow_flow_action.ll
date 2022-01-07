; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_parse_flow_flow_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_parse_flow_flow_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_action = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_act = type { i32, i64, i32, i32 }

@MLX5_FLOW_CONTEXT_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECRYPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_IB_FLOW_ACTION_MODIFY_HEADER = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_MOD_HDR = common dso_local global i32 0, align 4
@MLX5_IB_FLOW_ACTION_DECAP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECAP = common dso_local global i32 0, align 4
@MLX5_IB_FLOW_ACTION_PACKET_REFORMAT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_flow_flow_action(%struct.mlx5_ib_flow_action* %0, i32 %1, %struct.mlx5_flow_act* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_flow_action*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_act*, align 8
  store %struct.mlx5_ib_flow_action* %0, %struct.mlx5_ib_flow_action** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %7, align 8
  %8 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %126 [
    i32 129, label %12
    i32 128, label %44
  ]

12:                                               ; preds = %3
  %13 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  %17 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECRYPT, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %129

24:                                               ; preds = %12
  %25 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECRYPT, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %129

44:                                               ; preds = %3
  %45 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MLX5_IB_FLOW_ACTION_MODIFY_HEADER, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %53 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %129

61:                                               ; preds = %51
  %62 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %63 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %64 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %129

73:                                               ; preds = %44
  %74 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MLX5_IB_FLOW_ACTION_DECAP, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECAP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %129

90:                                               ; preds = %80
  %91 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECAP, align 4
  %92 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %93 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  store i32 0, i32* %4, align 4
  br label %129

96:                                               ; preds = %73
  %97 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MLX5_IB_FLOW_ACTION_PACKET_REFORMAT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %96
  %104 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %105 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %129

113:                                              ; preds = %103
  %114 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT, align 4
  %115 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %116 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %5, align 8
  %120 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %124 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  store i32 0, i32* %4, align 4
  br label %129

125:                                              ; preds = %96
  br label %126

126:                                              ; preds = %3, %125
  %127 = load i32, i32* @EOPNOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %113, %110, %90, %87, %61, %58, %38, %21
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
