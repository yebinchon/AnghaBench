; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_fini_fb_allocations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_fini_fb_allocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, %struct.smu_table* }
%struct.smu_table = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_fini_fb_allocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fini_fb_allocations(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca %struct.smu_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %8 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 0
  store %struct.smu_table_context* %9, %struct.smu_table_context** %4, align 8
  %10 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %11 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %10, i32 0, i32 1
  %12 = load %struct.smu_table*, %struct.smu_table** %11, align 8
  store %struct.smu_table* %12, %struct.smu_table** %5, align 8
  %13 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %14 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %20 = icmp eq %struct.smu_table* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %53

22:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %28, i64 %29
  %31 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %49

35:                                               ; preds = %27
  %36 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %36, i64 %37
  %39 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %38, i32 0, i32 3
  %40 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %40, i64 %41
  %43 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %42, i32 0, i32 2
  %44 = load %struct.smu_table*, %struct.smu_table** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %44, i64 %45
  %47 = getelementptr inbounds %struct.smu_table, %struct.smu_table* %46, i32 0, i32 1
  %48 = call i32 @amdgpu_bo_free_kernel(i32* %39, i32* %43, i32* %47)
  br label %49

49:                                               ; preds = %35, %34
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %23

52:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
