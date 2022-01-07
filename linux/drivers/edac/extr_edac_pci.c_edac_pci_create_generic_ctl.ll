; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_create_generic_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci.c_edac_pci_create_generic_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_pci_ctl_info = type { i8*, i32, i32, i32, %struct.device*, %struct.edac_pci_gen_data* }
%struct.edac_pci_gen_data = type { i64 }
%struct.device = type { i32 }

@EDAC_PCI_GENCTL_NAME = common dso_local global i32 0, align 4
@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_POLL = common dso_local global i64 0, align 8
@edac_pci_generic_check = common dso_local global i32 0, align 4
@edac_pci_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed edac_pci_add_device()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edac_pci_ctl_info* @edac_pci_create_generic_ctl(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.edac_pci_ctl_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edac_pci_ctl_info*, align 8
  %7 = alloca %struct.edac_pci_gen_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @EDAC_PCI_GENCTL_NAME, align 4
  %9 = call %struct.edac_pci_ctl_info* @edac_pci_alloc_ctl_info(i32 8, i32 %8)
  store %struct.edac_pci_ctl_info* %9, %struct.edac_pci_ctl_info** %6, align 8
  %10 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %11 = icmp ne %struct.edac_pci_ctl_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.edac_pci_ctl_info* null, %struct.edac_pci_ctl_info** %3, align 8
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %15 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %14, i32 0, i32 5
  %16 = load %struct.edac_pci_gen_data*, %struct.edac_pci_gen_data** %15, align 8
  store %struct.edac_pci_gen_data* %16, %struct.edac_pci_gen_data** %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %19 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %18, i32 0, i32 4
  store %struct.device* %17, %struct.device** %19, align 8
  %20 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %21 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %20, i32 0, i32 4
  %22 = load %struct.device*, %struct.device** %21, align 8
  %23 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.edac_pci_ctl_info* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @to_pci_dev(%struct.device* %25)
  %27 = call i32 @pci_name(i32 %26)
  %28 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %29 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %32 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @EDAC_PCI_GENCTL_NAME, align 4
  %34 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %35 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* @edac_op_state, align 8
  %37 = load i64, i64* @EDAC_OPSTATE_POLL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %13
  %40 = load i32, i32* @edac_pci_generic_check, align 4
  %41 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %42 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %13
  %44 = load i32, i32* @edac_pci_idx, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @edac_pci_idx, align 4
  %46 = sext i32 %44 to i64
  %47 = load %struct.edac_pci_gen_data*, %struct.edac_pci_gen_data** %7, align 8
  %48 = getelementptr inbounds %struct.edac_pci_gen_data, %struct.edac_pci_gen_data* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %50 = load %struct.edac_pci_gen_data*, %struct.edac_pci_gen_data** %7, align 8
  %51 = getelementptr inbounds %struct.edac_pci_gen_data, %struct.edac_pci_gen_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @edac_pci_add_device(%struct.edac_pci_ctl_info* %49, i64 %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  %58 = call i32 @edac_pci_free_ctl_info(%struct.edac_pci_ctl_info* %57)
  store %struct.edac_pci_ctl_info* null, %struct.edac_pci_ctl_info** %3, align 8
  br label %61

59:                                               ; preds = %43
  %60 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %6, align 8
  store %struct.edac_pci_ctl_info* %60, %struct.edac_pci_ctl_info** %3, align 8
  br label %61

61:                                               ; preds = %59, %55, %12
  %62 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %3, align 8
  ret %struct.edac_pci_ctl_info* %62
}

declare dso_local %struct.edac_pci_ctl_info* @edac_pci_alloc_ctl_info(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.edac_pci_ctl_info*) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @edac_pci_add_device(%struct.edac_pci_ctl_info*, i64) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_pci_free_ctl_info(%struct.edac_pci_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
