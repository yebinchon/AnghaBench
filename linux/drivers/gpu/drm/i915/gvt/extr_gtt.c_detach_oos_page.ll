; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_detach_oos_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_detach_oos_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_vgpu_oos_page = type { i32, i32, %struct.intel_vgpu_ppgtt_spt*, i32 }
%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.intel_vgpu_oos_page*)* @detach_oos_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach_oos_page(%struct.intel_vgpu* %0, %struct.intel_vgpu_oos_page* %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_vgpu_oos_page*, align 8
  %5 = alloca %struct.intel_gvt*, align 8
  %6 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store %struct.intel_vgpu_oos_page* %1, %struct.intel_vgpu_oos_page** %4, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 1
  %9 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  store %struct.intel_gvt* %9, %struct.intel_gvt** %5, align 8
  %10 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %10, i32 0, i32 2
  %12 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %11, align 8
  store %struct.intel_vgpu_ppgtt_spt* %12, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %20 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %21 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @trace_oos_change(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18, %struct.intel_vgpu_ppgtt_spt* %19, i32 %23)
  %25 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %31, i32 0, i32 2
  store %struct.intel_vgpu_ppgtt_spt* null, %struct.intel_vgpu_ppgtt_spt** %32, align 8
  %33 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %33, i32 0, i32 1
  %35 = call i32 @list_del_init(i32* %34)
  %36 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %4, align 8
  %37 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %36, i32 0, i32 0
  %38 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %39 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @list_move_tail(i32* %37, i32* %40)
  ret i32 0
}

declare dso_local i32 @trace_oos_change(i32, i8*, i32, %struct.intel_vgpu_ppgtt_spt*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
