; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_irq_preinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_irq_preinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.msm_kms*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @msm_irq_preinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_irq_preinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  %4 = alloca %struct.msm_kms*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  store %struct.msm_drm_private* %7, %struct.msm_drm_private** %3, align 8
  %8 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %9 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %8, i32 0, i32 0
  %10 = load %struct.msm_kms*, %struct.msm_kms** %9, align 8
  store %struct.msm_kms* %10, %struct.msm_kms** %4, align 8
  %11 = load %struct.msm_kms*, %struct.msm_kms** %4, align 8
  %12 = icmp ne %struct.msm_kms* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.msm_kms*, %struct.msm_kms** %4, align 8
  %17 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %19, align 8
  %21 = load %struct.msm_kms*, %struct.msm_kms** %4, align 8
  %22 = call i32 %20(%struct.msm_kms* %21)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
