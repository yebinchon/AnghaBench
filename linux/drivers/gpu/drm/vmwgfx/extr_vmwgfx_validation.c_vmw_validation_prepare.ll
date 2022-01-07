; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_validation_context = type { %struct.mutex* }
%struct.mutex = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_validation_prepare(%struct.vmw_validation_context* %0, %struct.mutex* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_validation_context*, align 8
  %6 = alloca %struct.mutex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vmw_validation_context* %0, %struct.vmw_validation_context** %5, align 8
  store %struct.mutex* %1, %struct.mutex** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.mutex*, %struct.mutex** %6, align 8
  %10 = icmp ne %struct.mutex* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.mutex*, %struct.mutex** %6, align 8
  %16 = call i32 @mutex_lock_interruptible(%struct.mutex* %15)
  store i32 %16, i32* %8, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load %struct.mutex*, %struct.mutex** %6, align 8
  %19 = call i32 @mutex_lock(%struct.mutex* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.mutex*, %struct.mutex** %6, align 8
  %29 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %5, align 8
  %30 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %29, i32 0, i32 0
  store %struct.mutex* %28, %struct.mutex** %30, align 8
  %31 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @vmw_validation_res_reserve(%struct.vmw_validation_context* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %65

37:                                               ; preds = %27
  %38 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @vmw_validation_bo_reserve(%struct.vmw_validation_context* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %62

44:                                               ; preds = %37
  %45 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @vmw_validation_bo_validate(%struct.vmw_validation_context* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @vmw_validation_res_validate(%struct.vmw_validation_context* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %73

59:                                               ; preds = %57, %50
  %60 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %5, align 8
  %61 = call i32 @vmw_validation_bo_backoff(%struct.vmw_validation_context* %60)
  br label %62

62:                                               ; preds = %59, %43
  %63 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %5, align 8
  %64 = call i32 @vmw_validation_res_unreserve(%struct.vmw_validation_context* %63, i32 1)
  br label %65

65:                                               ; preds = %62, %36
  %66 = load %struct.mutex*, %struct.mutex** %6, align 8
  %67 = icmp ne %struct.mutex* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.mutex*, %struct.mutex** %6, align 8
  %70 = call i32 @mutex_unlock(%struct.mutex* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %58, %23
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @vmw_validation_res_reserve(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @vmw_validation_bo_reserve(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @vmw_validation_bo_validate(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @vmw_validation_res_validate(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @vmw_validation_bo_backoff(%struct.vmw_validation_context*) #1

declare dso_local i32 @vmw_validation_res_unreserve(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
