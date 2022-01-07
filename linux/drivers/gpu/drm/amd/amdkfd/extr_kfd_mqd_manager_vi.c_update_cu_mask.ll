; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_update_cu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_update_cu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 }
%struct.queue_properties = type { i64, i32 }
%struct.vi_mqd = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [35 x i8] c"Update cu mask to %#x %#x %#x %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*)* @update_cu_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cu_mask(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.queue_properties*, align 8
  %7 = alloca %struct.vi_mqd*, align 8
  %8 = alloca [4 x i8*], align 16
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %6, align 8
  %9 = bitcast [4 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false)
  %10 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %11 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %56

15:                                               ; preds = %3
  %16 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %17 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %18 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %21 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %24 = call i32 @mqd_symmetrically_map_cu_mask(%struct.mqd_manager* %16, i32 %19, i64 %22, i8** %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.vi_mqd* @get_mqd(i8* %25)
  store %struct.vi_mqd* %26, %struct.vi_mqd** %7, align 8
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %28 = load i8*, i8** %27, align 16
  %29 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %30 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %34 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 2
  %36 = load i8*, i8** %35, align 16
  %37 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %38 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 3
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %42 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %44 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %47 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %50 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.vi_mqd*, %struct.vi_mqd** %7, align 8
  %53 = getelementptr inbounds %struct.vi_mqd, %struct.vi_mqd* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %48, i8* %51, i8* %54)
  br label %56

56:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mqd_symmetrically_map_cu_mask(%struct.mqd_manager*, i32, i64, i8**) #2

declare dso_local %struct.vi_mqd* @get_mqd(i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
