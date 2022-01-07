; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atpx_handler.c_amdgpu_atpx_pci_probe_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atpx_handler.c_amdgpu_atpx_pci_probe_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_3__ = type { i8* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ATPX\00", align 1
@amdgpu_atpx_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @amdgpu_atpx_pci_probe_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atpx_pci_probe_handle(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = call i8* @ACPI_HANDLE(i32* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @acpi_get_handle(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amdgpu_atpx_priv, i32 0, i32 2), align 8
  store i32 0, i32* %2, align 4
  br label %24

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amdgpu_atpx_priv, i32 0, i32 1), align 8
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amdgpu_atpx_priv, i32 0, i32 0, i32 0), align 8
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %19, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i8* @ACPI_HANDLE(i32*) #1

declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
