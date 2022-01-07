; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp.c_mtk_disp_mutex_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp.c_mtk_disp_mutex_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_disp_mutex = type { i32 }
%struct.device = type { i32 }
%struct.mtk_ddp = type { %struct.mtk_disp_mutex* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mtk_disp_mutex* @mtk_disp_mutex_get(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_disp_mutex*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_ddp*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.mtk_ddp* @dev_get_drvdata(%struct.device* %7)
  store %struct.mtk_ddp* %8, %struct.mtk_ddp** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp uge i32 %9, 10
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mtk_disp_mutex* @ERR_PTR(i32 %13)
  store %struct.mtk_disp_mutex* %14, %struct.mtk_disp_mutex** %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.mtk_ddp*, %struct.mtk_ddp** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %16, i32 0, i32 0
  %18 = load %struct.mtk_disp_mutex*, %struct.mtk_disp_mutex** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mtk_disp_mutex, %struct.mtk_disp_mutex* %18, i64 %20
  %22 = getelementptr inbounds %struct.mtk_disp_mutex, %struct.mtk_disp_mutex* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.mtk_disp_mutex* @ERR_PTR(i32 %27)
  store %struct.mtk_disp_mutex* %28, %struct.mtk_disp_mutex** %3, align 8
  br label %43

29:                                               ; preds = %15
  %30 = load %struct.mtk_ddp*, %struct.mtk_ddp** %6, align 8
  %31 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %30, i32 0, i32 0
  %32 = load %struct.mtk_disp_mutex*, %struct.mtk_disp_mutex** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtk_disp_mutex, %struct.mtk_disp_mutex* %32, i64 %34
  %36 = getelementptr inbounds %struct.mtk_disp_mutex, %struct.mtk_disp_mutex* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.mtk_ddp*, %struct.mtk_ddp** %6, align 8
  %38 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %37, i32 0, i32 0
  %39 = load %struct.mtk_disp_mutex*, %struct.mtk_disp_mutex** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mtk_disp_mutex, %struct.mtk_disp_mutex* %39, i64 %41
  store %struct.mtk_disp_mutex* %42, %struct.mtk_disp_mutex** %3, align 8
  br label %43

43:                                               ; preds = %29, %25, %11
  %44 = load %struct.mtk_disp_mutex*, %struct.mtk_disp_mutex** %3, align 8
  ret %struct.mtk_disp_mutex* %44
}

declare dso_local %struct.mtk_ddp* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.mtk_disp_mutex* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
