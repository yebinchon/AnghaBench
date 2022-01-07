; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_create_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_create_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i64, i32, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.task_struct = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@evict_process_worker = common dso_local global i32 0, align 4
@restore_process_worker = common dso_local global i32 0, align 4
@kfd_process_mmu_notifier_ops = common dso_local global i32 0, align 4
@kfd_processes_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfd_process* (%struct.task_struct*)* @create_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfd_process* @create_process(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.kfd_process*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.kfd_process*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.kfd_process* @kzalloc(i32 64, i32 %8)
  store %struct.kfd_process* %9, %struct.kfd_process** %4, align 8
  %10 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %11 = icmp ne %struct.kfd_process* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %125

13:                                               ; preds = %1
  %14 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %15 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %14, i32 0, i32 12
  %16 = call i32 @kref_init(i32* %15)
  %17 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %18 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %17, i32 0, i32 1
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %24 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %29 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %31 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %30, i32 0, i32 11
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %34 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %33, i32 0, i32 10
  %35 = load i32, i32* @evict_process_worker, align 4
  %36 = call i32 @INIT_DELAYED_WORK(i32* %34, i32 %35)
  %37 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %38 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %37, i32 0, i32 9
  %39 = load i32, i32* @restore_process_worker, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = call i32 (...) @get_jiffies_64()
  %42 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %43 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %45 = call i32 @kfd_event_init_process(%struct.kfd_process* %44)
  %46 = call i32 (...) @in_compat_syscall()
  %47 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %48 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = call i64 (...) @kfd_pasid_alloc()
  %50 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %51 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %53 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %13
  br label %119

57:                                               ; preds = %13
  %58 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %59 = call i64 @kfd_alloc_process_doorbells(%struct.kfd_process* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %114

62:                                               ; preds = %57
  %63 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %64 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %63, i32 0, i32 2
  %65 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %66 = call i32 @pqm_init(i32* %64, %struct.kfd_process* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %111

70:                                               ; preds = %62
  %71 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %72 = call i32 @kfd_init_apertures(%struct.kfd_process* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %107

76:                                               ; preds = %70
  %77 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %78 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32* @kfd_process_mmu_notifier_ops, i32** %79, align 8
  %80 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %81 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %80, i32 0, i32 6
  %82 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %83 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @mmu_notifier_register(%struct.TYPE_2__* %81, i64 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %102

89:                                               ; preds = %76
  %90 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %91 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @get_task_struct(i32 %92)
  %94 = load i32, i32* @kfd_processes_table, align 4
  %95 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %96 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %95, i32 0, i32 4
  %97 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %98 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @hash_add_rcu(i32 %94, i32* %96, i64 %99)
  %101 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  store %struct.kfd_process* %101, %struct.kfd_process** %2, align 8
  br label %128

102:                                              ; preds = %88
  %103 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %104 = call i32 @kfd_process_free_outstanding_kfd_bos(%struct.kfd_process* %103)
  %105 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %106 = call i32 @kfd_process_destroy_pdds(%struct.kfd_process* %105)
  br label %107

107:                                              ; preds = %102, %75
  %108 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %109 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %108, i32 0, i32 2
  %110 = call i32 @pqm_uninit(i32* %109)
  br label %111

111:                                              ; preds = %107, %69
  %112 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %113 = call i32 @kfd_free_process_doorbells(%struct.kfd_process* %112)
  br label %114

114:                                              ; preds = %111, %61
  %115 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %116 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @kfd_pasid_free(i64 %117)
  br label %119

119:                                              ; preds = %114, %56
  %120 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %121 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %120, i32 0, i32 1
  %122 = call i32 @mutex_destroy(i32* %121)
  %123 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %124 = call i32 @kfree(%struct.kfd_process* %123)
  br label %125

125:                                              ; preds = %119, %12
  %126 = load i32, i32* %5, align 4
  %127 = call %struct.kfd_process* @ERR_PTR(i32 %126)
  store %struct.kfd_process* %127, %struct.kfd_process** %2, align 8
  br label %128

128:                                              ; preds = %125, %89
  %129 = load %struct.kfd_process*, %struct.kfd_process** %2, align 8
  ret %struct.kfd_process* %129
}

declare dso_local %struct.kfd_process* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @kfd_event_init_process(%struct.kfd_process*) #1

declare dso_local i32 @in_compat_syscall(...) #1

declare dso_local i64 @kfd_pasid_alloc(...) #1

declare dso_local i64 @kfd_alloc_process_doorbells(%struct.kfd_process*) #1

declare dso_local i32 @pqm_init(i32*, %struct.kfd_process*) #1

declare dso_local i32 @kfd_init_apertures(%struct.kfd_process*) #1

declare dso_local i32 @mmu_notifier_register(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @get_task_struct(i32) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i64) #1

declare dso_local i32 @kfd_process_free_outstanding_kfd_bos(%struct.kfd_process*) #1

declare dso_local i32 @kfd_process_destroy_pdds(%struct.kfd_process*) #1

declare dso_local i32 @pqm_uninit(i32*) #1

declare dso_local i32 @kfd_free_process_doorbells(%struct.kfd_process*) #1

declare dso_local i32 @kfd_pasid_free(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.kfd_process*) #1

declare dso_local %struct.kfd_process* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
