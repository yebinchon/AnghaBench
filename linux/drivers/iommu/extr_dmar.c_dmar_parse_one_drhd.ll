; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_parse_one_drhd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_parse_one_drhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dmar_header = type { i64 }
%struct.acpi_dmar_hardware_unit = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dmar_drhd_unit = type { i32, i64, i32*, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_dmar_header*, i8*)* @dmar_parse_one_drhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_parse_one_drhd(%struct.acpi_dmar_header* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_dmar_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_dmar_hardware_unit*, align 8
  %7 = alloca %struct.dmar_drhd_unit*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_dmar_header* %0, %struct.acpi_dmar_header** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.acpi_dmar_header*, %struct.acpi_dmar_header** %4, align 8
  %10 = bitcast %struct.acpi_dmar_header* %9 to %struct.acpi_dmar_hardware_unit*
  store %struct.acpi_dmar_hardware_unit* %10, %struct.acpi_dmar_hardware_unit** %6, align 8
  %11 = load %struct.acpi_dmar_hardware_unit*, %struct.acpi_dmar_hardware_unit** %6, align 8
  %12 = call %struct.dmar_drhd_unit* @dmar_find_dmaru(%struct.acpi_dmar_hardware_unit* %11)
  store %struct.dmar_drhd_unit* %12, %struct.dmar_drhd_unit** %7, align 8
  %13 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %14 = icmp ne %struct.dmar_drhd_unit* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.acpi_dmar_header*, %struct.acpi_dmar_header** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_dmar_header, %struct.acpi_dmar_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 40, %19
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.dmar_drhd_unit* @kzalloc(i64 %20, i32 %21)
  store %struct.dmar_drhd_unit* %22, %struct.dmar_drhd_unit** %7, align 8
  %23 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %24 = icmp ne %struct.dmar_drhd_unit* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %114

28:                                               ; preds = %16
  %29 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %30 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %29, i64 1
  %31 = bitcast %struct.dmar_drhd_unit* %30 to i8*
  %32 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %33 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %35 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %34, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.acpi_dmar_header*, %struct.acpi_dmar_header** %4, align 8
  %38 = load %struct.acpi_dmar_header*, %struct.acpi_dmar_header** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_dmar_header, %struct.acpi_dmar_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcpy(i8* %36, %struct.acpi_dmar_header* %37, i64 %40)
  %42 = load %struct.acpi_dmar_hardware_unit*, %struct.acpi_dmar_hardware_unit** %6, align 8
  %43 = getelementptr inbounds %struct.acpi_dmar_hardware_unit, %struct.acpi_dmar_hardware_unit* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %46 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.acpi_dmar_hardware_unit*, %struct.acpi_dmar_hardware_unit** %6, align 8
  %48 = getelementptr inbounds %struct.acpi_dmar_hardware_unit, %struct.acpi_dmar_hardware_unit* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %51 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.acpi_dmar_hardware_unit*, %struct.acpi_dmar_hardware_unit** %6, align 8
  %53 = getelementptr inbounds %struct.acpi_dmar_hardware_unit, %struct.acpi_dmar_hardware_unit* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  %56 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %57 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.acpi_dmar_hardware_unit*, %struct.acpi_dmar_hardware_unit** %6, align 8
  %59 = getelementptr inbounds %struct.acpi_dmar_hardware_unit, %struct.acpi_dmar_hardware_unit* %58, i64 1
  %60 = bitcast %struct.acpi_dmar_hardware_unit* %59 to i8*
  %61 = load %struct.acpi_dmar_hardware_unit*, %struct.acpi_dmar_hardware_unit** %6, align 8
  %62 = bitcast %struct.acpi_dmar_hardware_unit* %61 to i8*
  %63 = load %struct.acpi_dmar_hardware_unit*, %struct.acpi_dmar_hardware_unit** %6, align 8
  %64 = getelementptr inbounds %struct.acpi_dmar_hardware_unit, %struct.acpi_dmar_hardware_unit* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %62, i64 %67
  %69 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %70 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %69, i32 0, i32 1
  %71 = call i32* @dmar_alloc_dev_scope(i8* %60, i8* %68, i64* %70)
  %72 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %73 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %75 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %28
  %79 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %80 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %85 = call i32 @kfree(%struct.dmar_drhd_unit* %84)
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %78, %28
  %89 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %90 = call i32 @alloc_iommu(%struct.dmar_drhd_unit* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %95 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %94, i32 0, i32 2
  %96 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %97 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %96, i32 0, i32 1
  %98 = call i32 @dmar_free_dev_scope(i32** %95, i64* %97)
  %99 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %100 = call i32 @kfree(%struct.dmar_drhd_unit* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %114

102:                                              ; preds = %88
  %103 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %7, align 8
  %104 = call i32 @dmar_register_drhd_unit(%struct.dmar_drhd_unit* %103)
  br label %105

105:                                              ; preds = %102, %15
  %106 = load i8*, i8** %5, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i8*, i8** %5, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %105
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %93, %83, %25
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.dmar_drhd_unit* @dmar_find_dmaru(%struct.acpi_dmar_hardware_unit*) #1

declare dso_local %struct.dmar_drhd_unit* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.acpi_dmar_header*, i64) #1

declare dso_local i32* @dmar_alloc_dev_scope(i8*, i8*, i64*) #1

declare dso_local i32 @kfree(%struct.dmar_drhd_unit*) #1

declare dso_local i32 @alloc_iommu(%struct.dmar_drhd_unit*) #1

declare dso_local i32 @dmar_free_dev_scope(i32**, i64*) #1

declare dso_local i32 @dmar_register_drhd_unit(%struct.dmar_drhd_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
