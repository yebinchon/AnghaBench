; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_dev_is_large_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_dev_is_large_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.kfd_local_mem_info = type { i64, i64 }

@debug_largebar = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Simulate large-bar allocation on non large-bar machine\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_dev_is_large_bar(%struct.kfd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca %struct.kfd_local_mem_info, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  %5 = load i64, i64* @debug_largebar, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %11 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

17:                                               ; preds = %9
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %19 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @amdgpu_amdkfd_get_local_mem_info(i32 %20, %struct.kfd_local_mem_info* %4)
  %22 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.kfd_local_mem_info, %struct.kfd_local_mem_info* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %25, %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %16, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @amdgpu_amdkfd_get_local_mem_info(i32, %struct.kfd_local_mem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
