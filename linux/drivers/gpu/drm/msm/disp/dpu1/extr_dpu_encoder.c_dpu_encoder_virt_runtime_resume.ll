; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_virt_runtime_resume(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %4 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %5 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %4)
  store %struct.dpu_encoder_virt* %5, %struct.dpu_encoder_virt** %3, align 8
  %6 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_8__*)* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %32, align 8
  %34 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %35 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i32 %33(%struct.TYPE_8__* %36)
  br label %38

38:                                               ; preds = %27, %19, %14
  %39 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %40 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %45 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %48, align 8
  %50 = icmp ne i32 (%struct.TYPE_7__*)* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %53 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %56, align 8
  %58 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %59 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 %57(%struct.TYPE_7__* %60)
  br label %62

62:                                               ; preds = %51, %43, %38
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %64 = call i32 @_dpu_encoder_virt_enable_helper(%struct.drm_encoder* %63)
  br label %65

65:                                               ; preds = %62, %13
  %66 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %67 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_dpu_encoder_virt_enable_helper(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
