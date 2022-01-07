; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_probe_one_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_probe_one_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_settings = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ecc_stngs = common dso_local global %struct.ecc_settings** null, align 8
@ecc_enable_override = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [79 x i8] c"Forcing ECC on is not recommended on newer systems. Please enable ECC in BIOS.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Forcing ECC on!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error probing instance: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @probe_one_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_one_instance(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ecc_settings*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_3__* @node_to_amd_nb(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ecc_settings* @kzalloc(i32 4, i32 %13)
  store %struct.ecc_settings* %14, %struct.ecc_settings** %5, align 8
  %15 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %16 = icmp ne %struct.ecc_settings* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %72

18:                                               ; preds = %1
  %19 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %20 = load %struct.ecc_settings**, %struct.ecc_settings*** @ecc_stngs, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ecc_settings*, %struct.ecc_settings** %20, i64 %22
  store %struct.ecc_settings* %19, %struct.ecc_settings** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ecc_enabled(%struct.pci_dev* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %29 = load i32, i32* @ecc_enable_override, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %65

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %34 = icmp sge i32 %33, 23
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @amd64_warn(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %65

37:                                               ; preds = %32
  %38 = call i32 @amd64_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37
  %40 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @enable_ecc_error_reporting(%struct.ecc_settings* %40, i32 %41, %struct.pci_dev* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %65

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @init_one_instance(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @amd64_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %56 = icmp slt i32 %55, 23
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @restore_ecc_error_reporting(%struct.ecc_settings* %58, i32 %59, %struct.pci_dev* %60)
  br label %62

62:                                               ; preds = %57, %52
  br label %65

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %74

65:                                               ; preds = %62, %45, %35, %31
  %66 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %67 = call i32 @kfree(%struct.ecc_settings* %66)
  %68 = load %struct.ecc_settings**, %struct.ecc_settings*** @ecc_stngs, align 8
  %69 = load i32, i32* %3, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ecc_settings*, %struct.ecc_settings** %68, i64 %70
  store %struct.ecc_settings* null, %struct.ecc_settings** %71, align 8
  br label %72

72:                                               ; preds = %65, %17
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %63
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_3__* @node_to_amd_nb(i32) #1

declare dso_local %struct.ecc_settings* @kzalloc(i32, i32) #1

declare dso_local i32 @ecc_enabled(%struct.pci_dev*, i32) #1

declare dso_local i32 @amd64_warn(i8*) #1

declare dso_local i32 @enable_ecc_error_reporting(%struct.ecc_settings*, i32, %struct.pci_dev*) #1

declare dso_local i32 @init_one_instance(i32) #1

declare dso_local i32 @amd64_err(i8*, i32) #1

declare dso_local i32 @restore_ecc_error_reporting(%struct.ecc_settings*, i32, %struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ecc_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
