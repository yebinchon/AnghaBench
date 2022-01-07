; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_sba_estimate_nonheader_desc_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_sba_estimate_nonheader_desc_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BRCM_SBA_CMD_TYPE_B = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_TYPE_C = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_HAS_RESP = common dso_local global i32 0, align 4
@BRCM_SBA_CMD_HAS_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcm_message*)* @flexrm_sba_estimate_nonheader_desc_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flexrm_sba_estimate_nonheader_desc_count(%struct.brcm_message* %0) #0 {
  %2 = alloca %struct.brcm_message*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %72, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.brcm_message*, %struct.brcm_message** %2, align 8
  %8 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %5
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %4, align 8
  %15 = load %struct.brcm_message*, %struct.brcm_message** %2, align 8
  %16 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BRCM_SBA_CMD_TYPE_B, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %12
  %27 = load %struct.brcm_message*, %struct.brcm_message** %2, align 8
  %28 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BRCM_SBA_CMD_TYPE_C, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26, %12
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %38, %26
  %42 = load %struct.brcm_message*, %struct.brcm_message** %2, align 8
  %43 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BRCM_SBA_CMD_HAS_RESP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %53, %41
  %57 = load %struct.brcm_message*, %struct.brcm_message** %2, align 8
  %58 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BRCM_SBA_CMD_HAS_OUTPUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %68, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %5

75:                                               ; preds = %5
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
