; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_search_pasid_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_search_pasid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_domain_info = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pasid_table_opaque = type { i64, i64, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_domain_info*, i8*)* @search_pasid_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_pasid_table(%struct.device_domain_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_domain_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pasid_table_opaque*, align 8
  store %struct.device_domain_info* %0, %struct.device_domain_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.pasid_table_opaque*
  store %struct.pasid_table_opaque* %8, %struct.pasid_table_opaque** %6, align 8
  %9 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %10 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %6, align 8
  %15 = getelementptr inbounds %struct.pasid_table_opaque, %struct.pasid_table_opaque* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %20 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %6, align 8
  %23 = getelementptr inbounds %struct.pasid_table_opaque, %struct.pasid_table_opaque* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %28 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %6, align 8
  %31 = getelementptr inbounds %struct.pasid_table_opaque, %struct.pasid_table_opaque* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %36 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %41 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %6, align 8
  %44 = getelementptr inbounds %struct.pasid_table_opaque, %struct.pasid_table_opaque* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  store i64 %42, i64* %45, align 8
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %34, %26, %18, %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
