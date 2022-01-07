; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_dp_mst_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.radeon_connector_atom_dig* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector_atom_dig = type { i32*, i32 }

@radeon_mst = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_MSTM_CAP = common dso_local global i32 0, align 4
@DP_MST_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Sink is MST capable\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Sink is not MST capable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_mst_probe(%struct.radeon_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.radeon_connector_atom_dig*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  store %struct.radeon_connector* %0, %struct.radeon_connector** %3, align 8
  %9 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %9, i32 0, i32 3
  %11 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  store %struct.radeon_connector_atom_dig* %11, %struct.radeon_connector_atom_dig** %4, align 8
  %12 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %6, align 8
  %19 = load i32, i32* @radeon_mst, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

22:                                               ; preds = %1
  %23 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %24 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %71

27:                                               ; preds = %22
  %28 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @DP_DPCD_REV, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 18
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %71

36:                                               ; preds = %27
  %37 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @DP_MSTM_CAP, align 4
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %43 = call i32 @drm_dp_dpcd_read(i32* %40, i32 %41, i32* %42, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %36
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DP_MST_CAP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  br label %60

56:                                               ; preds = %46
  %57 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %59 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %36
  %62 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %62, i32 0, i32 0
  %64 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %65 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @drm_dp_mst_topology_mgr_set_mst(i32* %63, i32 %66)
  %68 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %4, align 8
  %69 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %61, %35, %26, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
