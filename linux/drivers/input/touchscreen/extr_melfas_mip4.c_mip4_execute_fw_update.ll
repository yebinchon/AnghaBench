; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_execute_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_execute_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.firmware = type { i32 }
%struct.mip4_bin_tail = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to flash firmware: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*, %struct.firmware*)* @mip4_execute_fw_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_execute_fw_update(%struct.mip4_ts* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mip4_ts*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.mip4_bin_tail*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 3, i32* %9, align 4
  %11 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = call i32 @mip4_parse_firmware(%struct.mip4_ts* %11, %struct.firmware* %12, i32* %7, i32* %8, %struct.mip4_bin_tail** %6)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %20 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %27 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @disable_irq(i32 %30)
  br label %40

32:                                               ; preds = %18
  %33 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %34 = call i32 @mip4_power_on(%struct.mip4_ts* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %92

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %53, %40
  %42 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %43 = load %struct.firmware*, %struct.firmware** %5, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mip4_flash_fw(%struct.mip4_ts* %42, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %57

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %41, label %57

57:                                               ; preds = %53, %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %62 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %60, %57
  %68 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %69 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %76 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @enable_irq(i32 %79)
  br label %84

81:                                               ; preds = %67
  %82 = load %struct.mip4_ts*, %struct.mip4_ts** %4, align 8
  %83 = call i32 @mip4_power_off(%struct.mip4_ts* %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  br label %90

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %37, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @mip4_parse_firmware(%struct.mip4_ts*, %struct.firmware*, i32*, i32*, %struct.mip4_bin_tail**) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mip4_power_on(%struct.mip4_ts*) #1

declare dso_local i32 @mip4_flash_fw(%struct.mip4_ts*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @mip4_power_off(%struct.mip4_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
