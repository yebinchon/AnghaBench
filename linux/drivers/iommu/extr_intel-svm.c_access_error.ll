; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_access_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-svm.c_access_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64 }
%struct.page_req_dsc = type { i64, i64, i64 }

@VM_EXEC = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.page_req_dsc*)* @access_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_error(%struct.vm_area_struct* %0, %struct.page_req_dsc* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.page_req_dsc*, align 8
  %5 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.page_req_dsc* %1, %struct.page_req_dsc** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.page_req_dsc*, %struct.page_req_dsc** %4, align 8
  %7 = getelementptr inbounds %struct.page_req_dsc, %struct.page_req_dsc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* @VM_EXEC, align 8
  %12 = load i64, i64* %5, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.page_req_dsc*, %struct.page_req_dsc** %4, align 8
  %16 = getelementptr inbounds %struct.page_req_dsc, %struct.page_req_dsc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i64, i64* @VM_READ, align 8
  %21 = load i64, i64* %5, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.page_req_dsc*, %struct.page_req_dsc** %4, align 8
  %25 = getelementptr inbounds %struct.page_req_dsc, %struct.page_req_dsc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i64, i64* @VM_WRITE, align 8
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %33, %37
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
