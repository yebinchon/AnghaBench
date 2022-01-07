; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_create_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_create_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.kfd_process = type { %struct.TYPE_7__*, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@kfd_processes_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Process already found\0A\00", align 1
@procfs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Creating procfs kobject failed\00", align 1
@procfs_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Creating procfs pid directory failed\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pasid\00", align 1
@KFD_SYSFS_FILE_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Creating pasid for pid %d failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_process* @kfd_create_process(%struct.file* %0) #0 {
  %2 = alloca %struct.kfd_process*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.kfd_process*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.kfd_process* @ERR_PTR(i32 %14)
  store %struct.kfd_process* %15, %struct.kfd_process** %2, align 8
  br label %119

16:                                               ; preds = %1
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.kfd_process* @ERR_PTR(i32 %28)
  store %struct.kfd_process* %29, %struct.kfd_process** %2, align 8
  br label %119

30:                                               ; preds = %16
  %31 = call i32 @mutex_lock(i32* @kfd_processes_mutex)
  %32 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %33 = call %struct.kfd_process* @find_process(%struct.task_struct* %32)
  store %struct.kfd_process* %33, %struct.kfd_process** %4, align 8
  %34 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %35 = icmp ne %struct.kfd_process* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %115

38:                                               ; preds = %30
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = call %struct.kfd_process* @create_process(%struct.task_struct* %39)
  store %struct.kfd_process* %40, %struct.kfd_process** %4, align 8
  %41 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %42 = call i64 @IS_ERR(%struct.kfd_process* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %116

45:                                               ; preds = %38
  %46 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = call i32 @kfd_process_init_cwsr_apu(%struct.kfd_process* %46, %struct.file* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.kfd_process* @ERR_PTR(i32 %52)
  store %struct.kfd_process* %53, %struct.kfd_process** %4, align 8
  br label %116

54:                                               ; preds = %45
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @procfs, i32 0, i32 0), align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %116

58:                                               ; preds = %54
  %59 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %60 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kfd_alloc_struct(i32 %61)
  %63 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %64 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %66 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  %70 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %116

71:                                               ; preds = %58
  %72 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %73 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @procfs, i32 0, i32 0), align 4
  %76 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %77 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @kobject_init_and_add(i32 %74, i32* @procfs_type, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %116

87:                                               ; preds = %71
  %88 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %89 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %90, align 8
  %91 = load i32, i32* @KFD_SYSFS_FILE_MODE, align 4
  %92 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %93 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %96 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %95, i32 0, i32 1
  %97 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %96)
  %98 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %99 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %102 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %101, i32 0, i32 1
  %103 = call i32 @sysfs_create_file(i32 %100, %struct.TYPE_8__* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %87
  %107 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %108 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %106, %87
  br label %115

115:                                              ; preds = %114, %36
  br label %116

116:                                              ; preds = %115, %85, %69, %57, %51, %44
  %117 = call i32 @mutex_unlock(i32* @kfd_processes_mutex)
  %118 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  store %struct.kfd_process* %118, %struct.kfd_process** %2, align 8
  br label %119

119:                                              ; preds = %116, %26, %12
  %120 = load %struct.kfd_process*, %struct.kfd_process** %2, align 8
  ret %struct.kfd_process* %120
}

declare dso_local %struct.kfd_process* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kfd_process* @find_process(%struct.task_struct*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.kfd_process* @create_process(%struct.task_struct*) #1

declare dso_local i64 @IS_ERR(%struct.kfd_process*) #1

declare dso_local i32 @kfd_process_init_cwsr_apu(%struct.kfd_process*, %struct.file*) #1

declare dso_local i32 @kfd_alloc_struct(i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @kobject_init_and_add(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_8__*) #1

declare dso_local i32 @sysfs_create_file(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
