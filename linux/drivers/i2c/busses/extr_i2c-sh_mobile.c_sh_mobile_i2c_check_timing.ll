; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_check_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_check_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, i64, i64, i32, i32 }

@IIC_FLAG_HAS_ICIC67 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"timing values out of range: L/H=0x%x/0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICIC_ICCLB8 = common dso_local global i32 0, align 4
@ICIC_ICCHB8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"timing values: L/H=0x%x/0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_check_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_check_timing(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_i2c_data*, align 8
  %4 = alloca i64, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %3, align 8
  %5 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IIC_FLAG_HAS_ICIC67, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 511, i32 255
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %15 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %21 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19, %1
  %26 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %30 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %89

38:                                               ; preds = %19
  %39 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %40 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, 256
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @ICIC_ICCLB8, align 4
  %46 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %47 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %57

50:                                               ; preds = %38
  %51 = load i32, i32* @ICIC_ICCLB8, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %54 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %44
  %58 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %59 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, 256
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @ICIC_ICCHB8, align 4
  %65 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %66 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %76

69:                                               ; preds = %57
  %70 = load i32, i32* @ICIC_ICCHB8, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %73 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %63
  %77 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %78 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %81 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %85 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %76, %25
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
