; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_set_guest_page_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_set_guest_page_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.intel_vgpu_oos_page* }
%struct.intel_vgpu_oos_page = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"set page sync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_ppgtt_spt*)* @ppgtt_set_guest_page_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_set_guest_page_sync(%struct.intel_vgpu_ppgtt_spt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %4 = alloca %struct.intel_vgpu_oos_page*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %6 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %8, align 8
  store %struct.intel_vgpu_oos_page* %9, %struct.intel_vgpu_oos_page** %4, align 8
  %10 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_vgpu_enable_page_track(%struct.TYPE_5__* %12, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %1
  %23 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %32 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @trace_oos_change(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30, %struct.intel_vgpu_ppgtt_spt* %31, i32 %35)
  %37 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %37, i32 0, i32 0
  %39 = call i32 @list_del_init(i32* %38)
  %40 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %44 = call i32 @sync_oos_page(%struct.TYPE_5__* %42, %struct.intel_vgpu_oos_page* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %22, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @intel_vgpu_enable_page_track(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @trace_oos_change(i32, i8*, i32, %struct.intel_vgpu_ppgtt_spt*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sync_oos_page(%struct.TYPE_5__*, %struct.intel_vgpu_oos_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
