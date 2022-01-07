; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_wait_for_bit_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_wait_for_bit_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32 }
%struct.dsi_reg = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32, i32, i32)* @wait_for_bit_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_bit_change(%struct.dsi_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsi_reg, align 4
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %6, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 100, i32* %12, align 4
  br label %14

14:                                               ; preds = %28, %4
  %15 = load i32, i32* %12, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %12, align 4
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @REG_GET(%struct.dsi_data* %19, i32 %23, i32 %20, i32 %21)
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %55

28:                                               ; preds = %18
  br label %14

29:                                               ; preds = %14
  %30 = load i64, i64* @jiffies, align 8
  %31 = call i64 @msecs_to_jiffies(i32 500)
  %32 = add i64 %30, %31
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %48, %29
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @time_before(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = getelementptr inbounds %struct.dsi_reg, %struct.dsi_reg* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @REG_GET(%struct.dsi_data* %39, i32 %43, i32 %40, i32 %41)
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %55

48:                                               ; preds = %38
  %49 = call i32 @ns_to_ktime(i32 1000000)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %51 = call i32 @set_current_state(i32 %50)
  %52 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %53 = call i32 @schedule_hrtimeout(i32* %11, i32 %52)
  br label %33

54:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %47, %27
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_hrtimeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
