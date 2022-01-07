; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %struct.vmw_buffer_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %11)
  store %struct.vmw_private* %12, %struct.vmw_private** %8, align 8
  %13 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %14 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 7
  %20 = sdiv i32 %19, 8
  %21 = mul nsw i32 %15, %20
  %22 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %34 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %33, i32 0, i32 0
  %35 = call i32 @ttm_read_lock(i32* %34, i32 1)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %68

43:                                               ; preds = %3
  %44 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %45 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %46 = call %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %50 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %53 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %52, i32 0, i32 5
  %54 = call i32 @vmw_user_bo_alloc(%struct.vmw_private* %44, i32 %48, i32 %51, i32 0, i32* %53, %struct.vmw_buffer_object** %9, i32* null)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %63

61:                                               ; preds = %43
  %62 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %9)
  br label %63

63:                                               ; preds = %61, %60
  %64 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %65 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %64, i32 0, i32 0
  %66 = call i32 @ttm_read_unlock(i32* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %41
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32 @ttm_read_lock(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_user_bo_alloc(%struct.vmw_private*, i32, i32, i32, i32*, %struct.vmw_buffer_object**, i32*) #1

declare dso_local %struct.TYPE_2__* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

declare dso_local i32 @ttm_read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
