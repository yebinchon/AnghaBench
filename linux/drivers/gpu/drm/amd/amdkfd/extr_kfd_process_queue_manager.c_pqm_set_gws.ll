; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_set_gws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process_queue_manager.c_pqm_set_gws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_queue_manager = type { i32 }
%struct.kfd_dev = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { %struct.kfd_dev*, %struct.kgd_mem* }
%struct.kgd_mem = type { i32 }
%struct.process_queue_node = type { %struct.TYPE_10__* }
%struct.kfd_process_device = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Queue id does not match any known queue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Process device data doesn't exist\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqm_set_gws(%struct.process_queue_manager* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.process_queue_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kfd_dev*, align 8
  %9 = alloca %struct.process_queue_node*, align 8
  %10 = alloca %struct.kfd_process_device*, align 8
  %11 = alloca %struct.kgd_mem*, align 8
  %12 = alloca i32, align 4
  store %struct.process_queue_manager* %0, %struct.process_queue_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.kfd_dev* null, %struct.kfd_dev** %8, align 8
  store %struct.kgd_mem* null, %struct.kgd_mem** %11, align 8
  %13 = load %struct.process_queue_manager*, %struct.process_queue_manager** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.process_queue_node* @get_queue_by_qid(%struct.process_queue_manager* %13, i32 %14)
  store %struct.process_queue_node* %15, %struct.process_queue_node** %9, align 8
  %16 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %17 = icmp ne %struct.process_queue_node* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %148

22:                                               ; preds = %3
  %23 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %24 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %29 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.kfd_dev*, %struct.kfd_dev** %31, align 8
  store %struct.kfd_dev* %32, %struct.kfd_dev** %8, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %35 = icmp ne %struct.kfd_dev* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %148

43:                                               ; preds = %33
  %44 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %45 = load %struct.process_queue_manager*, %struct.process_queue_manager** %5, align 8
  %46 = getelementptr inbounds %struct.process_queue_manager, %struct.process_queue_manager* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev* %44, i32 %47)
  store %struct.kfd_process_device* %48, %struct.kfd_process_device** %10, align 8
  %49 = load %struct.kfd_process_device*, %struct.kfd_process_device** %10, align 8
  %50 = icmp ne %struct.kfd_process_device* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %148

55:                                               ; preds = %43
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.kfd_process_device*, %struct.kfd_process_device** %10, align 8
  %60 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %148

67:                                               ; preds = %58, %55
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %67
  %71 = load %struct.kfd_process_device*, %struct.kfd_process_device** %10, align 8
  %72 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %148

79:                                               ; preds = %70, %67
  %80 = load i8*, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.kfd_process_device*, %struct.kfd_process_device** %10, align 8
  %84 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @amdgpu_amdkfd_add_gws_to_process(i32 %87, i8* %88, %struct.kgd_mem** %11)
  store i32 %89, i32* %12, align 4
  br label %102

90:                                               ; preds = %79
  %91 = load %struct.kfd_process_device*, %struct.kfd_process_device** %10, align 8
  %92 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %97 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.kgd_mem*, %struct.kgd_mem** %99, align 8
  %101 = call i32 @amdgpu_amdkfd_remove_gws_from_process(i32 %95, %struct.kgd_mem* %100)
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %90, %82
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %148

108:                                              ; preds = %102
  %109 = load %struct.kgd_mem*, %struct.kgd_mem** %11, align 8
  %110 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %111 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store %struct.kgd_mem* %109, %struct.kgd_mem** %113, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %118 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @amdgpu_amdkfd_get_num_gws(i32 %119)
  br label %122

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %116
  %123 = phi i32 [ %120, %116 ], [ 0, %121 ]
  %124 = load %struct.kfd_process_device*, %struct.kfd_process_device** %10, align 8
  %125 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %128 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.kfd_dev*, %struct.kfd_dev** %130, align 8
  %132 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %135, align 8
  %137 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %138 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.kfd_dev*, %struct.kfd_dev** %140, align 8
  %142 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load %struct.process_queue_node*, %struct.process_queue_node** %9, align 8
  %145 = getelementptr inbounds %struct.process_queue_node, %struct.process_queue_node* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = call i32 %136(%struct.TYPE_9__* %143, %struct.TYPE_10__* %146)
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %122, %106, %76, %64, %51, %40, %18
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.process_queue_node* @get_queue_by_qid(%struct.process_queue_manager*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev*, i32) #1

declare dso_local i32 @amdgpu_amdkfd_add_gws_to_process(i32, i8*, %struct.kgd_mem**) #1

declare dso_local i32 @amdgpu_amdkfd_remove_gws_from_process(i32, %struct.kgd_mem*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_amdkfd_get_num_gws(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
