; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_bw_apply_registry_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_bw_apply_registry_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*)* @dcn_bw_apply_registry_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn_bw_apply_registry_override(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @kernel_fpu_begin()
  %5 = load %struct.dc*, %struct.dc** %2, align 8
  %6 = getelementptr inbounds %struct.dc, %struct.dc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 1000
  %11 = load %struct.dc*, %struct.dc** %2, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %10, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.dc*, %struct.dc** %2, align 8
  %18 = getelementptr inbounds %struct.dc, %struct.dc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  %23 = load %struct.dc*, %struct.dc** %2, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 1.000000e+03
  %29 = fptosi double %28 to i32
  %30 = load %struct.dc*, %struct.dc** %2, align 8
  %31 = getelementptr inbounds %struct.dc, %struct.dc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %22, %16, %1
  %35 = load %struct.dc*, %struct.dc** %2, align 8
  %36 = getelementptr inbounds %struct.dc, %struct.dc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = load %struct.dc*, %struct.dc** %2, align 8
  %42 = getelementptr inbounds %struct.dc, %struct.dc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %34
  %47 = load %struct.dc*, %struct.dc** %2, align 8
  %48 = getelementptr inbounds %struct.dc, %struct.dc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  %53 = load %struct.dc*, %struct.dc** %2, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 1.000000e+03
  %59 = fptosi double %58 to i32
  %60 = load %struct.dc*, %struct.dc** %2, align 8
  %61 = getelementptr inbounds %struct.dc, %struct.dc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %52, %46, %34
  %65 = load %struct.dc*, %struct.dc** %2, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 1000
  %71 = load %struct.dc*, %struct.dc** %2, align 8
  %72 = getelementptr inbounds %struct.dc, %struct.dc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %70, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %64
  %77 = load %struct.dc*, %struct.dc** %2, align 8
  %78 = getelementptr inbounds %struct.dc, %struct.dc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  %83 = load %struct.dc*, %struct.dc** %2, align 8
  %84 = getelementptr inbounds %struct.dc, %struct.dc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %87, 1.000000e+03
  %89 = fptosi double %88 to i32
  %90 = load %struct.dc*, %struct.dc** %2, align 8
  %91 = getelementptr inbounds %struct.dc, %struct.dc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %82, %76, %64
  %95 = load %struct.dc*, %struct.dc** %2, align 8
  %96 = getelementptr inbounds %struct.dc, %struct.dc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 1000
  %101 = load %struct.dc*, %struct.dc** %2, align 8
  %102 = getelementptr inbounds %struct.dc, %struct.dc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %100, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %94
  %107 = load %struct.dc*, %struct.dc** %2, align 8
  %108 = getelementptr inbounds %struct.dc, %struct.dc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  %113 = load %struct.dc*, %struct.dc** %2, align 8
  %114 = getelementptr inbounds %struct.dc, %struct.dc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.dc*, %struct.dc** %2, align 8
  %118 = getelementptr inbounds %struct.dc, %struct.dc* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %112, %106, %94
  %122 = load %struct.dc*, %struct.dc** %2, align 8
  %123 = getelementptr inbounds %struct.dc, %struct.dc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 1000
  %128 = load %struct.dc*, %struct.dc** %2, align 8
  %129 = getelementptr inbounds %struct.dc, %struct.dc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %127, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %121
  %134 = load %struct.dc*, %struct.dc** %2, align 8
  %135 = getelementptr inbounds %struct.dc, %struct.dc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  %140 = load %struct.dc*, %struct.dc** %2, align 8
  %141 = getelementptr inbounds %struct.dc, %struct.dc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = sitofp i32 %143 to double
  %145 = fdiv double %144, 1.000000e+03
  %146 = fptosi double %145 to i32
  %147 = load %struct.dc*, %struct.dc** %2, align 8
  %148 = getelementptr inbounds %struct.dc, %struct.dc* %147, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 4
  store i32 %146, i32* %150, align 4
  br label %151

151:                                              ; preds = %139, %133, %121
  %152 = call i32 (...) @kernel_fpu_end()
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
