; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_read_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_read_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vsi_pestat = type { i32 }
%struct.i40iw_dev_hw_stats = type { i32*, i32* }

@I40IW_HW_STAT_INDEX_MAX_32 = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_MAX_64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat* %0, %struct.i40iw_dev_hw_stats* %1) #0 {
  %3 = alloca %struct.i40iw_vsi_pestat*, align 8
  %4 = alloca %struct.i40iw_dev_hw_stats*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.i40iw_vsi_pestat* %0, %struct.i40iw_vsi_pestat** %3, align 8
  store %struct.i40iw_dev_hw_stats* %1, %struct.i40iw_dev_hw_stats** %4, align 8
  %7 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @I40IW_HW_STAT_INDEX_MAX_32, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %4, align 8
  %19 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @i40iw_hw_stats_read_32(%struct.i40iw_vsi_pestat* %16, i64 %17, i32* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %11

27:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @I40IW_HW_STAT_INDEX_MAX_64, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.i40iw_dev_hw_stats*, %struct.i40iw_dev_hw_stats** %4, align 8
  %36 = getelementptr inbounds %struct.i40iw_dev_hw_stats, %struct.i40iw_dev_hw_stats* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @i40iw_hw_stats_read_64(%struct.i40iw_vsi_pestat* %33, i64 %34, i32* %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %46 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i40iw_hw_stats_read_32(%struct.i40iw_vsi_pestat*, i64, i32*) #1

declare dso_local i32 @i40iw_hw_stats_read_64(%struct.i40iw_vsi_pestat*, i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
