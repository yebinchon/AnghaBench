; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_resources_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_resources_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_sw_context = type { %struct.vmw_buffer_object*, i32, i32 }
%struct.vmw_buffer_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_sw_context*)* @vmw_resources_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_resources_reserve(%struct.vmw_sw_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_sw_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_buffer_object*, align 8
  store %struct.vmw_sw_context* %0, %struct.vmw_sw_context** %3, align 8
  %6 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @vmw_validation_res_reserve(i32 %8, i32 1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %3, align 8
  %16 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %15, i32 0, i32 0
  %17 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %16, align 8
  %18 = icmp ne %struct.vmw_buffer_object* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %3, align 8
  %21 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.vmw_buffer_object* @vmw_context_get_dx_query_mob(i32 %22)
  store %struct.vmw_buffer_object* %23, %struct.vmw_buffer_object** %5, align 8
  %24 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %25 = icmp ne %struct.vmw_buffer_object* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %28 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %3, align 8
  %29 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %28, i32 0, i32 0
  %30 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %29, align 8
  %31 = icmp ne %struct.vmw_buffer_object* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %26, %19
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @vmw_validation_res_reserve(i32, i32) #1

declare dso_local %struct.vmw_buffer_object* @vmw_context_get_dx_query_mob(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
