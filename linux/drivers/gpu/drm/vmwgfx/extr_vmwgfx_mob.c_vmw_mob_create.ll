; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_mob = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmw_mob* @vmw_mob_create(i64 %0) #0 {
  %2 = alloca %struct.vmw_mob*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vmw_mob*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.vmw_mob* @kzalloc(i32 4, i32 %5)
  store %struct.vmw_mob* %6, %struct.vmw_mob** %4, align 8
  %7 = load %struct.vmw_mob*, %struct.vmw_mob** %4, align 8
  %8 = icmp ne %struct.vmw_mob* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.vmw_mob* null, %struct.vmw_mob** %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @vmw_mob_calculate_pt_pages(i64 %15)
  %17 = load %struct.vmw_mob*, %struct.vmw_mob** %4, align 8
  %18 = getelementptr inbounds %struct.vmw_mob, %struct.vmw_mob* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vmw_mob*, %struct.vmw_mob** %4, align 8
  store %struct.vmw_mob* %19, %struct.vmw_mob** %2, align 8
  br label %20

20:                                               ; preds = %14, %13
  %21 = load %struct.vmw_mob*, %struct.vmw_mob** %2, align 8
  ret %struct.vmw_mob* %21
}

declare dso_local %struct.vmw_mob* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_mob_calculate_pt_pages(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
