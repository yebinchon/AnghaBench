; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_exit_framebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_exit_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { %struct.fb_info*, %struct.TYPE_2__* }
%struct.fb_info = type { i32, %struct.picolcd_fb_data* }
%struct.picolcd_fb_data = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@dev_attr_fb_update_rate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @picolcd_exit_framebuffer(%struct.picolcd_data* %0) #0 {
  %2 = alloca %struct.picolcd_data*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.picolcd_fb_data*, align 8
  %5 = alloca i64, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %2, align 8
  %6 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %7 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %6, i32 0, i32 0
  %8 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  store %struct.fb_info* %8, %struct.fb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = icmp ne %struct.fb_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %14 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @device_remove_file(i32* %16, i32* @dev_attr_fb_update_rate)
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %19, align 8
  store %struct.picolcd_fb_data* %20, %struct.picolcd_fb_data** %4, align 8
  %21 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %4, align 8
  %22 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %4, align 8
  %26 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %4, align 8
  %28 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = call i32 @flush_delayed_work(i32* %32)
  %34 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %35 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %34, i32 0, i32 0
  store %struct.fb_info* null, %struct.fb_info** %35, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = call i32 @unregister_framebuffer(%struct.fb_info* %36)
  br label %38

38:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
