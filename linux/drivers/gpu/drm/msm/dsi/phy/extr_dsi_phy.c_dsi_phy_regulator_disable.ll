; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_dsi_phy_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_dsi_phy_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_phy = type { %struct.TYPE_3__*, %struct.regulator_bulk_data* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dsi_reg_entry* }
%struct.dsi_reg_entry = type { i64 }
%struct.regulator_bulk_data = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_phy*)* @dsi_phy_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_phy_regulator_disable(%struct.msm_dsi_phy* %0) #0 {
  %2 = alloca %struct.msm_dsi_phy*, align 8
  %3 = alloca %struct.regulator_bulk_data*, align 8
  %4 = alloca %struct.dsi_reg_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msm_dsi_phy* %0, %struct.msm_dsi_phy** %2, align 8
  %7 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %2, align 8
  %8 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %7, i32 0, i32 1
  %9 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  store %struct.regulator_bulk_data* %9, %struct.regulator_bulk_data** %3, align 8
  %10 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %2, align 8
  %11 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %14, align 8
  store %struct.dsi_reg_entry* %15, %struct.dsi_reg_entry** %4, align 8
  %16 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %2, align 8
  %17 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %51, %1
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %29, i64 %31
  %33 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %28
  %37 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %37, i64 %39
  %41 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %43, i64 %45
  %47 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @regulator_set_load(i32 %42, i64 %48)
  br label %50

50:                                               ; preds = %36, %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %3, align 8
  %57 = call i32 @regulator_bulk_disable(i32 %55, %struct.regulator_bulk_data* %56)
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @regulator_set_load(i32, i64) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.regulator_bulk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
