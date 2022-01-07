; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_mad_ifc_gids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_mad_ifc_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i64 }
%struct.ib_smp = type { i64, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@IB_SMP_ATTR_GUID_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_mad_ifc_gids(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.ib_gid* %3, %union.ib_gid** %8, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ib_smp* @kzalloc(i32 24, i32 %14)
  store %struct.ib_smp* %15, %struct.ib_smp** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ib_smp* @kmalloc(i32 24, i32 %16)
  store %struct.ib_smp* %17, %struct.ib_smp** %10, align 8
  %18 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %19 = icmp ne %struct.ib_smp* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %22 = icmp ne %struct.ib_smp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  br label %85

24:                                               ; preds = %20
  %25 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %26 = call i32 @init_query_mad(%struct.ib_smp* %25)
  %27 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %28 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %29 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %33 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %35 = call i32 @to_mdev(%struct.ib_device* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %38 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %39 = call i32 @mlx5_MAD_IFC(i32 %35, i32 1, i32 1, i32 %36, i32* null, i32* null, %struct.ib_smp* %37, %struct.ib_smp* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  br label %85

43:                                               ; preds = %24
  %44 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %45 = bitcast %union.ib_gid* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %48 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 8
  %51 = call i32 @memcpy(i64 %46, i64 %50, i32 8)
  %52 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %53 = call i32 @init_query_mad(%struct.ib_smp* %52)
  %54 = load i32, i32* @IB_SMP_ATTR_GUID_INFO, align 4
  %55 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %56 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sdiv i32 %57, 8
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %61 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %63 = call i32 @to_mdev(%struct.ib_device* %62)
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %66 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %67 = call i32 @mlx5_MAD_IFC(i32 %63, i32 1, i32 1, i32 %64, i32* null, i32* null, %struct.ib_smp* %65, %struct.ib_smp* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %43
  br label %85

71:                                               ; preds = %43
  %72 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %73 = bitcast %union.ib_gid* %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 8
  %76 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %77 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = srem i32 %79, 8
  %81 = mul nsw i32 %80, 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = call i32 @memcpy(i64 %75, i64 %83, i32 8)
  br label %85

85:                                               ; preds = %71, %70, %42, %23
  %86 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %87 = call i32 @kfree(%struct.ib_smp* %86)
  %88 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %89 = call i32 @kfree(%struct.ib_smp* %88)
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5_MAD_IFC(i32, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
