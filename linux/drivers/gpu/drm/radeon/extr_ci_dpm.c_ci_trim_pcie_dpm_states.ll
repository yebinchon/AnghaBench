; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_trim_pcie_dpm_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_trim_pcie_dpm_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ci_single_dpm_table }
%struct.ci_single_dpm_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i64, i64, i64, i64)* @ci_trim_pcie_dpm_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_trim_pcie_dpm_states(%struct.radeon_device* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ci_power_info*, align 8
  %12 = alloca %struct.ci_single_dpm_table*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %16 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %15)
  store %struct.ci_power_info* %16, %struct.ci_power_info** %11, align 8
  %17 = load %struct.ci_power_info*, %struct.ci_power_info** %11, align 8
  %18 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.ci_single_dpm_table* %19, %struct.ci_single_dpm_table** %12, align 8
  store i64 0, i64* %13, align 8
  br label %20

20:                                               ; preds = %81, %5
  %21 = load i64, i64* %13, align 8
  %22 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %23 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %20
  %27 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %28 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %66, label %36

36:                                               ; preds = %26
  %37 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %38 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %36
  %47 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %48 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %46
  %57 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %58 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %56, %46, %36, %26
  %67 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %68 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  br label %80

73:                                               ; preds = %56
  %74 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %75 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %13, align 8
  br label %20

84:                                               ; preds = %20
  store i64 0, i64* %13, align 8
  br label %85

85:                                               ; preds = %164, %84
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %88 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %167

91:                                               ; preds = %85
  %92 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %93 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %163

100:                                              ; preds = %91
  %101 = load i64, i64* %13, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %159, %100
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %106 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %162

109:                                              ; preds = %103
  %110 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %111 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %158

118:                                              ; preds = %109
  %119 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %120 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %127 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %125, %132
  br i1 %133, label %134, label %157

134:                                              ; preds = %118
  %135 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %136 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %143 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i64, i64* %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %141, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %134
  %151 = load %struct.ci_single_dpm_table*, %struct.ci_single_dpm_table** %12, align 8
  %152 = getelementptr inbounds %struct.ci_single_dpm_table, %struct.ci_single_dpm_table* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %150, %134, %118
  br label %158

158:                                              ; preds = %157, %109
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %14, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %14, align 8
  br label %103

162:                                              ; preds = %103
  br label %163

163:                                              ; preds = %162, %91
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %13, align 8
  br label %85

167:                                              ; preds = %85
  ret void
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
