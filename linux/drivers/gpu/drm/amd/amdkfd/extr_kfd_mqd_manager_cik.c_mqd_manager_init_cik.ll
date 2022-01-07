; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_mqd_manager_init_cik.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_mqd_manager_init_cik.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }

@KFD_MQD_TYPE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@allocate_mqd = common dso_local global i8* null, align 8
@init_mqd = common dso_local global i8* null, align 8
@free_mqd = common dso_local global i8* null, align 8
@load_mqd = common dso_local global i8* null, align 8
@update_mqd = common dso_local global i8* null, align 8
@destroy_mqd = common dso_local global i8* null, align 8
@is_occupied = common dso_local global i8* null, align 8
@allocate_hiq_mqd = common dso_local global i8* null, align 8
@init_mqd_hiq = common dso_local global i8* null, align 8
@free_mqd_hiq_sdma = common dso_local global i8* null, align 8
@update_mqd_hiq = common dso_local global i8* null, align 8
@allocate_sdma_mqd = common dso_local global i8* null, align 8
@init_mqd_sdma = common dso_local global i8* null, align 8
@load_mqd_sdma = common dso_local global i8* null, align 8
@update_mqd_sdma = common dso_local global i8* null, align 8
@destroy_mqd_sdma = common dso_local global i8* null, align 8
@is_occupied_sdma = common dso_local global i8* null, align 8
@debugfs_show_mqd = common dso_local global i8* null, align 8
@debugfs_show_mqd_sdma = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mqd_manager* @mqd_manager_init_cik(i32 %0, %struct.kfd_dev* %1) #0 {
  %3 = alloca %struct.mqd_manager*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca %struct.mqd_manager*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.kfd_dev* %1, %struct.kfd_dev** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @KFD_MQD_TYPE_MAX, align 4
  %9 = icmp uge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.mqd_manager* null, %struct.mqd_manager** %3, align 8
  br label %126

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mqd_manager* @kzalloc(i32 80, i32 %15)
  store %struct.mqd_manager* %16, %struct.mqd_manager** %6, align 8
  %17 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %18 = icmp ne %struct.mqd_manager* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.mqd_manager* null, %struct.mqd_manager** %3, align 8
  br label %126

20:                                               ; preds = %14
  %21 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %22 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %23 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %22, i32 0, i32 9
  store %struct.kfd_dev* %21, %struct.kfd_dev** %23, align 8
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %121 [
    i32 131, label %25
    i32 132, label %25
    i32 129, label %49
    i32 130, label %73
    i32 128, label %97
  ]

25:                                               ; preds = %20, %20
  %26 = load i8*, i8** @allocate_mqd, align 8
  %27 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %28 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @init_mqd, align 8
  %30 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %31 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @free_mqd, align 8
  %33 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %34 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @load_mqd, align 8
  %36 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %37 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @update_mqd, align 8
  %39 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %40 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @destroy_mqd, align 8
  %42 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %43 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @is_occupied, align 8
  %45 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %46 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %48 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  br label %124

49:                                               ; preds = %20
  %50 = load i8*, i8** @allocate_hiq_mqd, align 8
  %51 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %52 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @init_mqd_hiq, align 8
  %54 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %55 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @free_mqd_hiq_sdma, align 8
  %57 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %58 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @load_mqd, align 8
  %60 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %61 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @update_mqd_hiq, align 8
  %63 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %64 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @destroy_mqd, align 8
  %66 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %67 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @is_occupied, align 8
  %69 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %70 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %72 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %71, i32 0, i32 0
  store i32 4, i32* %72, align 8
  br label %124

73:                                               ; preds = %20
  %74 = load i8*, i8** @allocate_hiq_mqd, align 8
  %75 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %76 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @init_mqd_hiq, align 8
  %78 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %79 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @free_mqd, align 8
  %81 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %82 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @load_mqd, align 8
  %84 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %85 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @update_mqd_hiq, align 8
  %87 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %88 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @destroy_mqd, align 8
  %90 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %91 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @is_occupied, align 8
  %93 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %94 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %96 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %95, i32 0, i32 0
  store i32 4, i32* %96, align 8
  br label %124

97:                                               ; preds = %20
  %98 = load i8*, i8** @allocate_sdma_mqd, align 8
  %99 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %100 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %99, i32 0, i32 8
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @init_mqd_sdma, align 8
  %102 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %103 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %102, i32 0, i32 7
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @free_mqd_hiq_sdma, align 8
  %105 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %106 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @load_mqd_sdma, align 8
  %108 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %109 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @update_mqd_sdma, align 8
  %111 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %112 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @destroy_mqd_sdma, align 8
  %114 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %115 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @is_occupied_sdma, align 8
  %117 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %118 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %120 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %119, i32 0, i32 0
  store i32 4, i32* %120, align 8
  br label %124

121:                                              ; preds = %20
  %122 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %123 = call i32 @kfree(%struct.mqd_manager* %122)
  store %struct.mqd_manager* null, %struct.mqd_manager** %3, align 8
  br label %126

124:                                              ; preds = %97, %73, %49, %25
  %125 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  store %struct.mqd_manager* %125, %struct.mqd_manager** %3, align 8
  br label %126

126:                                              ; preds = %124, %121, %19, %13
  %127 = load %struct.mqd_manager*, %struct.mqd_manager** %3, align 8
  ret %struct.mqd_manager* %127
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mqd_manager* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mqd_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
