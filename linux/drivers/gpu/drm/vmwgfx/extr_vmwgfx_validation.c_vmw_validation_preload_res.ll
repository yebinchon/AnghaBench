; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_preload_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_preload_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_validation_context = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_validation_preload_res(%struct.vmw_validation_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_validation_context*, align 8
  %5 = alloca i32, align 4
  store %struct.vmw_validation_context* %0, %struct.vmw_validation_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = add i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = call i32 @vmw_validation_align(i32 %9)
  %11 = call i32 @vmw_validation_align(i32 4)
  %12 = add i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @vmw_validation_mem_alloc(%struct.vmw_validation_context* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %4, align 8
  %23 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, %21
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @vmw_validation_align(i32) #1

declare dso_local i32 @vmw_validation_mem_alloc(%struct.vmw_validation_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
