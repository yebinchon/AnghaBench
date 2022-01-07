; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_read_32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_read_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vsi_pestat = type { i32, %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats_offsets }
%struct.i40iw_dev_hw_stats = type { i64* }
%struct.i40iw_dev_hw_stats_offsets = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_hw_stats_read_32(%struct.i40iw_vsi_pestat* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.i40iw_vsi_pestat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.i40iw_dev_hw_stats_offsets*, align 8
  %8 = alloca %struct.i40iw_dev_hw_stats*, align 8
  %9 = alloca %struct.i40iw_dev_hw_stats*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
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
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %4, align 8
  %26 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @i40iw_rd32(i32 %27, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %8, align 8
  %32 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %30, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %3
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %9, align 8
  %42 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %40
  store i64 %48, i64* %46, align 8
  br label %67

49:                                               ; preds = %3
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %8, align 8
  %52 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %50, %57
  %59 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %9, align 8
  %60 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %58
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %49, %39
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %8, align 8
  %70 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %68, i64* %74, align 8
  %75 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %9, align 8
  %76 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  ret void
}

declare dso_local i64 @i40iw_rd32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
