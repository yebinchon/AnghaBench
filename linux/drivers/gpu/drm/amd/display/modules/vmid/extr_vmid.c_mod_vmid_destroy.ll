; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/vmid/extr_vmid.c_mod_vmid_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/vmid/extr_vmid.c_mod_vmid_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_vmid = type { i32 }
%struct.core_vmid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_vmid_destroy(%struct.mod_vmid* %0) #0 {
  %2 = alloca %struct.mod_vmid*, align 8
  %3 = alloca %struct.core_vmid*, align 8
  store %struct.mod_vmid* %0, %struct.mod_vmid** %2, align 8
  %4 = load %struct.mod_vmid*, %struct.mod_vmid** %2, align 8
  %5 = icmp ne %struct.mod_vmid* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.mod_vmid*, %struct.mod_vmid** %2, align 8
  %8 = call %struct.core_vmid* @MOD_VMID_TO_CORE(%struct.mod_vmid* %7)
  store %struct.core_vmid* %8, %struct.core_vmid** %3, align 8
  %9 = load %struct.core_vmid*, %struct.core_vmid** %3, align 8
  %10 = call i32 @kfree(%struct.core_vmid* %9)
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

declare dso_local %struct.core_vmid* @MOD_VMID_TO_CORE(%struct.mod_vmid*) #1

declare dso_local i32 @kfree(%struct.core_vmid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
