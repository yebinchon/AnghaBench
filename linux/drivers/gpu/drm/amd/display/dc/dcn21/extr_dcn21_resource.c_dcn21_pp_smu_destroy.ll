; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_pp_smu_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_pp_smu_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_smu_funcs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn21_pp_smu_destroy(%struct.pp_smu_funcs** %0) #0 {
  %2 = alloca %struct.pp_smu_funcs**, align 8
  store %struct.pp_smu_funcs** %0, %struct.pp_smu_funcs*** %2, align 8
  %3 = load %struct.pp_smu_funcs**, %struct.pp_smu_funcs*** %2, align 8
  %4 = icmp ne %struct.pp_smu_funcs** %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.pp_smu_funcs**, %struct.pp_smu_funcs*** %2, align 8
  %7 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %6, align 8
  %8 = icmp ne %struct.pp_smu_funcs* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load %struct.pp_smu_funcs**, %struct.pp_smu_funcs*** %2, align 8
  %11 = load %struct.pp_smu_funcs*, %struct.pp_smu_funcs** %10, align 8
  %12 = call i32 @kfree(%struct.pp_smu_funcs* %11)
  %13 = load %struct.pp_smu_funcs**, %struct.pp_smu_funcs*** %2, align 8
  store %struct.pp_smu_funcs* null, %struct.pp_smu_funcs** %13, align 8
  br label %14

14:                                               ; preds = %9, %5, %1
  ret void
}

declare dso_local i32 @kfree(%struct.pp_smu_funcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
