; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_initialize_nocpsch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device_queue_manager.c_initialize_nocpsch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_queue_manager = type { i32*, i32, i64, i64, %struct.TYPE_6__*, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"num of pipes: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_queue_manager*)* @initialize_nocpsch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_nocpsch(%struct.device_queue_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_queue_manager*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device_queue_manager* %0, %struct.device_queue_manager** %3, align 8
  %7 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %8 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %7)
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %11 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kcalloc(i32 %11, i32 4, i32 %12)
  %14 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %15 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %17 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %109

23:                                               ; preds = %1
  %24 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %25 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %24, i32 0, i32 10
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %28 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %27, i32 0, i32 9
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %31 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %33 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %32, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %35 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %37 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %81, %23
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %41 = call i32 @get_pipes_per_mec(%struct.device_queue_manager* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %46 = call i32 @get_queues_per_pipe(%struct.device_queue_manager* %45)
  %47 = mul nsw i32 %44, %46
  store i32 %47, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %77, %43
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %51 = call i32 @get_queues_per_pipe(%struct.device_queue_manager* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %58 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @test_bit(i32 %56, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %69 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %67
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %65, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %48

80:                                               ; preds = %48
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %38

84:                                               ; preds = %38
  %85 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %86 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = sub nsw i32 %91, 1
  %93 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %94 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %96 = call i32 @get_num_sdma_queues(%struct.device_queue_manager* %95)
  %97 = sub nsw i32 64, %96
  %98 = zext i32 %97 to i64
  %99 = lshr i64 -1, %98
  %100 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %101 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %103 = call i32 @get_num_xgmi_sdma_queues(%struct.device_queue_manager* %102)
  %104 = sub nsw i32 64, %103
  %105 = zext i32 %104 to i64
  %106 = lshr i64 -1, %105
  %107 = load %struct.device_queue_manager*, %struct.device_queue_manager** %3, align 8
  %108 = getelementptr inbounds %struct.device_queue_manager, %struct.device_queue_manager* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %84, %20
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @get_pipes_per_mec(%struct.device_queue_manager*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_queues_per_pipe(%struct.device_queue_manager*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @get_num_sdma_queues(%struct.device_queue_manager*) #1

declare dso_local i32 @get_num_xgmi_sdma_queues(%struct.device_queue_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
