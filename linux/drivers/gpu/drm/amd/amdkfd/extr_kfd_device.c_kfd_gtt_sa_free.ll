; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_gtt_sa_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_gtt_sa_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32 }
%struct.kfd_mem_obj = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"Free mem_obj = %p, range_start = %d, range_end = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_gtt_sa_free(%struct.kfd_dev* %0, %struct.kfd_mem_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.kfd_mem_obj*, align 8
  %6 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.kfd_mem_obj* %1, %struct.kfd_mem_obj** %5, align 8
  %7 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %8 = icmp ne %struct.kfd_mem_obj* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

10:                                               ; preds = %2
  %11 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %12 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %13 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %16 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.kfd_mem_obj* %11, i32 %14, i32 %17)
  %19 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %20 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %23 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %37, %10
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %28 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ule i32 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %34 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clear_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %42 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %5, align 8
  %45 = call i32 @kfree(%struct.kfd_mem_obj* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pr_debug(i8*, %struct.kfd_mem_obj*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kfd_mem_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
