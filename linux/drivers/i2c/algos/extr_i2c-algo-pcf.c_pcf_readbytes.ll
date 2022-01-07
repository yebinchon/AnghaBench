; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_readbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_pcf_data* }
%struct.i2c_algo_pcf_data = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pcf_readbytes timed out.\0A\00", align 1
@I2C_PCF_LRB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"i2c_read: i2c_inb, No ack.\0A\00", align 1
@I2C_PCF_ESO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8*, i32, i32)* @pcf_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_readbytes(%struct.i2c_adapter* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_algo_pcf_data*, align 8
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 1
  %16 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %15, align 8
  store %struct.i2c_algo_pcf_data* %16, %struct.i2c_algo_pcf_data** %12, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %93, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %96

21:                                               ; preds = %17
  %22 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %23 = call i32 @wait_for_pin(%struct.i2c_algo_pcf_data* %22, i32* %11)
  store i32 %23, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @EINTR, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %99

33:                                               ; preds = %25
  %34 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %35 = call i32 @i2c_stop(%struct.i2c_algo_pcf_data* %34)
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %99

39:                                               ; preds = %21
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @I2C_PCF_LRB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %50 = call i32 @i2c_stop(%struct.i2c_algo_pcf_data* %49)
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %99

54:                                               ; preds = %44, %39
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %61 = load i32, i32* @I2C_PCF_ESO, align 4
  %62 = call i32 @set_pcf(%struct.i2c_algo_pcf_data* %60, i32 1, i32 %61)
  br label %78

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %72 = call i32 @i2c_stop(%struct.i2c_algo_pcf_data* %71)
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %75 = call i32 @i2c_repstart(%struct.i2c_algo_pcf_data* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %59
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %83 = call signext i8 @i2c_inb(%struct.i2c_algo_pcf_data* %82)
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 %83, i8* %88, align 1
  br label %92

89:                                               ; preds = %78
  %90 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %12, align 8
  %91 = call signext i8 @i2c_inb(%struct.i2c_algo_pcf_data* %90)
  br label %92

92:                                               ; preds = %89, %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %17

96:                                               ; preds = %17
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %48, %33, %30
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @wait_for_pin(%struct.i2c_algo_pcf_data*, i32*) #1

declare dso_local i32 @i2c_stop(%struct.i2c_algo_pcf_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_pcf(%struct.i2c_algo_pcf_data*, i32, i32) #1

declare dso_local i32 @i2c_repstart(%struct.i2c_algo_pcf_data*) #1

declare dso_local signext i8 @i2c_inb(%struct.i2c_algo_pcf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
