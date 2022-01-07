; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { %struct.TYPE_6__*, %struct.regulator_bulk_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dsi_reg_entry* }
%struct.dsi_reg_entry = type { i64 }
%struct.regulator_bulk_data = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*)* @dsi_host_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_host_regulator_disable(%struct.msm_dsi_host* %0) #0 {
  %2 = alloca %struct.msm_dsi_host*, align 8
  %3 = alloca %struct.regulator_bulk_data*, align 8
  %4 = alloca %struct.dsi_reg_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %2, align 8
  %7 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %8 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %7, i32 0, i32 1
  %9 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  store %struct.regulator_bulk_data* %9, %struct.regulator_bulk_data** %3, align 8
  %10 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %11 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %16, align 8
  store %struct.dsi_reg_entry* %17, %struct.dsi_reg_entry** %4, align 8
  %18 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %19 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %55, %1
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %33, i64 %35
  %37 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %41, i64 %43
  %45 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %47, i64 %49
  %51 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @regulator_set_load(i32 %46, i64 %52)
  br label %54

54:                                               ; preds = %40, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %3, align 8
  %61 = call i32 @regulator_bulk_disable(i32 %59, %struct.regulator_bulk_data* %60)
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
