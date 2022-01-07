; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_wrpll_update_rnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_wrpll_update_rnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsw_wrpll_rnp = type { i32, i32, i32 }

@LC_FREQ_2K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, %struct.hsw_wrpll_rnp*)* @hsw_wrpll_update_rnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_wrpll_update_rnp(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.hsw_wrpll_rnp* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hsw_wrpll_rnp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.hsw_wrpll_rnp* %5, %struct.hsw_wrpll_rnp** %12, align 8
  %19 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %20 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %26 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %29 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %32 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %171

33:                                               ; preds = %6
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* %11, align 4
  %38 = mul i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = mul i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul i32 %41, %42
  %44 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %45 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %43, %46
  %48 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %49 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul i32 %47, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = mul i32 %54, %55
  %57 = load i32, i32* @LC_FREQ_2K, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul i32 %57, %58
  %60 = call i32 @abs_diff(i32 %56, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %63 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 %61, %64
  %66 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %67 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = mul i32 %65, %68
  %70 = load i32, i32* @LC_FREQ_2K, align 4
  %71 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %72 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul i32 %70, %73
  %75 = call i32 @abs_diff(i32 %69, i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = mul i32 1000000, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %18, align 4
  %79 = mul i32 1000000, %78
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %33
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %89 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %92 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = mul i32 %90, %93
  %95 = load i32, i32* %17, align 4
  %96 = mul i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = mul i32 %97, %98
  %100 = load i32, i32* %18, align 4
  %101 = mul i32 %99, %100
  %102 = icmp ult i32 %96, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %87
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %106 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %109 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %112 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %103, %87
  br label %171

114:                                              ; preds = %83, %33
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp uge i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %125 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %128 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %131 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %170

132:                                              ; preds = %118, %114
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp uge i32 %133, %134
  br i1 %135, label %136, label %169

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp uge i32 %137, %138
  br i1 %139, label %140, label %169

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %143 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = mul i32 %141, %144
  %146 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %147 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = mul i32 %145, %148
  %150 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %151 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = mul i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = mul i32 %154, %155
  %157 = icmp ugt i32 %149, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %140
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %161 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %164 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.hsw_wrpll_rnp*, %struct.hsw_wrpll_rnp** %12, align 8
  %167 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %158, %140
  br label %169

169:                                              ; preds = %168, %136, %132
  br label %170

170:                                              ; preds = %169, %122
  br label %171

171:                                              ; preds = %23, %170, %113
  ret void
}

declare dso_local i32 @abs_diff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
