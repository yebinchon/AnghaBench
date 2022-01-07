; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_query_rmp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_query_rmp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_core_srq = type { i32 }
%struct.mlx5_srq_attr = type { i32 }

@query_rmp_out = common dso_local global i8* null, align 8
@query_rmp_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_RMP = common dso_local global i32 0, align 4
@rmpn = common dso_local global i32 0, align 4
@rmp_context = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_RMPC_STATE_RDY = common dso_local global i64 0, align 8
@MLX5_SRQ_FLAG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*)* @query_rmp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_rmp_cmd(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_core_srq*, align 8
  %6 = alloca %struct.mlx5_srq_attr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %5, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i8*, i8** @query_rmp_out, align 8
  %14 = call i32 @MLX5_ST_SZ_BYTES(i8* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** @query_rmp_in, align 8
  %16 = call i32 @MLX5_ST_SZ_BYTES(i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kvzalloc(i32 %17, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kvzalloc(i32 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %79

31:                                               ; preds = %25
  %32 = load i8*, i8** @query_rmp_in, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @opcode, align 4
  %35 = load i32, i32* @MLX5_CMD_OP_QUERY_RMP, align 4
  %36 = call i32 @MLX5_SET(i8* %32, i8* %33, i32 %34, i32 %35)
  %37 = load i8*, i8** @query_rmp_in, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @rmpn, align 4
  %40 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MLX5_SET(i8* %37, i8* %38, i32 %39, i32 %42)
  %44 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @mlx5_cmd_exec(i32 %46, i8* %47, i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %31
  br label %79

55:                                               ; preds = %31
  %56 = load i8*, i8** @query_rmp_out, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @rmp_context, align 4
  %59 = call i8* @MLX5_ADDR_OF(i8* %56, i8* %57, i32 %58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @wq, align 4
  %63 = call i8* @MLX5_ADDR_OF(i8* %60, i8* %61, i32 %62)
  %64 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %6, align 8
  %65 = call i32 @get_wq(i8* %63, %struct.mlx5_srq_attr* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* @state, align 4
  %69 = call i64 @MLX5_GET(i8* %66, i8* %67, i32 %68)
  %70 = load i64, i64* @MLX5_RMPC_STATE_RDY, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %55
  %73 = load i32, i32* @MLX5_SRQ_FLAG_ERR, align 4
  %74 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %6, align 8
  %75 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %55
  br label %79

79:                                               ; preds = %78, %54, %28
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @kvfree(i8* %80)
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @kvfree(i8* %82)
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(i32, i8*, i32, i8*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @get_wq(i8*, %struct.mlx5_srq_attr*) #1

declare dso_local i64 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
