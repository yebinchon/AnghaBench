; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ib.c_radeon_ib_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.radeon_ib = type { i32, i32, %struct.TYPE_4__*, i64, %struct.radeon_vm*, i32, i32*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.radeon_vm = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to get a new IB (%d)\0A\00", align 1
@RADEON_VA_IB_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ib_get(%struct.radeon_device* %0, i32 %1, %struct.radeon_ib* %2, %struct.radeon_vm* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_ib*, align 8
  %10 = alloca %struct.radeon_vm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.radeon_ib* %2, %struct.radeon_ib** %9, align 8
  store %struct.radeon_vm* %3, %struct.radeon_vm** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 1
  %16 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %17 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %16, i32 0, i32 2
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @radeon_sa_bo_new(%struct.radeon_device* %13, i32* %15, %struct.TYPE_4__** %17, i32 %18, i32 256)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %69

29:                                               ; preds = %5
  %30 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %30, i32 0, i32 7
  %32 = call i32 @radeon_sync_create(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %37 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %39 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @radeon_sa_bo_cpu_addr(%struct.TYPE_4__* %40)
  %42 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %43 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.radeon_vm*, %struct.radeon_vm** %10, align 8
  %45 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %46 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %45, i32 0, i32 4
  store %struct.radeon_vm* %44, %struct.radeon_vm** %46, align 8
  %47 = load %struct.radeon_vm*, %struct.radeon_vm** %10, align 8
  %48 = icmp ne %struct.radeon_vm* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %29
  %50 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %51 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RADEON_VA_IB_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %58 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  br label %66

59:                                               ; preds = %29
  %60 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %61 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i64 @radeon_sa_bo_gpu_addr(%struct.TYPE_4__* %62)
  %64 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %49
  %67 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %68 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %22
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @radeon_sa_bo_new(%struct.radeon_device*, i32*, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_sync_create(i32*) #1

declare dso_local i32 @radeon_sa_bo_cpu_addr(%struct.TYPE_4__*) #1

declare dso_local i64 @radeon_sa_bo_gpu_addr(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
