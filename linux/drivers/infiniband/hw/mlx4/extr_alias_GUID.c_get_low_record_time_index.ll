; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_get_low_record_time_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_get_low_record_time_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx4_sriov_alias_guid_info_rec_det* }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { i64, i64, i64 }

@NUM_ALIAS_GUID_REC_IN_PORT = common dso_local global i32 0, align 4
@MLX4_GUID_INFO_STATUS_IDLE = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i64, i32*)* @get_low_record_time_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_low_record_time_index(%struct.mlx4_ib_dev* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx4_sriov_alias_guid_info_rec_det, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %53, %3
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.mlx4_sriov_alias_guid_info_rec_det*, %struct.mlx4_sriov_alias_guid_info_rec_det** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %25, i64 %27
  %29 = bitcast %struct.mlx4_sriov_alias_guid_info_rec_det* %9 to i8*
  %30 = bitcast %struct.mlx4_sriov_alias_guid_info_rec_det* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 24, i1 false)
  %31 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MLX4_GUID_INFO_STATUS_IDLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %9, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %9, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %7, align 4
  %49 = getelementptr inbounds %struct.mlx4_sriov_alias_guid_info_rec_det, %struct.mlx4_sriov_alias_guid_info_rec_det* %9, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %35, %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = call i64 (...) @ktime_get_boottime_ns()
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %71

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load i32, i32* @NSEC_PER_SEC, align 4
  %70 = call i32 @div_u64(i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi i32 [ 0, %64 ], [ %70, %65 ]
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ktime_get_boottime_ns(...) #2

declare dso_local i32 @div_u64(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
