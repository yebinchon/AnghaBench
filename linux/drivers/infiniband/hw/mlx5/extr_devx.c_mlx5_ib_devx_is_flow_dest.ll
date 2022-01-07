; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_mlx5_ib_devx_is_flow_dest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_mlx5_ib_devx_is_flow_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devx_obj = type { i32 }

@general_obj_in_cmd_hdr = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@obj_id = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@destroy_flow_table_in = common dso_local global i32 0, align 4
@table_id = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_devx_is_flow_dest(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.devx_obj*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.devx_obj*
  store %struct.devx_obj* %11, %struct.devx_obj** %8, align 8
  %12 = load i32, i32* @general_obj_in_cmd_hdr, align 4
  %13 = load %struct.devx_obj*, %struct.devx_obj** %8, align 8
  %14 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @MLX5_GET(i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %39 [
    i32 128, label %19
    i32 129, label %29
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @general_obj_in_cmd_hdr, align 4
  %23 = load %struct.devx_obj*, %struct.devx_obj** %8, align 8
  %24 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @obj_id, align 4
  %27 = call i32 @MLX5_GET(i32 %22, i32 %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  store i32 1, i32* %4, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @destroy_flow_table_in, align 4
  %33 = load %struct.devx_obj*, %struct.devx_obj** %8, align 8
  %34 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @table_id, align 4
  %37 = call i32 @MLX5_GET(i32 %32, i32 %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %4, align 4
  br label %40

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %29, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
