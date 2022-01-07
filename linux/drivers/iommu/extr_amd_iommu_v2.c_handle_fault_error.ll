; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_handle_fault_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_handle_fault_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fault = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32)*, i32 }

@PPR_INVALID = common dso_local global i32 0, align 4
@PPR_SUCCESS = common dso_local global i32 0, align 4
@PPR_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fault*)* @handle_fault_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_fault_error(%struct.fault* %0) #0 {
  %2 = alloca %struct.fault*, align 8
  %3 = alloca i32, align 4
  store %struct.fault* %0, %struct.fault** %2, align 8
  %4 = load %struct.fault*, %struct.fault** %2, align 8
  %5 = getelementptr inbounds %struct.fault, %struct.fault* %4, i32 0, i32 5
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32, i32, i32)* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.fault*, %struct.fault** %2, align 8
  %12 = getelementptr inbounds %struct.fault, %struct.fault* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fault*, %struct.fault** %2, align 8
  %15 = getelementptr inbounds %struct.fault, %struct.fault* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PPR_INVALID, align 4
  %18 = call i32 @set_pri_tag_status(i32 %13, i32 %16, i32 %17)
  br label %70

19:                                               ; preds = %1
  %20 = load %struct.fault*, %struct.fault** %2, align 8
  %21 = getelementptr inbounds %struct.fault, %struct.fault* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %23, align 8
  %25 = load %struct.fault*, %struct.fault** %2, align 8
  %26 = getelementptr inbounds %struct.fault, %struct.fault* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fault*, %struct.fault** %2, align 8
  %31 = getelementptr inbounds %struct.fault, %struct.fault* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fault*, %struct.fault** %2, align 8
  %34 = getelementptr inbounds %struct.fault, %struct.fault* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fault*, %struct.fault** %2, align 8
  %37 = getelementptr inbounds %struct.fault, %struct.fault* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %24(i32 %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  switch i32 %40, label %68 [
    i32 128, label %41
    i32 129, label %50
    i32 130, label %59
  ]

41:                                               ; preds = %19
  %42 = load %struct.fault*, %struct.fault** %2, align 8
  %43 = getelementptr inbounds %struct.fault, %struct.fault* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fault*, %struct.fault** %2, align 8
  %46 = getelementptr inbounds %struct.fault, %struct.fault* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PPR_SUCCESS, align 4
  %49 = call i32 @set_pri_tag_status(i32 %44, i32 %47, i32 %48)
  br label %70

50:                                               ; preds = %19
  %51 = load %struct.fault*, %struct.fault** %2, align 8
  %52 = getelementptr inbounds %struct.fault, %struct.fault* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fault*, %struct.fault** %2, align 8
  %55 = getelementptr inbounds %struct.fault, %struct.fault* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PPR_INVALID, align 4
  %58 = call i32 @set_pri_tag_status(i32 %53, i32 %56, i32 %57)
  br label %70

59:                                               ; preds = %19
  %60 = load %struct.fault*, %struct.fault** %2, align 8
  %61 = getelementptr inbounds %struct.fault, %struct.fault* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fault*, %struct.fault** %2, align 8
  %64 = getelementptr inbounds %struct.fault, %struct.fault* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PPR_FAILURE, align 4
  %67 = call i32 @set_pri_tag_status(i32 %62, i32 %65, i32 %66)
  br label %70

68:                                               ; preds = %19
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %10, %68, %59, %50, %41
  ret void
}

declare dso_local i32 @set_pri_tag_status(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
