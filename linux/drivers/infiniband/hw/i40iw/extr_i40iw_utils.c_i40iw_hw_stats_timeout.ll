; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_hw_stats_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_hw_stats_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vsi_pestat = type { i32, i32, i32, %struct.i40iw_sc_vsi* }
%struct.i40iw_sc_vsi = type { %struct.i40iw_sc_dev* }
%struct.i40iw_sc_dev = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.i40iw_vsi_pestat, i64 }
%struct.timer_list = type { i32 }

@stats_timer = common dso_local global i32 0, align 4
@I40IW_MAX_PE_ENABLED_VF_COUNT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@STATS_TIMER_DELAY = common dso_local global i32 0, align 4
@pf_devstat = common dso_local global %struct.i40iw_vsi_pestat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @i40iw_hw_stats_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_hw_stats_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.i40iw_vsi_pestat*, align 8
  %4 = alloca %struct.i40iw_sc_vsi*, align 8
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_vsi_pestat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %10 = ptrtoint %struct.i40iw_vsi_pestat* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @stats_timer, align 4
  %13 = call %struct.i40iw_vsi_pestat* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.i40iw_vsi_pestat* %13, %struct.i40iw_vsi_pestat** %3, align 8
  %14 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %15 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %14, i32 0, i32 3
  %16 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %15, align 8
  store %struct.i40iw_sc_vsi* %16, %struct.i40iw_sc_vsi** %4, align 8
  %17 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %17, i32 0, i32 0
  %19 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %18, align 8
  store %struct.i40iw_sc_dev* %19, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_vsi_pestat* null, %struct.i40iw_vsi_pestat** %6, align 8
  %20 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %21 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %22 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %21, i32 0, i32 2
  %23 = call i32 @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat* %20, i32* %22)
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %68, %1
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @I40IW_MAX_PE_ENABLED_VF_COUNT, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %30 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %29, i32 0, i32 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %34 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %28
  %41 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %42 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.i40iw_vsi_pestat* %57, %struct.i40iw_vsi_pestat** %6, align 8
  %58 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %6, align 8
  %59 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %6, align 8
  %60 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %59, i32 0, i32 2
  %61 = call i32 @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat* %58, i32* %60)
  br label %62

62:                                               ; preds = %50, %40
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %65 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %64, i32 0, i32 1
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %24

71:                                               ; preds = %24
  %72 = load %struct.i40iw_vsi_pestat*, %struct.i40iw_vsi_pestat** %3, align 8
  %73 = getelementptr inbounds %struct.i40iw_vsi_pestat, %struct.i40iw_vsi_pestat* %72, i32 0, i32 0
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i32, i32* @STATS_TIMER_DELAY, align 4
  %76 = call i64 @msecs_to_jiffies(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @mod_timer(i32* %73, i64 %77)
  ret void
}

declare dso_local %struct.i40iw_vsi_pestat* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @i40iw_hw_stats_read_all(%struct.i40iw_vsi_pestat*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
