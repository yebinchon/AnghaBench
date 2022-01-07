; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_create_xrc_srq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_create_xrc_srq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_core_srq = type { i32, i32 }
%struct.mlx5_srq_attr = type { i32, i32, i32 }

@create_xrc_srq_out = common dso_local global i32 0, align 4
@create_xrc_srq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@xrc_srq_context_entry = common dso_local global i8* null, align 8
@user_index = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_XRC_SRQ = common dso_local global i32 0, align 4
@xrc_srqn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*)* @create_xrc_srq_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_xrc_srq_cmd(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  %7 = alloca %struct.mlx5_srq_attr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %6, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %7, align 8
  %17 = load i32, i32* @create_xrc_srq_out, align 4
  %18 = call i32 @MLX5_ST_SZ_DW(i32 %17)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %23 = call i32 @get_pas_size(%struct.mlx5_srq_attr* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** @create_xrc_srq_in, align 8
  %25 = call i32 @MLX5_ST_SZ_BYTES(i8* %24)
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kvzalloc(i32 %28, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %102

36:                                               ; preds = %3
  %37 = load i8*, i8** @create_xrc_srq_in, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @uid, align 4
  %40 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MLX5_SET(i8* %37, i8* %38, i32 %39, i32 %42)
  %44 = load i8*, i8** @create_xrc_srq_in, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** @xrc_srq_context_entry, align 8
  %47 = call i8* @MLX5_ADDR_OF(i8* %44, i8* %45, i8* %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** @create_xrc_srq_in, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i8* @MLX5_ADDR_OF(i8* %48, i8* %49, i8* %50)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %54 = call i32 @set_srqc(i8* %52, %struct.mlx5_srq_attr* %53)
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @user_index, align 4
  %58 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MLX5_SET(i8* %55, i8* %56, i32 %57, i32 %60)
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %64 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @memcpy(i8* %62, i32 %65, i32 %66)
  %68 = load i8*, i8** @create_xrc_srq_in, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* @opcode, align 4
  %71 = load i32, i32* @MLX5_CMD_OP_CREATE_XRC_SRQ, align 4
  %72 = call i32 @MLX5_SET(i8* %68, i8* %69, i32 %70, i32 %71)
  %73 = mul nuw i64 4, %19
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i32* %21, i32 0, i32 %74)
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %77 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %14, align 4
  %81 = mul nuw i64 4, %19
  %82 = trunc i64 %81 to i32
  %83 = call i32 @mlx5_cmd_exec(i32 %78, i8* %79, i32 %80, i32* %21, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %36
  br label %98

87:                                               ; preds = %36
  %88 = load i32, i32* @create_xrc_srq_out, align 4
  %89 = load i32, i32* @xrc_srqn, align 4
  %90 = call i32 @MLX5_GET(i32 %88, i32* %21, i32 %89)
  %91 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %92 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %94 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %86
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @kvfree(i8* %99)
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %102

102:                                              ; preds = %98, %33
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_pas_size(%struct.mlx5_srq_attr*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @set_srqc(i8*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
