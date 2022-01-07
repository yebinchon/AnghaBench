; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 = common dso_local global i32 0, align 4
@DP_CEC_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dp_cec_irq(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca %struct.drm_dp_aux*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %2, align 8
  %5 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %6 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %12 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %16 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %40

21:                                               ; preds = %10
  %22 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %23 = load i32, i32* @DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1, align 4
  %24 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %22, i32 %23, i32* %3)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DP_CEC_IRQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %21
  br label %40

33:                                               ; preds = %27
  %34 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %35 = call i32 @drm_dp_cec_handle_irq(%struct.drm_dp_aux* %34)
  %36 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %37 = load i32, i32* @DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1, align 4
  %38 = load i32, i32* @DP_CEC_IRQ, align 4
  %39 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %32, %20
  %41 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %42 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %40, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @drm_dp_cec_handle_irq(%struct.drm_dp_aux*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
