; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_destroy_process_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_destroy_process_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Destroying process vm %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_gpuvm_destroy_process_vm(%struct.kgd_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.kgd_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_vm*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %8 = call %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev* %7)
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_vm*
  store %struct.amdgpu_vm* %10, %struct.amdgpu_vm** %6, align 8
  %11 = load %struct.kgd_dev*, %struct.kgd_dev** %3, align 8
  %12 = icmp ne %struct.kgd_dev* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %31

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %27 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %28 = call i32 @amdgpu_vm_fini(%struct.amdgpu_device* %26, %struct.amdgpu_vm* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @kfree(i8* %29)
  br label %31

31:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.amdgpu_device* @get_amdgpu_device(%struct.kgd_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @amdgpu_vm_fini(%struct.amdgpu_device*, %struct.amdgpu_vm*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
