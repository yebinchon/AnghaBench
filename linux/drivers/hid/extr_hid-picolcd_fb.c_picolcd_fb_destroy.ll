; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_fb.c_picolcd_fb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.picolcd_fb_data* }
%struct.TYPE_2__ = type { i64 }
%struct.picolcd_fb_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @picolcd_fb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @picolcd_fb_destroy(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.picolcd_fb_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 1
  %6 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %5, align 8
  store %struct.picolcd_fb_data* %6, %struct.picolcd_fb_data** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = call i32 @fb_deferred_io_cleanup(%struct.fb_info* %7)
  %9 = load %struct.picolcd_fb_data*, %struct.picolcd_fb_data** %3, align 8
  %10 = getelementptr inbounds %struct.picolcd_fb_data, %struct.picolcd_fb_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @vfree(i32* %19)
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = call i32 @framebuffer_release(%struct.fb_info* %21)
  ret void
}

declare dso_local i32 @fb_deferred_io_cleanup(%struct.fb_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
