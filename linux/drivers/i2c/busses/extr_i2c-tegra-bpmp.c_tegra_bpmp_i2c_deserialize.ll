; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_deserialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_deserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_i2c = type { i32 }
%struct.mrq_i2c_response = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }
%struct.i2c_msg = type { i32, i64, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_i2c*, %struct.mrq_i2c_response*, %struct.i2c_msg*, i32)* @tegra_bpmp_i2c_deserialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_i2c_deserialize(%struct.tegra_bpmp_i2c* %0, %struct.mrq_i2c_response* %1, %struct.i2c_msg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_bpmp_i2c*, align 8
  %7 = alloca %struct.mrq_i2c_response*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.tegra_bpmp_i2c* %0, %struct.tegra_bpmp_i2c** %6, align 8
  store %struct.mrq_i2c_response* %1, %struct.mrq_i2c_response** %7, align 8
  store %struct.i2c_msg* %2, %struct.i2c_msg** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mrq_i2c_response*, %struct.mrq_i2c_response** %7, align 8
  %16 = getelementptr inbounds %struct.mrq_i2c_response, %struct.mrq_i2c_response* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.mrq_i2c_response*, %struct.mrq_i2c_response** %7, align 8
  %20 = getelementptr inbounds %struct.mrq_i2c_response, %struct.mrq_i2c_response* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %47, %4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %29 = load i32, i32* %14, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i64 %30
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @I2C_M_RD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %40
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %37, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %14, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %102

57:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %98, %57
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 %65
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @I2C_M_RD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %62
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 %75
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %83 = load i32, i32* %14, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i64 %84
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memcpy(i32 %78, i8* %81, i64 %87)
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i64 %91
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %72, %62
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %58

101:                                              ; preds = %58
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %54
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
