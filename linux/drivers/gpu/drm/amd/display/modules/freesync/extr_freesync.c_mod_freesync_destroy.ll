; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.core_freesync = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_freesync_destroy(%struct.mod_freesync* %0) #0 {
  %2 = alloca %struct.mod_freesync*, align 8
  %3 = alloca %struct.core_freesync*, align 8
  store %struct.mod_freesync* %0, %struct.mod_freesync** %2, align 8
  store %struct.core_freesync* null, %struct.core_freesync** %3, align 8
  %4 = load %struct.mod_freesync*, %struct.mod_freesync** %2, align 8
  %5 = icmp eq %struct.mod_freesync* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  %8 = load %struct.mod_freesync*, %struct.mod_freesync** %2, align 8
  %9 = call %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync* %8)
  store %struct.core_freesync* %9, %struct.core_freesync** %3, align 8
  %10 = load %struct.core_freesync*, %struct.core_freesync** %3, align 8
  %11 = call i32 @kfree(%struct.core_freesync* %10)
  br label %12

12:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync*) #1

declare dso_local i32 @kfree(%struct.core_freesync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
