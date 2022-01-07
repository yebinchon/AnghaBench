; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_bo_vm_update_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_bo_vm_update_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.radeon_device* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.radeon_bo* }
%struct.radeon_bo = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.radeon_device = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.radeon_vm = type { %struct.radeon_bo_va* }
%struct.radeon_bo_va = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Tmp BO not in VM!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bo %p not in vm %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_vm*)* @radeon_bo_vm_update_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_bo_vm_update_pte(%struct.radeon_cs_parser* %0, %struct.radeon_vm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.radeon_vm*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_bo_va*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_bo*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %5, align 8
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 3
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %6, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %15 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %16 = call i32 @radeon_vm_update_page_directory(%struct.radeon_device* %14, %struct.radeon_vm* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %110

21:                                               ; preds = %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %23 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %24 = call i32 @radeon_vm_clear_freed(%struct.radeon_device* %22, %struct.radeon_vm* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %110

29:                                               ; preds = %21
  %30 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %30, i32 0, i32 0
  %32 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %31, align 8
  %33 = icmp eq %struct.radeon_bo_va* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %110

38:                                               ; preds = %29
  %39 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %40 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %40, i32 0, i32 0
  %42 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %41, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @radeon_vm_bo_update(%struct.radeon_device* %39, %struct.radeon_bo_va* %42, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %110

54:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %103, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %58 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %55
  %62 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %63 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.radeon_bo*, %struct.radeon_bo** %68, align 8
  store %struct.radeon_bo* %69, %struct.radeon_bo** %10, align 8
  %70 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %71 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %72 = call %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm* %70, %struct.radeon_bo* %71)
  store %struct.radeon_bo_va* %72, %struct.radeon_bo_va** %7, align 8
  %73 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %7, align 8
  %74 = icmp eq %struct.radeon_bo_va* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %61
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %80 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %81 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.radeon_bo* %79, %struct.radeon_vm* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %110

84:                                               ; preds = %61
  %85 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %86 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %7, align 8
  %87 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %88 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = call i32 @radeon_vm_bo_update(%struct.radeon_device* %85, %struct.radeon_bo_va* %86, i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %84
  %96 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %97 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %7, align 8
  %100 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @radeon_sync_fence(i32* %98, i32 %101)
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %55

106:                                              ; preds = %55
  %107 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %108 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %109 = call i32 @radeon_vm_clear_invalids(%struct.radeon_device* %107, %struct.radeon_vm* %108)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %93, %75, %52, %34, %27, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @radeon_vm_update_page_directory(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_vm_clear_freed(%struct.radeon_device*, %struct.radeon_vm*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_vm_bo_update(%struct.radeon_device*, %struct.radeon_bo_va*, i32*) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_find(%struct.radeon_vm*, %struct.radeon_bo*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.radeon_bo*, %struct.radeon_vm*) #1

declare dso_local i32 @radeon_sync_fence(i32*, i32) #1

declare dso_local i32 @radeon_vm_clear_invalids(%struct.radeon_device*, %struct.radeon_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
