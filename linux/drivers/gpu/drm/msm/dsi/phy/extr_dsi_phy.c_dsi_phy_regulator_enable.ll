; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_dsi_phy_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_dsi_phy_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_phy = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.regulator_bulk_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.dsi_reg_entry* }
%struct.dsi_reg_entry = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.regulator_bulk_data = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"regulator %d set op mode failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"regulator enable failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_phy*)* @dsi_phy_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_phy_regulator_enable(%struct.msm_dsi_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_dsi_phy*, align 8
  %4 = alloca %struct.regulator_bulk_data*, align 8
  %5 = alloca %struct.dsi_reg_entry*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_dsi_phy* %0, %struct.msm_dsi_phy** %3, align 8
  %10 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %3, align 8
  %11 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %10, i32 0, i32 2
  %12 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %11, align 8
  store %struct.regulator_bulk_data* %12, %struct.regulator_bulk_data** %4, align 8
  %13 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %3, align 8
  %14 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %17, align 8
  store %struct.dsi_reg_entry* %18, %struct.dsi_reg_entry** %5, align 8
  %19 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %3, align 8
  %20 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %6, align 8
  %23 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %3, align 8
  %24 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %65, %1
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %35, i64 %37
  %39 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %43, i64 %45
  %47 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @regulator_set_load(i32 %48, i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %42
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (%struct.device*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.device* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %79

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %30

68:                                               ; preds = %30
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %71 = call i32 @regulator_bulk_enable(i32 %69, %struct.regulator_bulk_data* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (%struct.device*, i8*, i32, ...) @DRM_DEV_ERROR(%struct.device* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %79

78:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %104

79:                                               ; preds = %74, %58
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %99, %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %86, i64 %88
  %90 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %92, i64 %94
  %96 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @regulator_set_load(i32 %91, i64 %97)
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %9, align 4
  br label %82

102:                                              ; preds = %82
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %78
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @regulator_set_load(i32, i64) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.regulator_bulk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
