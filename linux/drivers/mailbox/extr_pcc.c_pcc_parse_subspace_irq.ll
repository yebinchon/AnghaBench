; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_pcc.c_pcc_parse_subspace_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_pcc.c_pcc_parse_subspace_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pcct_hw_reduced = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.acpi_pcct_hw_reduced_type2 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@pcc_doorbell_irq = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"PCC GSI %d not registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACPI_PCCT_TYPE_HW_REDUCED_SUBSPACE_TYPE2 = common dso_local global i64 0, align 8
@pcc_doorbell_ack_vaddr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to ioremap PCC ACK register\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_pcct_hw_reduced*)* @pcc_parse_subspace_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcc_parse_subspace_irq(i32 %0, %struct.acpi_pcct_hw_reduced* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_pcct_hw_reduced*, align 8
  %6 = alloca %struct.acpi_pcct_hw_reduced_type2*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_pcct_hw_reduced* %1, %struct.acpi_pcct_hw_reduced** %5, align 8
  %7 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %5, align 8
  %8 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @pcc_map_interrupt(i32 %9, i32 %13)
  %15 = load i64*, i64** @pcc_doorbell_irq, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 %14, i64* %18, align 8
  %19 = load i64*, i64** @pcc_doorbell_irq, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %2
  %33 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_pcct_hw_reduced, %struct.acpi_pcct_hw_reduced* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ACPI_PCCT_TYPE_HW_REDUCED_SUBSPACE_TYPE2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %32
  %40 = load %struct.acpi_pcct_hw_reduced*, %struct.acpi_pcct_hw_reduced** %5, align 8
  %41 = bitcast %struct.acpi_pcct_hw_reduced* %40 to i8*
  %42 = bitcast i8* %41 to %struct.acpi_pcct_hw_reduced_type2*
  store %struct.acpi_pcct_hw_reduced_type2* %42, %struct.acpi_pcct_hw_reduced_type2** %6, align 8
  %43 = load %struct.acpi_pcct_hw_reduced_type2*, %struct.acpi_pcct_hw_reduced_type2** %6, align 8
  %44 = getelementptr inbounds %struct.acpi_pcct_hw_reduced_type2, %struct.acpi_pcct_hw_reduced_type2* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.acpi_pcct_hw_reduced_type2*, %struct.acpi_pcct_hw_reduced_type2** %6, align 8
  %48 = getelementptr inbounds %struct.acpi_pcct_hw_reduced_type2, %struct.acpi_pcct_hw_reduced_type2* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 8
  %52 = call i32 @acpi_os_ioremap(i32 %46, i32 %51)
  %53 = load i32*, i32** @pcc_doorbell_ack_vaddr, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32*, i32** @pcc_doorbell_ack_vaddr, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %39
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67, %32
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %63, %25
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @pcc_map_interrupt(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @acpi_os_ioremap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
