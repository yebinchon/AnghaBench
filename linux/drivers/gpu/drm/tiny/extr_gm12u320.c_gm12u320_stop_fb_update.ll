; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_stop_fb_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_stop_fb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm12u320_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gm12u320_device*)* @gm12u320_stop_fb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm12u320_stop_fb_update(%struct.gm12u320_device* %0) #0 {
  %2 = alloca %struct.gm12u320_device*, align 8
  store %struct.gm12u320_device* %0, %struct.gm12u320_device** %2, align 8
  %3 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %4 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %8 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %11 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %15 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = call i32 @wake_up(i32* %16)
  %18 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %19 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %23 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %27 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %33 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @drm_framebuffer_put(i32* %35)
  %37 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %38 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %42 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @drm_framebuffer_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
