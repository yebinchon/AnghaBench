; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_mmu.c_lima_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_mmu.c_lima_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i64, i32, %struct.lima_device* }
%struct.lima_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@lima_ip_ppmmu_bcast = common dso_local global i64 0, align 8
@LIMA_MMU_DTE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mmu %s dte write test fail\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@LIMA_MMU_COMMAND = common dso_local global i32 0, align 4
@LIMA_MMU_COMMAND_HARD_RESET = common dso_local global i32 0, align 4
@lima_mmu_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mmu %s fail to request irq\0A\00", align 1
@LIMA_MMU_INT_MASK = common dso_local global i32 0, align 4
@LIMA_MMU_INT_PAGE_FAULT = common dso_local global i32 0, align 4
@LIMA_MMU_INT_READ_BUS_ERROR = common dso_local global i32 0, align 4
@LIMA_MMU_COMMAND_ENABLE_PAGING = common dso_local global i32 0, align 4
@LIMA_MMU_STATUS = common dso_local global i32 0, align 4
@LIMA_MMU_STATUS_PAGING_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_mmu_init(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %7 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %8 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %7, i32 0, i32 2
  %9 = load %struct.lima_device*, %struct.lima_device** %8, align 8
  store %struct.lima_device* %9, %struct.lima_device** %4, align 8
  %10 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %11 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @lima_ip_ppmmu_bcast, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load i32, i32* @LIMA_MMU_DTE_ADDR, align 4
  %18 = call i32 @mmu_write(i32 %17, i32 -889275714)
  %19 = load i32, i32* @LIMA_MMU_DTE_ADDR, align 4
  %20 = call i32 @mmu_read(i32 %19)
  %21 = icmp ne i32 %20, -889278464
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %24 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %27 = call i32 @lima_ip_name(%struct.lima_ip* %26)
  %28 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %90

31:                                               ; preds = %16
  %32 = load i32, i32* @LIMA_MMU_COMMAND, align 4
  %33 = load i32, i32* @LIMA_MMU_COMMAND_HARD_RESET, align 4
  %34 = call i32 @mmu_write(i32 %32, i32 %33)
  %35 = load i32, i32* @LIMA_MMU_COMMAND_HARD_RESET, align 4
  %36 = load i32, i32* @LIMA_MMU_DTE_ADDR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @lima_mmu_send_command(i32 %35, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %90

46:                                               ; preds = %31
  %47 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %48 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %51 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @lima_mmu_irq_handler, align 4
  %54 = load i32, i32* @IRQF_SHARED, align 4
  %55 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %56 = call i32 @lima_ip_name(%struct.lima_ip* %55)
  %57 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %58 = call i32 @devm_request_irq(i32 %49, i32 %52, i32 %53, i32 %54, i32 %56, %struct.lima_ip* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %46
  %62 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %63 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %66 = call i32 @lima_ip_name(%struct.lima_ip* %65)
  %67 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %90

69:                                               ; preds = %46
  %70 = load i32, i32* @LIMA_MMU_INT_MASK, align 4
  %71 = load i32, i32* @LIMA_MMU_INT_PAGE_FAULT, align 4
  %72 = load i32, i32* @LIMA_MMU_INT_READ_BUS_ERROR, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @mmu_write(i32 %70, i32 %73)
  %75 = load i32, i32* @LIMA_MMU_DTE_ADDR, align 4
  %76 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %77 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @mmu_write(i32 %75, i32 %81)
  %83 = load i32, i32* @LIMA_MMU_COMMAND_ENABLE_PAGING, align 4
  %84 = load i32, i32* @LIMA_MMU_STATUS, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @LIMA_MMU_STATUS_PAGING_ENABLED, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @lima_mmu_send_command(i32 %83, i32 %84, i32 %85, i32 %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %69, %61, %44, %22, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @mmu_write(i32, i32) #1

declare dso_local i32 @mmu_read(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lima_ip_name(%struct.lima_ip*) #1

declare dso_local i32 @lima_mmu_send_command(i32, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.lima_ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
