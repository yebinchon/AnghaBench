; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_serialize_i2c_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_serialize_i2c_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_i2c = type { i32 }
%struct.mrq_i2c_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@SERIALI2C_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_i2c*, %struct.mrq_i2c_request*, %struct.i2c_msg*, i32)* @tegra_bpmp_serialize_i2c_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_serialize_i2c_msg(%struct.tegra_bpmp_i2c* %0, %struct.mrq_i2c_request* %1, %struct.i2c_msg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_bpmp_i2c*, align 8
  %7 = alloca %struct.mrq_i2c_request*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.i2c_msg*, align 8
  %16 = alloca i32, align 4
  store %struct.tegra_bpmp_i2c* %0, %struct.tegra_bpmp_i2c** %6, align 8
  store %struct.mrq_i2c_request* %1, %struct.mrq_i2c_request** %7, align 8
  store %struct.i2c_msg* %2, %struct.i2c_msg** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mrq_i2c_request*, %struct.mrq_i2c_request** %7, align 8
  %18 = getelementptr inbounds %struct.mrq_i2c_request, %struct.mrq_i2c_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %127, %4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %130

25:                                               ; preds = %21
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %28
  store %struct.i2c_msg* %29, %struct.i2c_msg** %15, align 8
  store i32 0, i32* %16, align 4
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @tegra_bpmp_xlate_flags(i32 %32, i32* %16)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %135

38:                                               ; preds = %25
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 65280
  %53 = ashr i32 %52, 8
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 %54, i8* %59, align 1
  %60 = load i32, i32* %16, align 4
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 %62, i8* %67, align 1
  %68 = load i32, i32* %16, align 4
  %69 = and i32 %68, 65280
  %70 = ashr i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %13, align 4
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8 %81, i8* %86, align 1
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 65280
  %91 = ashr i32 %90, 8
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %92, i8* %97, align 1
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @SERIALI2C_RD, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %38
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %122, %102
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %15, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %13, align 4
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 %116, i8* %121, align 1
  br label %122

122:                                              ; preds = %109
  %123 = load i32, i32* %12, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %103

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125, %38
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %21

130:                                              ; preds = %21
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.mrq_i2c_request*, %struct.mrq_i2c_request** %7, align 8
  %133 = getelementptr inbounds %struct.mrq_i2c_request, %struct.mrq_i2c_request* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 8
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %130, %36
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @tegra_bpmp_xlate_flags(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
