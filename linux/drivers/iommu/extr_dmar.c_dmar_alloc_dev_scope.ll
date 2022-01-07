; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_alloc_dev_scope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_alloc_dev_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dmar_device_scope = type { i64, i32 }

@ACPI_DMAR_SCOPE_TYPE_NAMESPACE = common dso_local global i64 0, align 8
@ACPI_DMAR_SCOPE_TYPE_ENDPOINT = common dso_local global i64 0, align 8
@ACPI_DMAR_SCOPE_TYPE_BRIDGE = common dso_local global i64 0, align 8
@ACPI_DMAR_SCOPE_TYPE_IOAPIC = common dso_local global i64 0, align 8
@ACPI_DMAR_SCOPE_TYPE_HPET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unsupported device scope\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dmar_alloc_dev_scope(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.acpi_dmar_device_scope*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %53, %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.acpi_dmar_device_scope*
  store %struct.acpi_dmar_device_scope* %16, %struct.acpi_dmar_device_scope** %8, align 8
  %17 = load %struct.acpi_dmar_device_scope*, %struct.acpi_dmar_device_scope** %8, align 8
  %18 = getelementptr inbounds %struct.acpi_dmar_device_scope, %struct.acpi_dmar_device_scope* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACPI_DMAR_SCOPE_TYPE_NAMESPACE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %14
  %23 = load %struct.acpi_dmar_device_scope*, %struct.acpi_dmar_device_scope** %8, align 8
  %24 = getelementptr inbounds %struct.acpi_dmar_device_scope, %struct.acpi_dmar_device_scope* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_DMAR_SCOPE_TYPE_ENDPOINT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.acpi_dmar_device_scope*, %struct.acpi_dmar_device_scope** %8, align 8
  %30 = getelementptr inbounds %struct.acpi_dmar_device_scope, %struct.acpi_dmar_device_scope* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_DMAR_SCOPE_TYPE_BRIDGE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22, %14
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %53

38:                                               ; preds = %28
  %39 = load %struct.acpi_dmar_device_scope*, %struct.acpi_dmar_device_scope** %8, align 8
  %40 = getelementptr inbounds %struct.acpi_dmar_device_scope, %struct.acpi_dmar_device_scope* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ACPI_DMAR_SCOPE_TYPE_IOAPIC, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.acpi_dmar_device_scope*, %struct.acpi_dmar_device_scope** %8, align 8
  %46 = getelementptr inbounds %struct.acpi_dmar_device_scope, %struct.acpi_dmar_device_scope* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_DMAR_SCOPE_TYPE_HPET, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44, %38
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.acpi_dmar_device_scope*, %struct.acpi_dmar_device_scope** %8, align 8
  %55 = getelementptr inbounds %struct.acpi_dmar_device_scope, %struct.acpi_dmar_device_scope* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr i8, i8* %57, i64 %58
  store i8* %59, i8** %5, align 8
  br label %10

60:                                               ; preds = %10
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i8* null, i8** %4, align 8
  br label %70

65:                                               ; preds = %60
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kcalloc(i32 %67, i32 4, i32 %68)
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i8*, i8** %4, align 8
  ret i8* %71
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
