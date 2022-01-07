; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_rep.c_mlx5_ib_vport_rep_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_rep.c_mlx5_ib_vport_rep_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_profile = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_eswitch_rep = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mlx5_ib_dev* }
%struct.mlx5_ib_dev = type { i32, i32, %struct.mlx5_core_dev*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.mlx5_eswitch_rep* }
%struct.TYPE_5__ = type { i32 }

@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@uplink_rep_profile = common dso_local global %struct.mlx5_ib_profile zeroinitializer, align 4
@mlx5_ib_dev = common dso_local global i32 0, align 4
@ib_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REP_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eswitch_rep*)* @mlx5_ib_vport_rep_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_vport_rep_load(%struct.mlx5_core_dev* %0, %struct.mlx5_eswitch_rep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_profile*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eswitch_rep* %1, %struct.mlx5_eswitch_rep** %5, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %11 = call i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.mlx5_ib_profile* @uplink_rep_profile, %struct.mlx5_ib_profile** %7, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %20 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %21 = call i32 @mlx5_ib_set_vport_rep(%struct.mlx5_core_dev* %19, %struct.mlx5_eswitch_rep* %20)
  store i32 %21, i32* %3, align 4
  br label %98

22:                                               ; preds = %17
  %23 = load i32, i32* @mlx5_ib_dev, align 4
  %24 = load i32, i32* @ib_dev, align 4
  %25 = call %struct.mlx5_ib_dev* @ib_alloc_device(i32 %23, i32 %24)
  store %struct.mlx5_ib_dev* %25, %struct.mlx5_ib_dev** %8, align 8
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %27 = icmp ne %struct.mlx5_ib_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %98

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.TYPE_8__* @kcalloc(i32 %32, i32 16, i32 %33)
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %35, i32 0, i32 3
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %36, align 8
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 4
  %44 = call i32 @ib_dealloc_device(i32* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %31
  %48 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  %53 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store %struct.mlx5_eswitch_rep* %53, %struct.mlx5_eswitch_rep** %60, align 8
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @mlx5_ib_get_rep_netdev(i32 %64, i64 %67)
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %69, i32 0, i32 3
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %68, i32* %76, align 8
  %77 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %78 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %78, i32 0, i32 2
  store %struct.mlx5_core_dev* %77, %struct.mlx5_core_dev** %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %84 = load %struct.mlx5_ib_profile*, %struct.mlx5_ib_profile** %7, align 8
  %85 = call i32 @__mlx5_ib_add(%struct.mlx5_ib_dev* %83, %struct.mlx5_ib_profile* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %47
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %98

90:                                               ; preds = %47
  %91 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %92 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %93 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* @REP_IB, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store %struct.mlx5_ib_dev* %91, %struct.mlx5_ib_dev** %97, align 8
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %90, %87, %41, %28, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @mlx5_eswitch_get_total_vports(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_ib_set_vport_rep(%struct.mlx5_core_dev*, %struct.mlx5_eswitch_rep*) #1

declare dso_local %struct.mlx5_ib_dev* @ib_alloc_device(i32, i32) #1

declare dso_local %struct.TYPE_8__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

declare dso_local i32 @mlx5_ib_get_rep_netdev(i32, i64) #1

declare dso_local i32 @__mlx5_ib_add(%struct.mlx5_ib_dev*, %struct.mlx5_ib_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
