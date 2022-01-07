; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_open_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_driver_open_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { %struct.radeon_vm }
%struct.radeon_vm = type { i32 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RADEON_VA_IB_OFFSET = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_READABLE = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SNOOPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_driver_open_kms(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_fpriv*, align 8
  %9 = alloca %struct.radeon_vm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %6, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 0
  store %struct.radeon_fpriv* null, %struct.radeon_fpriv** %14, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_CAYMAN, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %103

29:                                               ; preds = %23
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.radeon_fpriv* @kzalloc(i32 4, i32 %30)
  store %struct.radeon_fpriv* %31, %struct.radeon_fpriv** %8, align 8
  %32 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %8, align 8
  %33 = icmp ne %struct.radeon_fpriv* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %104

41:                                               ; preds = %29
  %42 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %41
  %47 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %47, i32 0, i32 0
  store %struct.radeon_vm* %48, %struct.radeon_vm** %9, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %50 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %51 = call i32 @radeon_vm_init(%struct.radeon_device* %49, %struct.radeon_vm* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %8, align 8
  %56 = call i32 @kfree(%struct.radeon_fpriv* %55)
  br label %104

57:                                               ; preds = %46
  %58 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @radeon_bo_reserve(i32 %61, i32 0)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %67 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %68 = call i32 @radeon_vm_fini(%struct.radeon_device* %66, %struct.radeon_vm* %67)
  %69 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %8, align 8
  %70 = call i32 @kfree(%struct.radeon_fpriv* %69)
  br label %104

71:                                               ; preds = %57
  %72 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %73 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %74 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @radeon_vm_bo_add(%struct.radeon_device* %72, %struct.radeon_vm* %73, i32 %77)
  %79 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %80 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %82 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %83 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RADEON_VA_IB_OFFSET, align 4
  %86 = load i32, i32* @RADEON_VM_PAGE_READABLE, align 4
  %87 = load i32, i32* @RADEON_VM_PAGE_SNOOPED, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @radeon_vm_bo_set_addr(%struct.radeon_device* %81, i32 %84, i32 %85, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %71
  %93 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %94 = load %struct.radeon_vm*, %struct.radeon_vm** %9, align 8
  %95 = call i32 @radeon_vm_fini(%struct.radeon_device* %93, %struct.radeon_vm* %94)
  %96 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %8, align 8
  %97 = call i32 @kfree(%struct.radeon_fpriv* %96)
  br label %104

98:                                               ; preds = %71
  br label %99

99:                                               ; preds = %98, %41
  %100 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %8, align 8
  %101 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %102 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %101, i32 0, i32 0
  store %struct.radeon_fpriv* %100, %struct.radeon_fpriv** %102, align 8
  br label %103

103:                                              ; preds = %99, %23
  br label %104

104:                                              ; preds = %103, %92, %65, %54, %38
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pm_runtime_mark_last_busy(i32 %107)
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @pm_runtime_put_autosuspend(i32 %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %104, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.radeon_fpriv* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_vm_init(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @kfree(%struct.radeon_fpriv*) #1

declare dso_local i32 @radeon_bo_reserve(i32, i32) #1

declare dso_local i32 @radeon_vm_fini(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_vm_bo_add(%struct.radeon_device*, %struct.radeon_vm*, i32) #1

declare dso_local i32 @radeon_vm_bo_set_addr(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
