; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c___mlx5_ib_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c___mlx5_ib_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.mlx5_ib_mr = type { %struct.ib_mr, i32* }
%struct.mlx5_ib_dev = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid mr type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32, i32, i32*, i32, i32*)* @__mlx5_ib_alloc_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @__mlx5_ib_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.mlx5_ib_mr, align 8
  %9 = alloca %struct.mlx5_ib_mr, align 8
  %10 = alloca %struct.ib_pd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_ib_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx5_ib_mr*, align 8
  %16 = alloca %struct.mlx5_ib_mr*, align 8
  %17 = alloca i32, align 4
  %18 = bitcast %struct.mlx5_ib_mr* %8 to { i32, i32* }*
  %19 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %18, i32 0, i32 0
  store i32 %2, i32* %19, align 8
  %20 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %18, i32 0, i32 1
  store i32* %3, i32** %20, align 8
  %21 = bitcast %struct.mlx5_ib_mr* %9 to { i32, i32* }*
  %22 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %21, i32 0, i32 0
  store i32 %4, i32* %22, align 8
  %23 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %21, i32 0, i32 1
  store i32* %5, i32** %23, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %10, align 8
  store i32 %1, i32* %11, align 4
  %24 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %25 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mlx5_ib_dev* @to_mdev(i32 %26)
  store %struct.mlx5_ib_dev* %27, %struct.mlx5_ib_dev** %12, align 8
  %28 = load i32, i32* @create_mkey_in, align 4
  %29 = call i32 @MLX5_ST_SZ_BYTES(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = bitcast %struct.mlx5_ib_mr* %8 to { i32, i32* }*
  %31 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %30, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ALIGN(i32 %32, i32* %34, i32 4)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mlx5_ib_mr* @kzalloc(i32 16, i32 %36)
  store %struct.mlx5_ib_mr* %37, %struct.mlx5_ib_mr** %15, align 8
  %38 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %39 = icmp ne %struct.mlx5_ib_mr* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.ib_mr* @ERR_PTR(i32 %42)
  store %struct.ib_mr* %43, %struct.ib_mr** %7, align 8
  br label %116

44:                                               ; preds = %6
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.mlx5_ib_mr* @kzalloc(i32 %45, i32 %46)
  store %struct.mlx5_ib_mr* %47, %struct.mlx5_ib_mr** %16, align 8
  %48 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %49 = icmp ne %struct.mlx5_ib_mr* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %17, align 4
  br label %111

53:                                               ; preds = %44
  %54 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %55 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* %11, align 4
  switch i32 %62, label %93 [
    i32 129, label %63
    i32 128, label %70
    i32 130, label %77
  ]

63:                                               ; preds = %53
  %64 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %65 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @mlx5_alloc_mem_reg_descs(%struct.ib_pd* %64, %struct.mlx5_ib_mr* %65, i32 %66, %struct.mlx5_ib_mr* %67, i32 %68)
  store i32 %69, i32* %17, align 4
  br label %99

70:                                               ; preds = %53
  %71 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %72 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @mlx5_alloc_sg_gaps_descs(%struct.ib_pd* %71, %struct.mlx5_ib_mr* %72, i32 %73, %struct.mlx5_ib_mr* %74, i32 %75)
  store i32 %76, i32* %17, align 4
  br label %99

77:                                               ; preds = %53
  %78 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %79 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %80 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %81 = load i32, i32* %13, align 4
  %82 = bitcast %struct.mlx5_ib_mr* %8 to { i32, i32* }*
  %83 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %82, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = bitcast %struct.mlx5_ib_mr* %9 to { i32, i32* }*
  %88 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %87, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @mlx5_alloc_integrity_descs(%struct.ib_pd* %78, %struct.mlx5_ib_mr* %79, i32 %84, i32* %86, i32 %89, i32* %91, %struct.mlx5_ib_mr* %80, i32 %81)
  store i32 %92, i32* %17, align 4
  br label %99

93:                                               ; preds = %53
  %94 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %93, %77, %70, %63
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %108

103:                                              ; preds = %99
  %104 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %105 = call i32 @kfree(%struct.mlx5_ib_mr* %104)
  %106 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %106, i32 0, i32 0
  store %struct.ib_mr* %107, %struct.ib_mr** %7, align 8
  br label %116

108:                                              ; preds = %102
  %109 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %110 = call i32 @kfree(%struct.mlx5_ib_mr* %109)
  br label %111

111:                                              ; preds = %108, %50
  %112 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %113 = call i32 @kfree(%struct.mlx5_ib_mr* %112)
  %114 = load i32, i32* %17, align 4
  %115 = call %struct.ib_mr* @ERR_PTR(i32 %114)
  store %struct.ib_mr* %115, %struct.ib_mr** %7, align 8
  br label %116

116:                                              ; preds = %111, %103, %40
  %117 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %117
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @ALIGN(i32, i32*, i32) #1

declare dso_local %struct.mlx5_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_alloc_mem_reg_descs(%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @mlx5_alloc_sg_gaps_descs(%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @mlx5_alloc_integrity_descs(%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, i32*, i32, i32*, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
