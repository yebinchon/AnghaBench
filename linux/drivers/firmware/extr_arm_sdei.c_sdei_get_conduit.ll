; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_get_conduit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c_sdei_get_conduit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@sdei_firmware_call = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"missing \22method\22 property\0A\00", align 1
@CONDUIT_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"hvc\00", align 1
@sdei_smccc_hvc = common dso_local global i32 0, align 4
@CONDUIT_HVC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@sdei_smccc_smc = common dso_local global i32 0, align 4
@CONDUIT_SMC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid \22method\22 property: %s\0A\00", align 1
@CONFIG_ACPI = common dso_local global i32 0, align 4
@acpi_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdei_get_conduit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdei_get_conduit(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  store i32* null, i32** @sdei_firmware_call, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i64 @of_property_read_string(%struct.device_node* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @CONDUIT_INVALID, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  store i32* @sdei_smccc_hvc, i32** @sdei_firmware_call, align 8
  %24 = load i32, i32* @CONDUIT_HVC, align 4
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  store i32* @sdei_smccc_smc, i32** @sdei_firmware_call, align 8
  %30 = load i32, i32* @CONDUIT_SMC, align 4
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  br label %50

35:                                               ; preds = %1
  %36 = load i32, i32* @CONFIG_ACPI, align 4
  %37 = call i64 @IS_ENABLED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* @acpi_disabled, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = call i64 (...) @acpi_psci_use_hvc()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  store i32* @sdei_smccc_hvc, i32** @sdei_firmware_call, align 8
  %46 = load i32, i32* @CONDUIT_HVC, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %42
  store i32* @sdei_smccc_smc, i32** @sdei_firmware_call, align 8
  %48 = load i32, i32* @CONDUIT_SMC, align 4
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %39, %35
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* @CONDUIT_INVALID, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %47, %45, %29, %23, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @acpi_psci_use_hvc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
