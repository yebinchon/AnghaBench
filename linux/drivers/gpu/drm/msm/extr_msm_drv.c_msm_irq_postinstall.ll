; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.msm_kms*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @msm_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_irq_postinstall(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.msm_kms*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  store %struct.msm_drm_private* %8, %struct.msm_drm_private** %4, align 8
  %9 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %10 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %9, i32 0, i32 0
  %11 = load %struct.msm_kms*, %struct.msm_kms** %10, align 8
  store %struct.msm_kms* %11, %struct.msm_kms** %5, align 8
  %12 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %13 = icmp ne %struct.msm_kms* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %18 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %20, align 8
  %22 = icmp ne i32 (%struct.msm_kms*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %25 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %27, align 8
  %29 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %30 = call i32 %28(%struct.msm_kms* %29)
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
