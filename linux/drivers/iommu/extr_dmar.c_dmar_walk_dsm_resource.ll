; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_walk_dsm_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_walk_dsm_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.acpi_dmar_header = type { i32 }
%struct.dmar_res_callback = type { i8**, i32* }

@ENODEV = common dso_local global i32 0, align 4
@dmar_walk_dsm_resource.res_type = internal global [131 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 133, i32 132, i32 131], align 16
@dmar_hp_guid = common dso_local global i32 0, align 4
@DMAR_DSM_REV_ID = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*)* @dmar_walk_dsm_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_walk_dsm_resource(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca %struct.acpi_dmar_header*, align 8
  %13 = alloca %struct.dmar_res_callback, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dmar_detect_dsm(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DMAR_DSM_REV_ID, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %26 = call %union.acpi_object* @acpi_evaluate_dsm_typed(i32 %22, i32* @dmar_hp_guid, i32 %23, i32 %24, i32* null, i32 %25)
  store %union.acpi_object* %26, %union.acpi_object** %11, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %66

32:                                               ; preds = %21
  %33 = call i32 @memset(%struct.dmar_res_callback* %13, i32 0, i32 16)
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.dmar_res_callback, %struct.dmar_res_callback* %13, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [131 x i32], [131 x i32]* @dmar_walk_dsm_resource.res_type, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32 %34, i32* %42, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds %struct.dmar_res_callback, %struct.dmar_res_callback* %13, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [131 x i32], [131 x i32]* @dmar_walk_dsm_resource.res_type, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %45, i64 %50
  store i8* %43, i8** %51, align 8
  %52 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.acpi_dmar_header*
  store %struct.acpi_dmar_header* %56, %struct.acpi_dmar_header** %12, align 8
  %57 = load %struct.acpi_dmar_header*, %struct.acpi_dmar_header** %12, align 8
  %58 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %59 = bitcast %union.acpi_object* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dmar_walk_remapping_entries(%struct.acpi_dmar_header* %57, i32 %61, %struct.dmar_res_callback* %13)
  store i32 %62, i32* %10, align 4
  %63 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %64 = call i32 @ACPI_FREE(%union.acpi_object* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %32, %29, %20
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @dmar_detect_dsm(i32, i32) #1

declare dso_local %union.acpi_object* @acpi_evaluate_dsm_typed(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.dmar_res_callback*, i32, i32) #1

declare dso_local i32 @dmar_walk_remapping_entries(%struct.acpi_dmar_header*, i32, %struct.dmar_res_callback*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
