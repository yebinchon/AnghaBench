; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_set_cu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_set_cu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_queue_manager = type { i32 }
%struct.queue_properties = type { i32, i32 }
%struct.process_queue_node = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"No queue %d exists for update operation\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqm_set_cu_mask(%struct.process_queue_manager* %0, i32 %1, %struct.queue_properties* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.process_queue_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.queue_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.process_queue_node*, align 8
  store %struct.process_queue_manager* %0, %struct.process_queue_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.queue_properties* %2, %struct.queue_properties** %7, align 8
  %10 = load %struct.process_queue_manager*, %struct.process_queue_manager** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.process_queue_node* @get_queue_by_qid(%struct.process_queue_manager* %10, i32 %11)
  store %struct.process_queue_node* %12, %struct.process_queue_node** %9, align 8
  %13 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %14 = icmp ne %struct.process_queue_node* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %70

20:                                               ; preds = %3
  %21 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %22 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %29 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %32 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  %36 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %37 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %40 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 8
  %44 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %45 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %52, align 8
  %54 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %55 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %62 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call i32 %53(%struct.TYPE_9__* %60, %struct.TYPE_10__* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %20
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %67, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.process_queue_node* @get_queue_by_qid(%struct.process_queue_manager*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
