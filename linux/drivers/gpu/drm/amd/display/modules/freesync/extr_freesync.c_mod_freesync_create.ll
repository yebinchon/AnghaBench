; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.dc = type { i32 }
%struct.core_freesync = type { %struct.mod_freesync, %struct.dc* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mod_freesync* @mod_freesync_create(%struct.dc* %0) #0 {
  %2 = alloca %struct.mod_freesync*, align 8
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.core_freesync*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.core_freesync* @kzalloc(i32 16, i32 %5)
  store %struct.core_freesync* %6, %struct.core_freesync** %4, align 8
  %7 = load %struct.core_freesync*, %struct.core_freesync** %4, align 8
  %8 = icmp eq %struct.core_freesync* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.dc*, %struct.dc** %3, align 8
  %12 = icmp eq %struct.dc* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %20

14:                                               ; preds = %10
  %15 = load %struct.dc*, %struct.dc** %3, align 8
  %16 = load %struct.core_freesync*, %struct.core_freesync** %4, align 8
  %17 = getelementptr inbounds %struct.core_freesync, %struct.core_freesync* %16, i32 0, i32 1
  store %struct.dc* %15, %struct.dc** %17, align 8
  %18 = load %struct.core_freesync*, %struct.core_freesync** %4, align 8
  %19 = getelementptr inbounds %struct.core_freesync, %struct.core_freesync* %18, i32 0, i32 0
  store %struct.mod_freesync* %19, %struct.mod_freesync** %2, align 8
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.core_freesync*, %struct.core_freesync** %4, align 8
  %22 = call i32 @kfree(%struct.core_freesync* %21)
  br label %23

23:                                               ; preds = %20, %9
  store %struct.mod_freesync* null, %struct.mod_freesync** %2, align 8
  br label %24

24:                                               ; preds = %23, %14
  %25 = load %struct.mod_freesync*, %struct.mod_freesync** %2, align 8
  ret %struct.mod_freesync* %25
}

declare dso_local %struct.core_freesync* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.core_freesync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
