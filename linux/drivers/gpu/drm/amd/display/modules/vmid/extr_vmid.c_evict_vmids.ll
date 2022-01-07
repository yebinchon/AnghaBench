; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/vmid/extr_vmid.c_evict_vmids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/vmid/extr_vmid.c_evict_vmids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_vmid = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.core_vmid*)* @evict_vmids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evict_vmids(%struct.core_vmid* %0) #0 {
  %2 = alloca %struct.core_vmid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.core_vmid* %0, %struct.core_vmid** %2, align 8
  %5 = load %struct.core_vmid*, %struct.core_vmid** %2, align 8
  %6 = getelementptr inbounds %struct.core_vmid, %struct.core_vmid* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dc_get_vmid_use_vector(i32 %7)
  store i32 %8, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.core_vmid*, %struct.core_vmid** %2, align 8
  %12 = getelementptr inbounds %struct.core_vmid, %struct.core_vmid* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.core_vmid*, %struct.core_vmid** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @clear_entry_from_vmid_table(%struct.core_vmid* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9

29:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dc_get_vmid_use_vector(i32) #1

declare dso_local i32 @clear_entry_from_vmid_table(%struct.core_vmid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
