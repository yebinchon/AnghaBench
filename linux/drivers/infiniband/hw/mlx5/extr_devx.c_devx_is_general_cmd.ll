; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_is_general_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_is_general_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@general_obj_in_cmd_hdr = common dso_local global i32 0, align 4
@vhca_tunnel_commands = common dso_local global i32 0, align 4
@vhca_tunnel_id = common dso_local global i32 0, align 4
@MLX5_CMD_OP_GENERAL_START = common dso_local global i32 0, align 4
@MLX5_CMD_OP_GENERAL_END = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mlx5_ib_dev*)* @devx_is_general_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_is_general_cmd(i8* %0, %struct.mlx5_ib_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.mlx5_ib_dev* %1, %struct.mlx5_ib_dev** %5, align 8
  %7 = load i32, i32* @general_obj_in_cmd_hdr, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @MLX5_GET(i32 %7, i8* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @vhca_tunnel_commands, align 4
  %15 = call i64 @MLX5_CAP_GEN_64(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @general_obj_in_cmd_hdr, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @vhca_tunnel_id, align 4
  %21 = call i32 @MLX5_GET(i32 %18, i8* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MLX5_CMD_OP_GENERAL_START, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MLX5_CMD_OP_GENERAL_END, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %17
  store i32 1, i32* %3, align 4
  br label %36

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %35 [
    i32 136, label %34
    i32 135, label %34
    i32 137, label %34
    i32 128, label %34
    i32 141, label %34
    i32 134, label %34
    i32 132, label %34
    i32 131, label %34
    i32 130, label %34
    i32 129, label %34
    i32 143, label %34
    i32 142, label %34
    i32 138, label %34
    i32 140, label %34
    i32 139, label %34
    i32 133, label %34
  ]

34:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i64 @MLX5_CAP_GEN_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
