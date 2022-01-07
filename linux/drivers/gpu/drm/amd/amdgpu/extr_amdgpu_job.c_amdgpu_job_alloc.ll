; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_job.c_amdgpu_job_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_job = type { i32, i32, i32, i32, i32, i8*, %struct.amdgpu_vm*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.amdgpu_vm = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_BO_INVALID_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_job_alloc(%struct.amdgpu_device* %0, i32 %1, %struct.amdgpu_job** %2, %struct.amdgpu_vm* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_job**, align 8
  %9 = alloca %struct.amdgpu_vm*, align 8
  %10 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.amdgpu_job** %2, %struct.amdgpu_job*** %8, align 8
  store %struct.amdgpu_vm* %3, %struct.amdgpu_vm** %9, align 8
  store i64 48, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %76

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.amdgpu_job* @kzalloc(i64 %22, i32 %23)
  %25 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  store %struct.amdgpu_job* %24, %struct.amdgpu_job** %25, align 8
  %26 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %27 = load %struct.amdgpu_job*, %struct.amdgpu_job** %26, align 8
  %28 = icmp ne %struct.amdgpu_job* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %76

32:                                               ; preds = %16
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %40 = load %struct.amdgpu_job*, %struct.amdgpu_job** %39, align 8
  %41 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* %38, i32** %42, align 8
  %43 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %9, align 8
  %44 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %45 = load %struct.amdgpu_job*, %struct.amdgpu_job** %44, align 8
  %46 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %45, i32 0, i32 6
  store %struct.amdgpu_vm* %43, %struct.amdgpu_vm** %46, align 8
  %47 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %48 = load %struct.amdgpu_job*, %struct.amdgpu_job** %47, align 8
  %49 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %48, i64 1
  %50 = bitcast %struct.amdgpu_job* %49 to i8*
  %51 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %52 = load %struct.amdgpu_job*, %struct.amdgpu_job** %51, align 8
  %53 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %52, i32 0, i32 5
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %56 = load %struct.amdgpu_job*, %struct.amdgpu_job** %55, align 8
  %57 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %59 = load %struct.amdgpu_job*, %struct.amdgpu_job** %58, align 8
  %60 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %59, i32 0, i32 4
  %61 = call i32 @amdgpu_sync_create(i32* %60)
  %62 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %63 = load %struct.amdgpu_job*, %struct.amdgpu_job** %62, align 8
  %64 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %63, i32 0, i32 3
  %65 = call i32 @amdgpu_sync_create(i32* %64)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = call i32 @atomic_read(i32* %67)
  %69 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %70 = load %struct.amdgpu_job*, %struct.amdgpu_job** %69, align 8
  %71 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @AMDGPU_BO_INVALID_OFFSET, align 4
  %73 = load %struct.amdgpu_job**, %struct.amdgpu_job*** %8, align 8
  %74 = load %struct.amdgpu_job*, %struct.amdgpu_job** %73, align 8
  %75 = getelementptr inbounds %struct.amdgpu_job, %struct.amdgpu_job* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %32, %29, %13
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.amdgpu_job* @kzalloc(i64, i32) #1

declare dso_local i32 @amdgpu_sync_create(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
