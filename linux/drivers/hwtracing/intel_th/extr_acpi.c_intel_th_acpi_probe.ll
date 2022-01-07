; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_acpi.c_intel_th_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_acpi.c_intel_th_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.acpi_device = type { %struct.intel_th* }
%struct.intel_th = type { i32 }
%struct.acpi_device_id = type { i64 }

@TH_MMIO_END = common dso_local global i32 0, align 4
@intel_th_acpi_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_th_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_acpi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_device_id*, align 8
  %8 = alloca %struct.intel_th*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = call %struct.acpi_device* @ACPI_COMPANION(i32* %13)
  store %struct.acpi_device* %14, %struct.acpi_device** %4, align 8
  %15 = load i32, i32* @TH_MMIO_END, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca %struct.resource, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @intel_th_acpi_ids, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = call %struct.acpi_device_id* @acpi_match_device(i32 %19, i32* %21)
  store %struct.acpi_device_id* %22, %struct.acpi_device_id** %7, align 8
  %23 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %24 = icmp ne %struct.acpi_device_id* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %91

28:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @TH_MMIO_END, align 4
  %38 = icmp slt i32 %36, %37
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i1 [ false, %29 ], [ %38, %35 ]
  br i1 %40, label %41, label %72

41:                                               ; preds = %39
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 2
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %44, i64 %46
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IORESOURCE_IRQ, align 4
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %18, i64 %58
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 2
  %62 = load %struct.resource*, %struct.resource** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %62, i64 %64
  %66 = bitcast %struct.resource* %59 to i8*
  %67 = bitcast %struct.resource* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  br label %68

68:                                               ; preds = %55, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %29

72:                                               ; preds = %39
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 1
  %75 = load %struct.acpi_device_id*, %struct.acpi_device_id** %7, align 8
  %76 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32, i32* %10, align 4
  %80 = call %struct.intel_th* @intel_th_alloc(i32* %74, i8* %78, %struct.resource* %18, i32 %79)
  store %struct.intel_th* %80, %struct.intel_th** %8, align 8
  %81 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %82 = call i64 @IS_ERR(%struct.intel_th* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %86 = call i32 @PTR_ERR(%struct.intel_th* %85)
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %91

87:                                               ; preds = %72
  %88 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %89 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 0
  store %struct.intel_th* %88, %struct.intel_th** %90, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %91

91:                                               ; preds = %87, %84, %25
  %92 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.acpi_device_id* @acpi_match_device(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.intel_th* @intel_th_alloc(i32*, i8*, %struct.resource*, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_th*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_th*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
