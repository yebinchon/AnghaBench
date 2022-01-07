; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_hangcheck_elapsed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_hangcheck_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vc4_dev = type { %struct.TYPE_3__, i32, %struct.drm_device* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.timer_list = type { i32 }
%struct.vc4_exec_info = type { i64, i64 }

@hangcheck = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vc4 = common dso_local global %struct.vc4_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vc4_hangcheck_elapsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_hangcheck_elapsed(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vc4_exec_info*, align 8
  %9 = alloca %struct.vc4_exec_info*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %11 = ptrtoint %struct.vc4_dev* %10 to i32
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hangcheck, i32 0, i32 0), align 4
  %14 = call %struct.vc4_dev* @from_timer(i32 %11, %struct.timer_list* %12, i32 %13)
  store %struct.vc4_dev* %14, %struct.vc4_dev** %3, align 8
  %15 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %15, i32 0, i32 2
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %4, align 8
  %18 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %23 = call %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev* %22)
  store %struct.vc4_exec_info* %23, %struct.vc4_exec_info** %8, align 8
  %24 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %25 = call %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev* %24)
  store %struct.vc4_exec_info* %25, %struct.vc4_exec_info** %9, align 8
  %26 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %8, align 8
  %27 = icmp ne %struct.vc4_exec_info* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %30 = icmp ne %struct.vc4_exec_info* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %33 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %88

36:                                               ; preds = %28, %1
  %37 = call i32 @V3D_CTNCA(i32 0)
  %38 = call i64 @V3D_READ(i32 %37)
  store i64 %38, i64* %5, align 8
  %39 = call i32 @V3D_CTNCA(i32 1)
  %40 = call i64 @V3D_READ(i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %8, align 8
  %42 = icmp ne %struct.vc4_exec_info* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %8, align 8
  %46 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %51 = icmp ne %struct.vc4_exec_info* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %55 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52, %43
  %59 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %8, align 8
  %60 = icmp ne %struct.vc4_exec_info* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %8, align 8
  %64 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %67 = icmp ne %struct.vc4_exec_info* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %71 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %74 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = call i32 @vc4_queue_hangcheck(%struct.drm_device* %77)
  br label %88

79:                                               ; preds = %52, %49
  %80 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %81 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %85 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @schedule_work(i32* %86)
  br label %88

88:                                               ; preds = %79, %72, %31
  ret void
}

declare dso_local %struct.vc4_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev*) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @V3D_READ(i32) #1

declare dso_local i32 @V3D_CTNCA(i32) #1

declare dso_local i32 @vc4_queue_hangcheck(%struct.drm_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
