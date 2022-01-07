; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_read_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_read_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vsi_pestat = type { %struct.TYPE_2__*, %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats_offsets }
%struct.TYPE_2__ = type { i64 }
%struct.i40iw_dev_hw_stats = type { i64* }
%struct.i40iw_dev_hw_stats_offsets = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_hw_stats_read_64(%struct.i40iw_vsi_pestat* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.i40iw_vsi_pestat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.i40iw_dev_hw_stats_offsets*, align 8
  %8 = alloca %struct.i40iw_dev_hw_stats*, align 8
  %9 = alloca %struct.i40iw_dev_hw_stats*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.i40iw_vsi_pestat* %0, %struct.i40iw_vsi_pestat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %12 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %12, i32 0, i32 3
  store %struct.i40iw_dev_hw_stats_offsets* %13, %struct.i40iw_dev_hw_stats_offsets** %7, align 8
  %14 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %15 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %14, i32 0, i32 2
  store %struct.i40iw_dev_hw_stats* %15, %struct.i40iw_dev_hw_stats** %8, align 8
  %16 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %17 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %16, i32 0, i32 1
  store %struct.i40iw_dev_hw_stats* %17, %struct.i40iw_dev_hw_stats** %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.i40iw_dev_hw_stats_offsets*, %struct.i40iw_dev_hw_stats_offsets** %7, align 8
  %19 = getelementptr inbounds %struct.i40iw_dev_hw_stats_offsets, %struct.i40iw_dev_hw_stats_offsets* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %26 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @readq(i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %8, align 8
  %35 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %33, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %3
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %9, align 8
  %45 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %43
  store i64 %51, i64* %49, align 8
  br label %70

52:                                               ; preds = %3
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %8, align 8
  %55 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %53, %60
  %62 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %9, align 8
  %63 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %61
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %52, %42
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %8, align 8
  %73 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %71, i64* %77, align 8
  %78 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %9, align 8
  %79 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %6, align 8
  store i64 %84, i64* %85, align 8
  ret void
}

declare dso_local i64 @readq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
