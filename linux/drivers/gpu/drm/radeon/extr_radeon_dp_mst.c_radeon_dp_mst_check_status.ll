; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { i32, %struct.TYPE_2__*, %struct.radeon_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i32 }

@DP_SINK_COUNT_ESI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"got esi %3ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"got esi2 %3ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to get ESI - device may have failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_mst_check_status(%struct.radeon_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.radeon_connector_atom_dig*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_connector* %0, %struct.radeon_connector** %3, align 8
  %11 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %11, i32 0, i32 2
  %13 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %12, align 8
  store %struct.radeon_connector_atom_dig* %13, %struct.radeon_connector_atom_dig** %4, align 8
  %14 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %90

18:                                               ; preds = %1
  %19 = bitcast [16 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 64, i1 false)
  store i32 0, i32* %8, align 4
  %20 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* @DP_SINK_COUNT_ESI, align 8
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %26 = call i32 @drm_dp_dpcd_read(i32* %23, i64 %24, i32* %25, i32 8)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %70, %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %78

30:                                               ; preds = %27
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %34, i32 0, i32 0
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %37 = call i32 @drm_dp_mst_hpd_irq(i32* %35, i32* %36, i32* %9)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %57, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* @DP_SINK_COUNT_ESI, align 8
  %50 = add nsw i64 %49, 1
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %52 = call i32 @drm_dp_dpcd_write(i32* %48, i64 %50, i32* %51, i32 3)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %60

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %41

60:                                               ; preds = %55, %41
  %61 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* @DP_SINK_COUNT_ESI, align 8
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %67 = call i32 @drm_dp_dpcd_read(i32* %64, i64 %65, i32* %66, i32 8)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %72 = ptrtoint i32* %71 to i32
  %73 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %27

74:                                               ; preds = %60
  br label %76

75:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %93

78:                                               ; preds = %27
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %82 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %83, i32 0, i32 0
  %85 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %86 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @drm_dp_mst_topology_mgr_set_mst(i32* %84, i32 %87)
  br label %89

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %1
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %76
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i64, i32*, i32) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #2

declare dso_local i32 @drm_dp_mst_hpd_irq(i32*, i32*, i32*) #2

declare dso_local i32 @drm_dp_dpcd_write(i32*, i64, i32*, i32) #2

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
