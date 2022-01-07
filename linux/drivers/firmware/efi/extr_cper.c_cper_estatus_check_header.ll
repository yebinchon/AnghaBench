; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_estatus_check_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_estatus_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_generic_status = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cper_estatus_check_header(%struct.acpi_hest_generic_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_hest_generic_status*, align 8
  store %struct.acpi_hest_generic_status* %0, %struct.acpi_hest_generic_status** %3, align 8
  %4 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %5 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %8, %1
  %18 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add i64 16, %30
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %22, %17
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
