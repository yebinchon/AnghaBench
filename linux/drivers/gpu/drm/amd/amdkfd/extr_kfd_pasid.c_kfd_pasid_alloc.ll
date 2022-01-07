; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_pasid.c_kfd_pasid_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_pasid.c_kfd_pasid_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i64 }

@kfd2kgd = common dso_local global i64 0, align 8
@pasid_bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_pasid_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @kfd2kgd, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %0
  store %struct.kfd_dev* null, %struct.kfd_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %24, %7
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @kfd_topology_enum_kfd_devices(i32 %9, %struct.kfd_dev** %3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %14 = icmp ne %struct.kfd_dev* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %17 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %22 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* @kfd2kgd, align 8
  br label %27

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %8

27:                                               ; preds = %20, %8
  %28 = load i64, i64* @kfd2kgd, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %42

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i32, i32* @pasid_bits, align 4
  %34 = call i32 @amdgpu_pasid_alloc(i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %2, align 4
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %30
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i64 @kfd_topology_enum_kfd_devices(i32, %struct.kfd_dev**) #1

declare dso_local i32 @amdgpu_pasid_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
