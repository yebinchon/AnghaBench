; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_is_valid_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_is_valid_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_flow_act = type { i32 }

@VALID_SPEC_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, i32)* @is_valid_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_spec(%struct.mlx5_core_dev* %0, %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_act* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_flow_spec*, align 8
  %7 = alloca %struct.mlx5_flow_act*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %6, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %10 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %6, align 8
  %11 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @is_valid_esp_aes_gcm(%struct.mlx5_core_dev* %9, %struct.mlx5_flow_spec* %10, %struct.mlx5_flow_act* %11, i32 %12)
  %14 = load i64, i64* @VALID_SPEC_INVALID, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @is_valid_esp_aes_gcm(%struct.mlx5_core_dev*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
