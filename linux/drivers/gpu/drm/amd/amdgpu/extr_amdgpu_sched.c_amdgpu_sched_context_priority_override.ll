; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sched.c_amdgpu_sched_context_priority_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sched.c_amdgpu_sched_context_priority_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.fd = type { i32 }
%struct.amdgpu_fpriv = type { i32 }
%struct.amdgpu_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32)* @amdgpu_sched_context_priority_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_sched_context_priority_override(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd, align 4
  %11 = alloca %struct.amdgpu_fpriv*, align 8
  %12 = alloca %struct.amdgpu_ctx*, align 8
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @fdget(i32 %14)
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @amdgpu_file_to_fpriv(i32 %25, %struct.amdgpu_fpriv** %11)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fdput(i32 %31)
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %55

34:                                               ; preds = %23
  %35 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.amdgpu_ctx* @amdgpu_ctx_get(%struct.amdgpu_fpriv* %35, i32 %36)
  store %struct.amdgpu_ctx* %37, %struct.amdgpu_ctx** %12, align 8
  %38 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %12, align 8
  %39 = icmp ne %struct.amdgpu_ctx* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fdput(i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %12, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @amdgpu_ctx_priority_override(%struct.amdgpu_ctx* %47, i32 %48)
  %50 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %12, align 8
  %51 = call i32 @amdgpu_ctx_put(%struct.amdgpu_ctx* %50)
  %52 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fdput(i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %40, %29, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @fdget(i32) #1

declare dso_local i32 @amdgpu_file_to_fpriv(i32, %struct.amdgpu_fpriv**) #1

declare dso_local i32 @fdput(i32) #1

declare dso_local %struct.amdgpu_ctx* @amdgpu_ctx_get(%struct.amdgpu_fpriv*, i32) #1

declare dso_local i32 @amdgpu_ctx_priority_override(%struct.amdgpu_ctx*, i32) #1

declare dso_local i32 @amdgpu_ctx_put(%struct.amdgpu_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
