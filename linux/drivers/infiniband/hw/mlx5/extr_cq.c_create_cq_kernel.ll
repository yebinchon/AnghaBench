; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_create_cq_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_create_cq_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.mlx5_ib_cq = type { %struct.TYPE_17__, %struct.TYPE_18__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64, i64 }

@create_cq_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cq_context = common dso_local global i32* null, align 8
@log_page_size = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq*, i32, i32, i32**, i32*, i32*)* @create_cq_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cq_kernel(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_cq* %1, i32 %2, i32 %3, i32** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_ib_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %9, align 8
  store %struct.mlx5_ib_cq* %1, %struct.mlx5_ib_cq** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %22, i32 0, i32 0
  %24 = call i32 @mlx5_db_alloc(%struct.TYPE_16__* %21, %struct.TYPE_17__* %23)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %18, align 4
  store i32 %28, i32* %8, align 4
  br label %139

29:                                               ; preds = %7
  %30 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %50 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %50, i32 0, i32 1
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @alloc_cq_frag_buf(%struct.mlx5_ib_dev* %49, %struct.TYPE_18__* %51, i32 %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %29
  br label %131

58:                                               ; preds = %29
  %59 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %60 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %60, i32 0, i32 1
  %62 = call i32 @init_cq_frag_buf(%struct.mlx5_ib_cq* %59, %struct.TYPE_18__* %61)
  %63 = load i32, i32* @create_cq_in, align 4
  %64 = call i32 @MLX5_ST_SZ_BYTES(i32 %63)
  %65 = load i32, i32* @create_cq_in, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MLX5_FLD_SZ_BYTES(i32 %65, i32 %68)
  %70 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %69, %74
  %76 = add nsw i32 %64, %75
  %77 = load i32*, i32** %15, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32* @kvzalloc(i32 %79, i32 %80)
  %82 = load i32**, i32*** %13, align 8
  store i32* %81, i32** %82, align 8
  %83 = load i32**, i32*** %13, align 8
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %58
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %18, align 4
  br label %126

89:                                               ; preds = %58
  %90 = load i32, i32* @create_cq_in, align 4
  %91 = load i32**, i32*** %13, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i8* @MLX5_ADDR_OF(i32 %90, i32* %92, i32* %93)
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %16, align 8
  %96 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %97 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @mlx5_fill_page_frag_array(%struct.TYPE_15__* %98, i32* %99)
  %101 = load i32, i32* @create_cq_in, align 4
  %102 = load i32**, i32*** %13, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = load i32*, i32** @cq_context, align 8
  %105 = call i8* @MLX5_ADDR_OF(i32 %101, i32* %103, i32* %104)
  store i8* %105, i8** %17, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = load i32, i32* @log_page_size, align 4
  %109 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %110 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MLX5_ADAPTER_PAGE_SHIFT, align 8
  %115 = sub nsw i64 %113, %114
  %116 = call i32 @MLX5_SET(i8* %106, i8* %107, i32 %108, i64 %115)
  %117 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %118 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %14, align 8
  store i32 %124, i32* %125, align 4
  store i32 0, i32* %8, align 4
  br label %139

126:                                              ; preds = %86
  %127 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %128 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %129 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %128, i32 0, i32 1
  %130 = call i32 @free_cq_buf(%struct.mlx5_ib_dev* %127, %struct.TYPE_18__* %129)
  br label %131

131:                                              ; preds = %126, %57
  %132 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %133 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %136 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %135, i32 0, i32 0
  %137 = call i32 @mlx5_db_free(%struct.TYPE_16__* %134, %struct.TYPE_17__* %136)
  %138 = load i32, i32* %18, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %131, %89, %27
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i32 @mlx5_db_alloc(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @alloc_cq_frag_buf(%struct.mlx5_ib_dev*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @init_cq_frag_buf(%struct.mlx5_ib_cq*, %struct.TYPE_18__*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32, i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32*) #1

declare dso_local i32 @mlx5_fill_page_frag_array(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i64) #1

declare dso_local i32 @free_cq_buf(%struct.mlx5_ib_dev*, %struct.TYPE_18__*) #1

declare dso_local i32 @mlx5_db_free(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
