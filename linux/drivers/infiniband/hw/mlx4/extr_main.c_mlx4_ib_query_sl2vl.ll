; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_query_sl2vl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_query_sl2vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.sl2vl_tbl_to_u64 = type { i32* }
%struct.ib_smp = type { i32*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_SL_TO_VL_TABLE = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32*)* @mlx4_ib_query_sl2vl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_query_sl2vl(%struct.ib_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.sl2vl_tbl_to_u64, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  %14 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %18 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @mlx4_is_slave(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %95

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ib_smp* @kzalloc(i32 24, i32 %26)
  store %struct.ib_smp* %27, %struct.ib_smp** %9, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ib_smp* @kmalloc(i32 24, i32 %28)
  store %struct.ib_smp* %29, %struct.ib_smp** %10, align 8
  %30 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %31 = icmp ne %struct.ib_smp* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %34 = icmp ne %struct.ib_smp* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %25
  br label %89

36:                                               ; preds = %32
  %37 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %38 = call i32 @init_query_mad(%struct.ib_smp* %37)
  %39 = load i32, i32* @IB_SMP_ATTR_SL_TO_VL_TABLE, align 4
  %40 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %41 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %43 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @mlx4_is_mfunc(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %36
  %55 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %56 = call %struct.TYPE_3__* @to_mdev(%struct.ib_device* %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %60 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %61 = call i32 @mlx4_MAD_IFC(%struct.TYPE_3__* %56, i32 %57, i32 %58, i32* null, i32* null, %struct.ib_smp* %59, %struct.ib_smp* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %89

65:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %71 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %union.sl2vl_tbl_to_u64* %8 to i32**
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %66

85:                                               ; preds = %66
  %86 = bitcast %union.sl2vl_tbl_to_u64* %8 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %64, %35
  %90 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %91 = call i32 @kfree(%struct.ib_smp* %90)
  %92 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %93 = call i32 @kfree(%struct.ib_smp* %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %23
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @mlx4_is_slave(i32) #1

declare dso_local %struct.TYPE_3__* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i64 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.TYPE_3__*, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
