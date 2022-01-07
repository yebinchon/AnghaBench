; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_ethtool.c_vnic_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_ethtool.c_vnic_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.opa_vnic_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, i32*)* }
%struct.opa_vnic_stats = type { i32 }

@VNIC_STATS_LEN = common dso_local global i32 0, align 4
@vnic_gstrings_stats = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @vnic_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.opa_vnic_adapter*, align 8
  %8 = alloca %struct.opa_vnic_stats, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device* %11)
  store %struct.opa_vnic_adapter* %12, %struct.opa_vnic_adapter** %7, align 8
  %13 = call i32 @memset(%struct.opa_vnic_stats* %8, i32 0, i32 4)
  %14 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.opa_vnic_stats, %struct.opa_vnic_stats* %8, i32 0, i32 0
  %24 = call i32 %21(%struct.net_device* %22, i32* %23)
  %25 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %64, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @VNIC_STATS_LEN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = bitcast %struct.opa_vnic_stats* %8 to i8*
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnic_gstrings_stats, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %33, i64 %40
  store i8* %41, i8** %10, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnic_gstrings_stats, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %32
  %51 = load i8*, i8** %10, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %32
  %55 = load i8*, i8** %10, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %28

67:                                               ; preds = %28
  ret void
}

declare dso_local %struct.opa_vnic_adapter* @opa_vnic_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.opa_vnic_stats*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
