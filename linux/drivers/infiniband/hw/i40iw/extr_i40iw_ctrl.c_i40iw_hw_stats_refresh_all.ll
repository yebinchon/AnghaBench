; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_refresh_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_hw_stats_refresh_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vsi_pestat = type { i32 }

@I40IW_HW_STAT_INDEX_MAX_32 = common dso_local global i64 0, align 8
@I40IW_HW_STAT_INDEX_MAX_64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_hw_stats_refresh_all(%struct.i40iw_vsi_pestat* %0) #0 {
  %2 = alloca %struct.i40iw_vsi_pestat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.i40iw_vsi_pestat* %0, %struct.i40iw_vsi_pestat** %2, align 8
  %6 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %2, align 8
  %7 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %18, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @I40IW_HW_STAT_INDEX_MAX_32, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %2, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @i40iw_hw_stats_read_32(%struct.i40iw_vsi_pestat* %15, i64 %16, i32* %3)
  br label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %4, align 8
  br label %10

21:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %30, %21
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @I40IW_HW_STAT_INDEX_MAX_64, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %2, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @i40iw_hw_stats_read_64(%struct.i40iw_vsi_pestat* %27, i64 %28, i32* %3)
  br label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %22

33:                                               ; preds = %22
  %34 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %2, align 8
  %35 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
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
