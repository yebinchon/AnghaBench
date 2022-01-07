; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_handle_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_handle_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@scmi_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scmi_handle_put(%struct.scmi_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_handle*, align 8
  %4 = alloca %struct.scmi_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %3, align 8
  %5 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %6 = icmp ne %struct.scmi_handle* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %12 = call %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle* %11)
  store %struct.scmi_info* %12, %struct.scmi_info** %4, align 8
  %13 = call i32 @mutex_lock(i32* @scmi_list_mutex)
  %14 = load %struct.scmi_info*, %struct.scmi_info** %4, align 8
  %15 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %10
  %23 = load %struct.scmi_info*, %struct.scmi_info** %4, align 8
  %24 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %10
  %28 = call i32 @mutex_unlock(i32* @scmi_list_mutex)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.scmi_info* @handle_to_scmi_info(%struct.scmi_handle*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
