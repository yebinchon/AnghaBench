; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_manage_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_manage_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@BANDWIDTH_AVAILABLE_INITIAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TCODE_LOCK_COMPARE_SWAP = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_BANDWIDTH_AVAILABLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i32, i32, i32)* @manage_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manage_bandwidth(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  store %struct.fw_card* %0, %struct.fw_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @BANDWIDTH_AVAILABLE_INITIAL, align 4
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %86, %21
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %30, %31
  br label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @BANDWIDTH_AVAILABLE_INITIAL, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %92

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @cpu_to_be32(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @cpu_to_be32(i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %56 = load i32, i32* @TCODE_LOCK_COMPARE_SWAP, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SCODE_100, align 4
  %60 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %61 = load i64, i64* @CSR_BANDWIDTH_AVAILABLE, align 8
  %62 = add nsw i64 %60, %61
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %64 = call i32 @fw_run_transaction(%struct.fw_card* %55, i32 %56, i32 %57, i32 %58, i32 %59, i64 %62, i32* %63, i32 8)
  switch i32 %64, label %85 [
    i32 128, label %65
    i32 129, label %75
  ]

65:                                               ; preds = %48
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %68 ], [ %72, %71 ]
  store i32 %74, i32* %6, align 4
  br label %92

75:                                               ; preds = %48
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %77 = call i32 @be32_to_cpup(i32* %76)
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %6, align 4
  br label %92

82:                                               ; preds = %75
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %84 = call i32 @be32_to_cpup(i32* %83)
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %82, %48
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %23

89:                                               ; preds = %23
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %80, %73, %45
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fw_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
