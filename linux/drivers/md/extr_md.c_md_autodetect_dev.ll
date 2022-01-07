; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_autodetect_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_autodetect_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detected_devices_node = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@detected_devices_mutex = common dso_local global i32 0, align 4
@all_detected_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_autodetect_dev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.detected_devices_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.detected_devices_node* @kzalloc(i32 8, i32 %4)
  store %struct.detected_devices_node* %5, %struct.detected_devices_node** %3, align 8
  %6 = load %struct.detected_devices_node*, %struct.detected_devices_node** %3, align 8
  %7 = icmp ne %struct.detected_devices_node* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.detected_devices_node*, %struct.detected_devices_node** %3, align 8
  %11 = getelementptr inbounds %struct.detected_devices_node, %struct.detected_devices_node* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = call i32 @mutex_lock(i32* @detected_devices_mutex)
  %13 = load %struct.detected_devices_node*, %struct.detected_devices_node** %3, align 8
  %14 = getelementptr inbounds %struct.detected_devices_node, %struct.detected_devices_node* %13, i32 0, i32 0
  %15 = call i32 @list_add_tail(i32* %14, i32* @all_detected_devices)
  %16 = call i32 @mutex_unlock(i32* @detected_devices_mutex)
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.detected_devices_node* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
