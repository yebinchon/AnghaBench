; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_update_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_update_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_queue_manager = type { i32 }
%struct.queue_properties = type { i32, i32, i32, i32 }
%struct.process_queue_node = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"No queue %d exists for update operation\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqm_update_queue(%struct.process_queue_manager* %0, i32 %1, %struct.queue_properties* %2) #0 {
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
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %22 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %25 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %23, i32* %28, align 4
  %29 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %30 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %33 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 8
  %37 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %38 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %41 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  %45 = load %struct.queue_properties*, %struct.queue_properties** %7, align 8
  %46 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %49 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %54 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %61, align 8
  %63 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %64 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %71 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call i32 %62(%struct.TYPE_9__* %69, %struct.TYPE_10__* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %20
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %76, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.process_queue_node* @get_queue_by_qid(%struct.process_queue_manager*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
