; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_raw_convert_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_raw_convert_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scom_access = type { i32, i32 }

@SCOM_STATUS_PIB_RESP_MASK = common dso_local global i32 0, align 4
@SCOM_STATUS_PIB_RESP_SHIFT = common dso_local global i32 0, align 4
@SCOM_STATUS_PROTECTION = common dso_local global i32 0, align 4
@SCOM_INTF_ERR_PROTECTION = common dso_local global i32 0, align 4
@SCOM_STATUS_PARITY = common dso_local global i32 0, align 4
@SCOM_INTF_ERR_PARITY = common dso_local global i32 0, align 4
@SCOM_STATUS_PIB_ABORT = common dso_local global i32 0, align 4
@SCOM_INTF_ERR_ABORT = common dso_local global i32 0, align 4
@SCOM_STATUS_ERR_SUMMARY = common dso_local global i32 0, align 4
@SCOM_INTF_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scom_access*, i32)* @raw_convert_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_convert_status(%struct.scom_access* %0, i32 %1) #0 {
  %3 = alloca %struct.scom_access*, align 8
  %4 = alloca i32, align 4
  store %struct.scom_access* %0, %struct.scom_access** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SCOM_STATUS_PIB_RESP_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @SCOM_STATUS_PIB_RESP_SHIFT, align 4
  %9 = ashr i32 %7, %8
  %10 = load %struct.scom_access*, %struct.scom_access** %3, align 8
  %11 = getelementptr inbounds %struct.scom_access, %struct.scom_access* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.scom_access*, %struct.scom_access** %3, align 8
  %13 = getelementptr inbounds %struct.scom_access, %struct.scom_access* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SCOM_STATUS_PROTECTION, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @SCOM_INTF_ERR_PROTECTION, align 4
  %20 = load %struct.scom_access*, %struct.scom_access** %3, align 8
  %21 = getelementptr inbounds %struct.scom_access, %struct.scom_access* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %60

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SCOM_STATUS_PARITY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @SCOM_INTF_ERR_PARITY, align 4
  %31 = load %struct.scom_access*, %struct.scom_access** %3, align 8
  %32 = getelementptr inbounds %struct.scom_access, %struct.scom_access* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %59

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SCOM_STATUS_PIB_ABORT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @SCOM_INTF_ERR_ABORT, align 4
  %42 = load %struct.scom_access*, %struct.scom_access** %3, align 8
  %43 = getelementptr inbounds %struct.scom_access, %struct.scom_access* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %58

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SCOM_STATUS_ERR_SUMMARY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @SCOM_INTF_ERR_UNKNOWN, align 4
  %53 = load %struct.scom_access*, %struct.scom_access** %3, align 8
  %54 = getelementptr inbounds %struct.scom_access, %struct.scom_access* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %29
  br label %60

60:                                               ; preds = %59, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
