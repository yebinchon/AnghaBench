; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_link_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_link_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_link = type { i32 }

@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_MASK = common dso_local global i32 0, align 4
@DP_SET_POWER_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_link_power_up(%struct.drm_dp_aux* %0, %struct.drm_dp_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.drm_dp_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.drm_dp_link* %1, %struct.drm_dp_link** %5, align 8
  %8 = load %struct.drm_dp_link*, %struct.drm_dp_link** %5, align 8
  %9 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 17
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %15 = load i32, i32* @DP_SET_POWER, align 4
  %16 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %14, i32 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %13
  %22 = load i32, i32* @DP_SET_POWER_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @DP_SET_POWER_D0, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %30 = load i32, i32* @DP_SET_POWER, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %21
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %19, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
