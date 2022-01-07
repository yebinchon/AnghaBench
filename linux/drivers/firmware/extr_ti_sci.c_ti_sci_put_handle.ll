; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_put_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_put_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_handle = type { i32 }
%struct.ti_sci_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ti_sci_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sci_put_handle(%struct.ti_sci_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_sci_handle*, align 8
  %4 = alloca %struct.ti_sci_info*, align 8
  store %struct.ti_sci_handle* %0, %struct.ti_sci_handle** %3, align 8
  %5 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %6 = call i64 @IS_ERR(%struct.ti_sci_handle* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %10 = call i32 @PTR_ERR(%struct.ti_sci_handle* %9)
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %13 = icmp ne %struct.ti_sci_handle* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %3, align 8
  %19 = call %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_handle* %18)
  store %struct.ti_sci_info* %19, %struct.ti_sci_info** %4, align 8
  %20 = call i32 @mutex_lock(i32* @ti_sci_list_mutex)
  %21 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %22 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %17
  %30 = load %struct.ti_sci_info*, %struct.ti_sci_info** %4, align 8
  %31 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %17
  %35 = call i32 @mutex_unlock(i32* @ti_sci_list_mutex)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %14, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @IS_ERR(%struct.ti_sci_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.ti_sci_handle*) #1

declare dso_local %struct.ti_sci_info* @handle_to_ti_sci_info(%struct.ti_sci_handle*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
