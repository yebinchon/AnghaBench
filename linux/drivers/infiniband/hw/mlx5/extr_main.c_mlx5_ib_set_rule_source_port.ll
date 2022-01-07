; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_set_rule_source_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_set_rule_source_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32 }
%struct.mlx5_eswitch_rep = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters_2 = common dso_local global i32 0, align 4
@fte_match_set_misc2 = common dso_local global i32 0, align 4
@metadata_reg_c_0 = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_flow_spec*, %struct.mlx5_eswitch_rep*)* @mlx5_ib_set_rule_source_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_set_rule_source_port(%struct.mlx5_ib_dev* %0, %struct.mlx5_flow_spec* %1, %struct.mlx5_eswitch_rep* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_flow_spec*, align 8
  %6 = alloca %struct.mlx5_eswitch_rep*, align 8
  %7 = alloca %struct.mlx5_eswitch*, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %5, align 8
  store %struct.mlx5_eswitch_rep* %2, %struct.mlx5_eswitch_rep** %6, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %13, align 8
  store %struct.mlx5_eswitch* %14, %struct.mlx5_eswitch** %7, align 8
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %16 = call i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load i32, i32* @fte_match_param, align 4
  %20 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @misc_parameters_2, align 4
  %24 = call i8* @MLX5_ADDR_OF(i32 %19, i32 %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i32, i32* @fte_match_set_misc2, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @metadata_reg_c_0, align 4
  %28 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %29 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlx5_eswitch_get_vport_metadata_for_match(%struct.mlx5_eswitch* %28, i32 %31)
  %33 = call i32 @MLX5_SET(i32 %25, i8* %26, i32 %27, i32 %32)
  %34 = load i32, i32* @fte_match_param, align 4
  %35 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @misc_parameters_2, align 4
  %39 = call i8* @MLX5_ADDR_OF(i32 %34, i32 %37, i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* @fte_match_set_misc2, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @metadata_reg_c_0, align 4
  %43 = call i32 @MLX5_SET_TO_ONES(i32 %40, i8* %41, i32 %42)
  br label %68

44:                                               ; preds = %3
  %45 = load i32, i32* @fte_match_param, align 4
  %46 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @misc_parameters, align 4
  %50 = call i8* @MLX5_ADDR_OF(i32 %45, i32 %48, i32 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i32, i32* @fte_match_set_misc, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @source_port, align 4
  %54 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MLX5_SET(i32 %51, i8* %52, i32 %53, i32 %56)
  %58 = load i32, i32* @fte_match_param, align 4
  %59 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %60 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @misc_parameters, align 4
  %63 = call i8* @MLX5_ADDR_OF(i32 %58, i32 %61, i32 %62)
  store i8* %63, i8** %8, align 8
  %64 = load i32, i32* @fte_match_set_misc, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* @source_port, align 4
  %67 = call i32 @MLX5_SET_TO_ONES(i32 %64, i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %44, %18
  ret void
}

declare dso_local i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
