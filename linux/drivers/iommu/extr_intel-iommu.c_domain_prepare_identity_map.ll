; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_prepare_identity_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_prepare_identity_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.device = type { i32 }

@si_domain = common dso_local global %struct.dmar_domain* null, align 8
@hw_pass_through = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Ignoring identity map for HW passthrough [0x%Lx - 0x%Lx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Setting identity map [0x%Lx - 0x%Lx]\0A\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"Your BIOS is broken; RMRR ends before it starts!\0ABIOS vendor: %s; Ver: %s; Product Version: %s\0A\00", align 1
@DMI_BIOS_VENDOR = common dso_local global i32 0, align 4
@DMI_BIOS_VERSION = common dso_local global i32 0, align 4
@DMI_PRODUCT_VERSION = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [115 x i8] c"Your BIOS is broken; RMRR exceeds permitted address width (%d bits)\0ABIOS vendor: %s; Ver: %s; Product Version: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.dmar_domain*, i64, i64)* @domain_prepare_identity_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_prepare_identity_map(%struct.device* %0, %struct.dmar_domain* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dmar_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.dmar_domain* %1, %struct.dmar_domain** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** @si_domain, align 8
  %12 = icmp eq %struct.dmar_domain* %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load i64, i64* @hw_pass_through, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @dev_warn(%struct.device* %17, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  store i32 0, i32* %5, align 4
  br label %67

21:                                               ; preds = %13, %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @dev_info(%struct.device* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32, i32* @DMI_BIOS_VENDOR, align 4
  %31 = call i32 @dmi_get_system_info(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* @DMI_BIOS_VERSION, align 4
  %34 = call i32 @dmi_get_system_info(i32 %33)
  %35 = load i32, i32* @DMI_PRODUCT_VERSION, align 4
  %36 = call i32 @dmi_get_system_info(i32 %35)
  %37 = call i32 (i32, i8*, i64, i32, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i64 %32, i32 %34, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %67

40:                                               ; preds = %21
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %43 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @agaw_to_width(i32 %44)
  %46 = lshr i64 %41, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %50 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @agaw_to_width(i32 %51)
  %53 = load i32, i32* @DMI_BIOS_VENDOR, align 4
  %54 = call i32 @dmi_get_system_info(i32 %53)
  %55 = load i32, i32* @DMI_BIOS_VERSION, align 4
  %56 = call i32 @dmi_get_system_info(i32 %55)
  %57 = load i32, i32* @DMI_PRODUCT_VERSION, align 4
  %58 = call i32 @dmi_get_system_info(i32 %57)
  %59 = call i32 (i32, i8*, i64, i32, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.3, i64 0, i64 0), i64 %52, i32 %54, i32 %56, i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %67

62:                                               ; preds = %40
  %63 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @iommu_domain_identity_map(%struct.dmar_domain* %63, i64 %64, i64 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %48, %29, %16
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @WARN(i32, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @dmi_get_system_info(i32) #1

declare dso_local i64 @agaw_to_width(i32) #1

declare dso_local i32 @iommu_domain_identity_map(%struct.dmar_domain*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
