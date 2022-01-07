; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_handle_slaves_guid_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_handle_slaves_guid_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, i32 }
%struct.ib_smp = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_SMP_ATTR_GUID_INFO = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed in get GUID INFO MAD_IFC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*, i32, i32, i32)* @handle_slaves_guid_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_slaves_guid_change(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mlx4_is_mfunc(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx4_is_master(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %4
  br label %115

24:                                               ; preds = %17
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ib_smp* @kmalloc(i32 28, i32 %25)
  store %struct.ib_smp* %26, %struct.ib_smp** %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ib_smp* @kmalloc(i32 28, i32 %27)
  store %struct.ib_smp* %28, %struct.ib_smp** %10, align 8
  %29 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %30 = icmp ne %struct.ib_smp* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %33 = icmp ne %struct.ib_smp* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %24
  br label %110

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 4
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %106, %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %109

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 8, %46
  %48 = ashr i32 %45, %47
  %49 = and i32 %48, 255
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %106

52:                                               ; preds = %44, %41
  %53 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %54 = call i32 @memset(%struct.ib_smp* %53, i32 0, i32 28)
  %55 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %56 = call i32 @memset(%struct.ib_smp* %55, i32 0, i32 28)
  %57 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 4
  %60 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %61 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %63 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %65 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @IB_SMP_ATTR_GUID_INFO, align 4
  %68 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %69 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @cpu_to_be32(i32 %72)
  %74 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %75 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %77 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  %78 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %82 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %83 = call i64 @mlx4_MAD_IFC(%struct.mlx4_ib_dev* %76, i32 %79, i32 %80, i32* null, i32* null, %struct.ib_smp* %81, %struct.ib_smp* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %52
  %86 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %86, i32 0, i32 0
  %88 = call i32 @mlx4_ib_warn(i32* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %110

89:                                               ; preds = %52
  %90 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %96 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %95, i32 0, i32 2
  %97 = call i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev* %90, i32 %93, i32 %94, i32* %96)
  %98 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %104 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %103, i32 0, i32 2
  %105 = call i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev* %98, i32 %101, i32 %102, i32* %104)
  br label %106

106:                                              ; preds = %89, %51
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %38

109:                                              ; preds = %38
  br label %110

110:                                              ; preds = %109, %85, %34
  %111 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %112 = call i32 @kfree(%struct.ib_smp* %111)
  %113 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %114 = call i32 @kfree(%struct.ib_smp* %113)
  br label %115

115:                                              ; preds = %110, %23
  ret void
}

declare dso_local i32 @mlx4_is_mfunc(i32) #1

declare dso_local i32 @mlx4_is_master(i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_smp*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @mlx4_MAD_IFC(%struct.mlx4_ib_dev*, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @mlx4_ib_warn(i32*, i8*) #1

declare dso_local i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
