; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_get_bin_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_get_bin_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dev = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_v3d_get_bin_slot(%struct.vc4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vc4_exec_info*, align 8
  %9 = alloca i32, align 4
  store %struct.vc4_dev* %0, %struct.vc4_dev** %3, align 8
  %10 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %11 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %10, i32 0, i32 2
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %61, %1
  %14 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %15 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = call i32 @ffs(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %31 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %67

39:                                               ; preds = %13
  %40 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %41 = call %struct.vc4_exec_info* @vc4_last_render_job(%struct.vc4_dev* %40)
  store %struct.vc4_exec_info* %41, %struct.vc4_exec_info** %8, align 8
  %42 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %8, align 8
  %43 = icmp ne %struct.vc4_exec_info* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %8, align 8
  %46 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %50 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @vc4_wait_for_seqno(%struct.drm_device* %56, i64 %57, i64 -1, i32 1)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %13

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %48
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %62, %25
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.vc4_exec_info* @vc4_last_render_job(%struct.vc4_dev*) #1

declare dso_local i32 @vc4_wait_for_seqno(%struct.drm_device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
