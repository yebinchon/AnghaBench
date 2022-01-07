; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_host_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { %struct.TYPE_6__*, %struct.regulator_bulk_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dsi_reg_entry* }
%struct.dsi_reg_entry = type { i64, i64 }
%struct.regulator_bulk_data = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"regulator %d set op mode failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"regulator enable failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_dsi_host*)* @dsi_host_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_host_regulator_enable(%struct.msm_dsi_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_dsi_host*, align 8
  %4 = alloca %struct.regulator_bulk_data*, align 8
  %5 = alloca %struct.dsi_reg_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %3, align 8
  %9 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %10 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %9, i32 0, i32 1
  %11 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %10, align 8
  store %struct.regulator_bulk_data* %11, %struct.regulator_bulk_data** %4, align 8
  %12 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %13 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %18, align 8
  store %struct.dsi_reg_entry* %19, %struct.dsi_reg_entry** %5, align 8
  %20 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %21 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %63, %1
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %34, i64 %36
  %38 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %33
  %42 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %42, i64 %44
  %46 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %48, i64 %50
  %52 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @regulator_set_load(i32 %47, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  br label %76

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %29

66:                                               ; preds = %29
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %69 = call i32 @regulator_bulk_enable(i32 %67, %struct.regulator_bulk_data* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %101

76:                                               ; preds = %72, %57
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %96, %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %83, i64 %85
  %87 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dsi_reg_entry*, %struct.dsi_reg_entry** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %89, i64 %91
  %93 = getelementptr inbounds %struct.dsi_reg_entry, %struct.dsi_reg_entry* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @regulator_set_load(i32 %88, i64 %94)
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %8, align 4
  br label %79

99:                                               ; preds = %79
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %75
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @regulator_set_load(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.regulator_bulk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
