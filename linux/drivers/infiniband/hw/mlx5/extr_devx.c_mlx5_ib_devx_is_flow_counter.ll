; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_mlx5_ib_devx_is_flow_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_mlx5_ib_devx_is_flow_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devx_obj = type { i32 }

@general_obj_in_cmd_hdr = common dso_local global i32 0, align 4
@MLX5_CMD_OP_DEALLOC_FLOW_COUNTER = common dso_local global i64 0, align 8
@dealloc_flow_counter_in = common dso_local global i32 0, align 4
@flow_counter_id = common dso_local global i32 0, align 4
@opcode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_devx_is_flow_counter(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.devx_obj*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.devx_obj*
  store %struct.devx_obj* %9, %struct.devx_obj** %6, align 8
  %10 = load i32, i32* @general_obj_in_cmd_hdr, align 4
  %11 = load %struct.devx_obj*, %struct.devx_obj** %6, align 8
  %12 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i8* @MLX5_GET(i32 %10, i32 %13, i32 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MLX5_CMD_OP_DEALLOC_FLOW_COUNTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @dealloc_flow_counter_in, align 4
  %23 = load %struct.devx_obj*, %struct.devx_obj** %6, align 8
  %24 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @flow_counter_id, align 4
  %27 = call i8* @MLX5_GET(i32 %22, i32 %25, i32 %26)
  %28 = load i8**, i8*** %5, align 8
  store i8* %27, i8** %28, align 8
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i8* @MLX5_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
