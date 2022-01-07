; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_query_xrc_srq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_query_xrc_srq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_core_srq = type { i32 }
%struct.mlx5_srq_attr = type { i32 }

@query_xrc_srq_in = common dso_local global i32 0, align 4
@query_xrc_srq_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_XRC_SRQ = common dso_local global i32 0, align 4
@xrc_srqn = common dso_local global i32 0, align 4
@xrc_srq_context_entry = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_XRC_SRQC_STATE_GOOD = common dso_local global i64 0, align 8
@MLX5_SRQ_FLAG_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*)* @query_xrc_srq_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_xrc_srq_cmd(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  %7 = alloca %struct.mlx5_srq_attr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %6, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %7, align 8
  %14 = load i32, i32* @query_xrc_srq_in, align 4
  %15 = call i32 @MLX5_ST_SZ_DW(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @query_xrc_srq_out, align 4
  %20 = call i32 @MLX5_ST_SZ_BYTES(i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kvzalloc(i32 %20, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

28:                                               ; preds = %3
  %29 = mul nuw i64 4, %16
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %18, i32 0, i32 %30)
  %32 = load i32, i32* @query_xrc_srq_in, align 4
  %33 = load i32, i32* @opcode, align 4
  %34 = load i32, i32* @MLX5_CMD_OP_QUERY_XRC_SRQ, align 4
  %35 = call i32 @MLX5_SET(i32 %32, i32* %18, i32 %33, i32 %34)
  %36 = load i32, i32* @query_xrc_srq_in, align 4
  %37 = load i32, i32* @xrc_srqn, align 4
  %38 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MLX5_SET(i32 %36, i32* %18, i32 %37, i32 %40)
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nuw i64 4, %16
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @query_xrc_srq_out, align 4
  %49 = call i32 @MLX5_ST_SZ_BYTES(i32 %48)
  %50 = call i32 @mlx5_cmd_exec(i32 %44, i32* %18, i32 %46, i32* %47, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %28
  br label %75

54:                                               ; preds = %28
  %55 = load i32, i32* @query_xrc_srq_out, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* @xrc_srq_context_entry, align 4
  %58 = call i8* @MLX5_ADDR_OF(i32 %55, i32* %56, i32 %57)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %61 = call i32 @get_srqc(i8* %59, %struct.mlx5_srq_attr* %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @state, align 4
  %65 = call i64 @MLX5_GET(i8* %62, i8* %63, i32 %64)
  %66 = load i64, i64* @MLX5_XRC_SRQC_STATE_GOOD, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load i32, i32* @MLX5_SRQ_FLAG_ERR, align 4
  %70 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %71 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %54
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @kvfree(i32* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %75, %25
  %80 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(i32, i32*, i32, i32*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @get_srqc(i8*, %struct.mlx5_srq_attr*) #1

declare dso_local i64 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
