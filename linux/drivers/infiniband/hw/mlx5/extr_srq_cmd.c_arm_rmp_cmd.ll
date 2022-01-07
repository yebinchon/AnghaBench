; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_arm_rmp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_arm_rmp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_core_srq = type { i32, i32 }

@modify_rmp_in = common dso_local global i8* null, align 8
@modify_rmp_out = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@rmp_state = common dso_local global i32 0, align 4
@MLX5_RMPC_STATE_RDY = common dso_local global i32 0, align 4
@rmpn = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@rmp_bitmask = common dso_local global i8* null, align 8
@state = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_MODIFY_RMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, i32)* @arm_rmp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_rmp_cmd(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_core_srq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i8*, i8** @modify_rmp_in, align 8
  %16 = call i32 @MLX5_ST_SZ_BYTES(i8* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i8*, i8** @modify_rmp_out, align 8
  %18 = call i32 @MLX5_ST_SZ_BYTES(i8* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kvzalloc(i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kvzalloc(i32 %22, i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %14, align 4
  br label %92

33:                                               ; preds = %27
  %34 = load i8*, i8** @modify_rmp_in, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** @ctx, align 8
  %37 = call i8* @MLX5_ADDR_OF(i8* %34, i8* %35, i8* %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** @modify_rmp_in, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i8* @MLX5_ADDR_OF(i8* %38, i8* %39, i8* %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @MLX5_ADDR_OF(i8* %42, i8* %43, i8* %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** @modify_rmp_in, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @rmp_state, align 4
  %49 = load i32, i32* @MLX5_RMPC_STATE_RDY, align 4
  %50 = call i32 @MLX5_SET(i8* %46, i8* %47, i32 %48, i32 %49)
  %51 = load i8*, i8** @modify_rmp_in, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @rmpn, align 4
  %54 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MLX5_SET(i8* %51, i8* %52, i32 %53, i32 %56)
  %58 = load i8*, i8** @modify_rmp_in, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @uid, align 4
  %61 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %62 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MLX5_SET(i8* %58, i8* %59, i32 %60, i32 %63)
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @MLX5_SET(i8* %65, i8* %66, i32 %67, i32 %68)
  %70 = load i8*, i8** @rmp_bitmask, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @MLX5_SET(i8* %70, i8* %71, i32 %72, i32 1)
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* @state, align 4
  %77 = load i32, i32* @MLX5_RMPC_STATE_RDY, align 4
  %78 = call i32 @MLX5_SET(i8* %74, i8* %75, i32 %76, i32 %77)
  %79 = load i8*, i8** @modify_rmp_in, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* @opcode, align 4
  %82 = load i32, i32* @MLX5_CMD_OP_MODIFY_RMP, align 4
  %83 = call i32 @MLX5_SET(i8* %79, i8* %80, i32 %81, i32 %82)
  %84 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @mlx5_cmd_exec(i32 %86, i8* %87, i32 %88, i8* %89, i32 %90)
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %33, %30
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @kvfree(i8* %93)
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @kvfree(i8* %95)
  %97 = load i32, i32* %14, align 4
  ret i32 %97
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
