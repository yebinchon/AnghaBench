; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_compute_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_compute_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32 }
%struct.tegra_sor_params = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_sor*, %struct.tegra_sor_params*, i32)* @tegra_sor_compute_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_compute_params(%struct.tegra_sor* %0, %struct.tegra_sor_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_sor*, align 8
  %6 = alloca %struct.tegra_sor_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tegra_sor* %0, %struct.tegra_sor** %5, align 8
  store %struct.tegra_sor_params* %1, %struct.tegra_sor_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @div_u64(i32 %24, i32 %25)
  %27 = load i32, i32* %14, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sdiv i32 %33, 2
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @div_u64(i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 15, %51
  %53 = icmp sle i32 %50, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @div_u64(i32 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %54
  br label %69

64:                                               ; preds = %44
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 15
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %64, %63
  br label %70

70:                                               ; preds = %69, %41
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 %83, 1
  %85 = mul nsw i32 %82, %84
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %81, %87
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 %90, %91
  %93 = call i32 @div_u64(i32 %89, i32 %92)
  store i32 %93, i32* %11, align 4
  br label %98

94:                                               ; preds = %77
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %80
  br label %111

99:                                               ; preds = %74
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @div_u64(i32 %104, i32 %105)
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %11, align 4
  br label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %108, %102
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @div_s64(i32 %114, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %118 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 %120, %119
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %154

124:                                              ; preds = %111
  %125 = load i32, i32* %15, align 4
  %126 = call i64 @abs(i32 %125)
  %127 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %128 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @div_u64(i32 %132, i32 %133)
  %135 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %136 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %139 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %142 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i64 @abs(i32 %143)
  %145 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %146 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.tegra_sor_params*, %struct.tegra_sor_params** %6, align 8
  %149 = getelementptr inbounds %struct.tegra_sor_params, %struct.tegra_sor_params* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %155

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153, %124, %111
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %152
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
