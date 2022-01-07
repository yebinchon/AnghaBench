; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_modify_flow_action_esp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_modify_flow_action_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_action = type { i32 }
%struct.ib_flow_action_attrs_esp = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.mlx5_ib_flow_action = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32 }

@IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED = common dso_local global i32 0, align 4
@IB_FLOW_ACTION_ESP_FLAGS_MOD_ESP_ATTRS = common dso_local global i32 0, align 4
@IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow_action*, %struct.ib_flow_action_attrs_esp*, %struct.uverbs_attr_bundle*)* @mlx5_ib_modify_flow_action_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_modify_flow_action_esp(%struct.ib_flow_action* %0, %struct.ib_flow_action_attrs_esp* %1, %struct.uverbs_attr_bundle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_flow_action*, align 8
  %6 = alloca %struct.ib_flow_action_attrs_esp*, align 8
  %7 = alloca %struct.uverbs_attr_bundle*, align 8
  %8 = alloca %struct.mlx5_ib_flow_action*, align 8
  %9 = alloca %struct.mlx5_accel_esp_xfrm_attrs, align 4
  %10 = alloca i32, align 4
  store %struct.ib_flow_action* %0, %struct.ib_flow_action** %5, align 8
  store %struct.ib_flow_action_attrs_esp* %1, %struct.ib_flow_action_attrs_esp** %6, align 8
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %7, align 8
  %11 = load %struct.ib_flow_action*, %struct.ib_flow_action** %5, align 8
  %12 = call %struct.mlx5_ib_flow_action* @to_mflow_act(%struct.ib_flow_action* %11)
  store %struct.mlx5_ib_flow_action* %12, %struct.mlx5_ib_flow_action** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %14 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %3
  %18 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %19 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %17
  %23 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %24 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %22
  %28 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %29 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %27
  %33 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %34 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %39 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %44 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %49 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED, align 4
  %52 = load i32, i32* @IB_FLOW_ACTION_ESP_FLAGS_MOD_ESP_ATTRS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %50, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47, %42, %37, %32, %27, %22, %17, %3
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %138

62:                                               ; preds = %47
  %63 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %8, align 8
  %64 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %62
  %71 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %72 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED, align 4
  %75 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %138

82:                                               ; preds = %70, %62
  %83 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %8, align 8
  %84 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @memcpy(%struct.mlx5_accel_esp_xfrm_attrs* %9, i32* %87, i32 8)
  %89 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %90 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %94 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %82
  %100 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP, align 4
  %101 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %110

104:                                              ; preds = %82
  %105 = load i32, i32* @MLX5_ACCEL_ESP_FLAGS_ESN_STATE_OVERLAP, align 4
  %106 = xor i32 %105, -1
  %107 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, %struct.mlx5_accel_esp_xfrm_attrs* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %8, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = call i32 @mlx5_accel_esp_modify_xfrm(%struct.TYPE_4__* %114, %struct.mlx5_accel_esp_xfrm_attrs* %9)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %138

120:                                              ; preds = %110
  %121 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %8, align 8
  %124 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load %struct.ib_flow_action_attrs_esp*, %struct.ib_flow_action_attrs_esp** %6, align 8
  %129 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, %struct.ib_flow_action_attrs_esp* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IB_UVERBS_FLOW_ACTION_ESP_FLAGS_ESN_NEW_WINDOW, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %8, align 8
  %134 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %120, %118, %79, %59
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.mlx5_ib_flow_action* @to_mflow_act(%struct.ib_flow_action*) #1

declare dso_local i32 @memcpy(%struct.mlx5_accel_esp_xfrm_attrs*, i32*, i32) #1

declare dso_local i32 @mlx5_accel_esp_modify_xfrm(%struct.TYPE_4__*, %struct.mlx5_accel_esp_xfrm_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
