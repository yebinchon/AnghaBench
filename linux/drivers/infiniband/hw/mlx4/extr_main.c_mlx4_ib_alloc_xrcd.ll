; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_alloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_xrcd = type { i32, i32, %struct.ib_xrcd, i32 }
%struct.ib_cq_init_attr = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX4_DEV_CAP_FLAG_XRC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_xrcd* (%struct.ib_device*, %struct.ib_udata*)* @mlx4_ib_alloc_xrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_xrcd* @mlx4_ib_alloc_xrcd(%struct.ib_device* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_xrcd*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.mlx4_ib_xrcd*, align 8
  %7 = alloca %struct.ib_cq_init_attr, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %9 = bitcast %struct.ib_cq_init_attr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MLX4_DEV_CAP_FLAG_XRC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ib_xrcd* @ERR_PTR(i32 %22)
  store %struct.ib_xrcd* %23, %struct.ib_xrcd** %3, align 8
  br label %98

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mlx4_ib_xrcd* @kmalloc(i32 16, i32 %25)
  store %struct.mlx4_ib_xrcd* %26, %struct.mlx4_ib_xrcd** %6, align 8
  %27 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %28 = icmp ne %struct.mlx4_ib_xrcd* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.ib_xrcd* @ERR_PTR(i32 %31)
  store %struct.ib_xrcd* %32, %struct.ib_xrcd** %3, align 8
  br label %98

33:                                               ; preds = %24
  %34 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %35 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %38, i32 0, i32 0
  %40 = call i32 @mlx4_xrcd_alloc(%struct.TYPE_7__* %37, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %93

44:                                               ; preds = %33
  %45 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %46 = call i32 @ib_alloc_pd(%struct.ib_device* %45, i32 0)
  %47 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %8, align 4
  br label %84

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %7, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %62 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %63 = call i32 @ib_create_cq(%struct.ib_device* %61, i32* null, i32* null, %struct.mlx4_ib_xrcd* %62, %struct.ib_cq_init_attr* %7)
  %64 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %59
  %77 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %78 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %77, i32 0, i32 2
  store %struct.ib_xrcd* %78, %struct.ib_xrcd** %3, align 8
  br label %98

79:                                               ; preds = %71
  %80 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ib_dealloc_pd(i32 %82)
  br label %84

84:                                               ; preds = %79, %54
  %85 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %86 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mlx4_xrcd_free(%struct.TYPE_7__* %88, i32 %91)
  br label %93

93:                                               ; preds = %84, %43
  %94 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %6, align 8
  %95 = call i32 @kfree(%struct.mlx4_ib_xrcd* %94)
  %96 = load i32, i32* %8, align 4
  %97 = call %struct.ib_xrcd* @ERR_PTR(i32 %96)
  store %struct.ib_xrcd* %97, %struct.ib_xrcd** %3, align 8
  br label %98

98:                                               ; preds = %93, %76, %29, %20
  %99 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  ret %struct.ib_xrcd* %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @to_mdev(%struct.ib_device*) #2

declare dso_local %struct.ib_xrcd* @ERR_PTR(i32) #2

declare dso_local %struct.mlx4_ib_xrcd* @kmalloc(i32, i32) #2

declare dso_local i32 @mlx4_xrcd_alloc(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @ib_alloc_pd(%struct.ib_device*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @ib_create_cq(%struct.ib_device*, i32*, i32*, %struct.mlx4_ib_xrcd*, %struct.ib_cq_init_attr*) #2

declare dso_local i32 @ib_dealloc_pd(i32) #2

declare dso_local i32 @mlx4_xrcd_free(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @kfree(%struct.mlx4_ib_xrcd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
