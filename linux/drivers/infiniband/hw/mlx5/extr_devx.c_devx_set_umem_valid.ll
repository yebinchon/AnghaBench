; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_set_umem_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_set_umem_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@general_obj_in_cmd_hdr = common dso_local global i32 0, align 4
@create_mkey_in = common dso_local global i8* null, align 8
@mkey_umem_valid = common dso_local global i32 0, align 4
@create_cq_in = common dso_local global i8* null, align 8
@cq_umem_valid = common dso_local global i32 0, align 4
@cq_context = common dso_local global i8* null, align 8
@dbr_umem_valid = common dso_local global i32 0, align 4
@create_qp_in = common dso_local global i8* null, align 8
@wq_umem_valid = common dso_local global i32 0, align 4
@create_rq_in = common dso_local global i8* null, align 8
@ctx = common dso_local global i8* null, align 8
@create_sq_in = common dso_local global i8* null, align 8
@modify_cq_in = common dso_local global i8* null, align 8
@create_rmp_in = common dso_local global i8* null, align 8
@create_xrq_in = common dso_local global i8* null, align 8
@xrq_context = common dso_local global i8* null, align 8
@create_xrc_srq_in = common dso_local global i8* null, align 8
@xrc_srq_umem_valid = common dso_local global i32 0, align 4
@xrc_srq_context_entry = common dso_local global i8* null, align 8
@opcode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @devx_set_umem_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devx_set_umem_valid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %15 = load i32, i32* @general_obj_in_cmd_hdr, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @MLX5_GET(i32 %15, i8* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %137 [
    i32 135, label %20
    i32 136, label %25
    i32 134, label %38
    i32 132, label %51
    i32 131, label %68
    i32 128, label %85
    i32 133, label %90
    i32 129, label %107
    i32 130, label %124
  ]

20:                                               ; preds = %1
  %21 = load i8*, i8** @create_mkey_in, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @mkey_umem_valid, align 4
  %24 = call i32 @MLX5_SET(i8* %21, i8* %22, i32 %23, i32 1)
  br label %138

25:                                               ; preds = %1
  %26 = load i8*, i8** @create_cq_in, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @cq_umem_valid, align 4
  %29 = call i32 @MLX5_SET(i8* %26, i8* %27, i32 %28, i32 1)
  %30 = load i8*, i8** @create_cq_in, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = load i8*, i8** @cq_context, align 8
  %33 = call i8* @MLX5_ADDR_OF(i8* %30, i8* %31, i8* %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @dbr_umem_valid, align 4
  %37 = call i32 @MLX5_SET(i8* %34, i8* %35, i32 %36, i32 1)
  br label %138

38:                                               ; preds = %1
  %39 = load i8*, i8** @create_qp_in, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @MLX5_ADDR_OF(i8* %39, i8* %40, i8* %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @dbr_umem_valid, align 4
  %46 = call i32 @MLX5_SET(i8* %43, i8* %44, i32 %45, i32 1)
  %47 = load i8*, i8** @create_qp_in, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* @wq_umem_valid, align 4
  %50 = call i32 @MLX5_SET(i8* %47, i8* %48, i32 %49, i32 1)
  br label %138

51:                                               ; preds = %1
  %52 = load i8*, i8** @create_rq_in, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = load i8*, i8** @ctx, align 8
  %55 = call i8* @MLX5_ADDR_OF(i8* %52, i8* %53, i8* %54)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @MLX5_ADDR_OF(i8* %56, i8* %57, i8* %58)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @dbr_umem_valid, align 4
  %63 = call i32 @MLX5_SET(i8* %60, i8* %61, i32 %62, i32 1)
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @wq_umem_valid, align 4
  %67 = call i32 @MLX5_SET(i8* %64, i8* %65, i32 %66, i32 1)
  br label %138

68:                                               ; preds = %1
  %69 = load i8*, i8** @create_sq_in, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = load i8*, i8** @ctx, align 8
  %72 = call i8* @MLX5_ADDR_OF(i8* %69, i8* %70, i8* %71)
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i8* @MLX5_ADDR_OF(i8* %73, i8* %74, i8* %75)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @dbr_umem_valid, align 4
  %80 = call i32 @MLX5_SET(i8* %77, i8* %78, i32 %79, i32 1)
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* @wq_umem_valid, align 4
  %84 = call i32 @MLX5_SET(i8* %81, i8* %82, i32 %83, i32 1)
  br label %138

85:                                               ; preds = %1
  %86 = load i8*, i8** @modify_cq_in, align 8
  %87 = load i8*, i8** %2, align 8
  %88 = load i32, i32* @cq_umem_valid, align 4
  %89 = call i32 @MLX5_SET(i8* %86, i8* %87, i32 %88, i32 1)
  br label %138

90:                                               ; preds = %1
  %91 = load i8*, i8** @create_rmp_in, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = load i8*, i8** @ctx, align 8
  %94 = call i8* @MLX5_ADDR_OF(i8* %91, i8* %92, i8* %93)
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i8* @MLX5_ADDR_OF(i8* %95, i8* %96, i8* %97)
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* @dbr_umem_valid, align 4
  %102 = call i32 @MLX5_SET(i8* %99, i8* %100, i32 %101, i32 1)
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* @wq_umem_valid, align 4
  %106 = call i32 @MLX5_SET(i8* %103, i8* %104, i32 %105, i32 1)
  br label %138

107:                                              ; preds = %1
  %108 = load i8*, i8** @create_xrq_in, align 8
  %109 = load i8*, i8** %2, align 8
  %110 = load i8*, i8** @xrq_context, align 8
  %111 = call i8* @MLX5_ADDR_OF(i8* %108, i8* %109, i8* %110)
  store i8* %111, i8** %12, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = call i8* @MLX5_ADDR_OF(i8* %112, i8* %113, i8* %114)
  store i8* %115, i8** %13, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load i32, i32* @dbr_umem_valid, align 4
  %119 = call i32 @MLX5_SET(i8* %116, i8* %117, i32 %118, i32 1)
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* @wq_umem_valid, align 4
  %123 = call i32 @MLX5_SET(i8* %120, i8* %121, i32 %122, i32 1)
  br label %138

124:                                              ; preds = %1
  %125 = load i8*, i8** @create_xrc_srq_in, align 8
  %126 = load i8*, i8** %2, align 8
  %127 = load i32, i32* @xrc_srq_umem_valid, align 4
  %128 = call i32 @MLX5_SET(i8* %125, i8* %126, i32 %127, i32 1)
  %129 = load i8*, i8** @create_xrc_srq_in, align 8
  %130 = load i8*, i8** %2, align 8
  %131 = load i8*, i8** @xrc_srq_context_entry, align 8
  %132 = call i8* @MLX5_ADDR_OF(i8* %129, i8* %130, i8* %131)
  store i8* %132, i8** %14, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = load i32, i32* @dbr_umem_valid, align 4
  %136 = call i32 @MLX5_SET(i8* %133, i8* %134, i32 %135, i32 1)
  br label %138

137:                                              ; preds = %1
  br label %138

138:                                              ; preds = %137, %124, %107, %90, %85, %68, %51, %38, %25, %20
  ret void
}

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
