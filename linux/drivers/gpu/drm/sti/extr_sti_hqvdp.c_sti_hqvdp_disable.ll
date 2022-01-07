; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hqvdp = type { i32, %struct.TYPE_2__, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", align 1
@HQVDP_MBX_NEXT_CMD = common dso_local global i64 0, align 8
@POLL_MAX_ATTEMPT = common dso_local global i32 0, align 4
@HQVDP_MBX_INFO_XP70 = common dso_local global i64 0, align 8
@INFO_XP70_FW_READY = common dso_local global i32 0, align 4
@POLL_DELAY_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"XP70 could not revert to idle\0A\00", align 1
@STI_PLANE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_hqvdp*)* @sti_hqvdp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hqvdp_disable(%struct.sti_hqvdp* %0) #0 {
  %2 = alloca %struct.sti_hqvdp*, align 8
  %3 = alloca i32, align 4
  store %struct.sti_hqvdp* %0, %struct.sti_hqvdp** %2, align 8
  %4 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %5 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %4, i32 0, i32 1
  %6 = call i32 @sti_plane_to_str(%struct.TYPE_2__* %5)
  %7 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %9 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %12 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %11, i32 0, i32 4
  %13 = call i64 @sti_vtg_unregister_client(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %19 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HQVDP_MBX_NEXT_CMD, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %42, %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @POLL_MAX_ATTEMPT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %30 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HQVDP_MBX_INFO_XP70, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = load i32, i32* @INFO_XP70_FW_READY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %45

39:                                               ; preds = %28
  %40 = load i32, i32* @POLL_DELAY_MS, align 4
  %41 = call i32 @msleep(i32 %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %24

45:                                               ; preds = %38, %24
  %46 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %47 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @POLL_MAX_ATTEMPT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i32, i32* @STI_PLANE_DISABLED, align 4
  %57 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %58 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %61 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @sti_plane_to_str(%struct.TYPE_2__*) #1

declare dso_local i64 @sti_vtg_unregister_client(i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
