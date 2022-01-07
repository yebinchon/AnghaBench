; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_update_entry_type_for_real.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_update_entry_type_for_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i32 }

@GTT_TYPE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_entry.0*, i32)* @update_entry_type_for_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_entry_type_for_real(%struct.intel_gvt_gtt_pte_ops* %0, %struct.intel_gvt_gtt_entry.0* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %5 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_gvt_gtt_pte_ops* %0, %struct.intel_gvt_gtt_pte_ops** %4, align 8
  store %struct.intel_gvt_gtt_entry.0* %1, %struct.intel_gvt_gtt_entry.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %8 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %39 [
    i32 130, label %10
    i32 129, label %10
    i32 128, label %27
  ]

10:                                               ; preds = %3, %3
  %11 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %4, align 8
  %12 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %11, i32 0, i32 0
  %13 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %12, align 8
  %14 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %15 = bitcast %struct.intel_gvt_gtt_entry.0* %14 to %struct.intel_gvt_gtt_entry*
  %16 = call i32 %13(%struct.intel_gvt_gtt_entry* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %20 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @get_pse_type(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %25 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %18, %10
  br label %48

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %32 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @get_pse_type(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %37 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %27
  br label %48

39:                                               ; preds = %3
  %40 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %41 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gtt_type_is_entry(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @GEM_BUG_ON(i32 %46)
  br label %48

48:                                               ; preds = %39, %38, %26
  %49 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %50 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GTT_TYPE_INVALID, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @GEM_BUG_ON(i32 %54)
  ret void
}

declare dso_local i8* @get_pse_type(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @gtt_type_is_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
