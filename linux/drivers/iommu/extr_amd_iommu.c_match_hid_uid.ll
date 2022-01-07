; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_match_hid_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_match_hid_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpihid_map_entry = type { i32*, i32* }
%struct.acpi_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.acpihid_map_entry*)* @match_hid_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_hid_uid(%struct.device* %0, %struct.acpihid_map_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.acpihid_map_entry*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.acpihid_map_entry* %1, %struct.acpihid_map_entry** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %6, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %12 = icmp ne %struct.acpi_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %18 = call i8* @acpi_device_hid(%struct.acpi_device* %17)
  store i8* %18, i8** %7, align 8
  %19 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %20 = call i8* @acpi_device_uid(%struct.acpi_device* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33, %30
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.acpihid_map_entry*, %struct.acpihid_map_entry** %5, align 8
  %40 = getelementptr inbounds %struct.acpihid_map_entry, %struct.acpihid_map_entry* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @strcmp(i8* %38, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %72

43:                                               ; preds = %33
  %44 = load %struct.acpihid_map_entry*, %struct.acpihid_map_entry** %5, align 8
  %45 = getelementptr inbounds %struct.acpihid_map_entry, %struct.acpihid_map_entry* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.acpihid_map_entry*, %struct.acpihid_map_entry** %5, align 8
  %52 = getelementptr inbounds %struct.acpihid_map_entry, %struct.acpihid_map_entry* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @strcmp(i8* %50, i32* %53)
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %43
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.acpihid_map_entry*, %struct.acpihid_map_entry** %5, align 8
  %58 = getelementptr inbounds %struct.acpihid_map_entry, %struct.acpihid_map_entry* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @strcmp(i8* %56, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.acpihid_map_entry*, %struct.acpihid_map_entry** %5, align 8
  %65 = getelementptr inbounds %struct.acpihid_map_entry, %struct.acpihid_map_entry* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @strcmp(i8* %63, i32* %66)
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %62, %55
  %70 = phi i1 [ true, %55 ], [ %68, %62 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %49, %37, %27, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local i8* @acpi_device_uid(%struct.acpi_device*) #1

declare dso_local i32 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
