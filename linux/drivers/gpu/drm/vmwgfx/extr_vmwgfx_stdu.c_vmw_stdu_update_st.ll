; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_update_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_update_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_screen_target_display_unit = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_stdu_update = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No screen target defined\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_screen_target_display_unit*)* @vmw_stdu_update_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_stdu_update_st(%struct.vmw_private* %0, %struct.vmw_screen_target_display_unit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_screen_target_display_unit*, align 8
  %6 = alloca %struct.vmw_stdu_update*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store %struct.vmw_screen_target_display_unit* %1, %struct.vmw_screen_target_display_unit** %5, align 8
  %7 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %5, align 8
  %8 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %17 = call %struct.vmw_stdu_update* @VMW_FIFO_RESERVE(%struct.vmw_private* %16, i32 4)
  store %struct.vmw_stdu_update* %17, %struct.vmw_stdu_update** %6, align 8
  %18 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %6, align 8
  %19 = icmp eq %struct.vmw_stdu_update* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %15
  %27 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %6, align 8
  %28 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %5, align 8
  %29 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %5, align 8
  %33 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %5, align 8
  %36 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vmw_stdu_populate_update(%struct.vmw_stdu_update* %27, i32 %31, i32 0, i32 %34, i32 0, i32 %37)
  %39 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %40 = call i32 @vmw_fifo_commit(%struct.vmw_private* %39, i32 4)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %23, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.vmw_stdu_update* @VMW_FIFO_RESERVE(%struct.vmw_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_stdu_populate_update(%struct.vmw_stdu_update*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmw_fifo_commit(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
