; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_interrupt.c_init_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_interrupt.c_init_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_irq = type { %struct.intel_gvt_irq_info**, %struct.intel_gvt_irq_map* }
%struct.intel_gvt_irq_info = type { i32, i32, i32 }
%struct.intel_gvt_irq_map = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"[up] grp %d bit %d -> [down] grp %d bitmask %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt_irq*)* @init_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_irq_map(%struct.intel_gvt_irq* %0) #0 {
  %2 = alloca %struct.intel_gvt_irq*, align 8
  %3 = alloca %struct.intel_gvt_irq_map*, align 8
  %4 = alloca %struct.intel_gvt_irq_info*, align 8
  %5 = alloca %struct.intel_gvt_irq_info*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_gvt_irq* %0, %struct.intel_gvt_irq** %2, align 8
  %7 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %2, align 8
  %8 = getelementptr inbounds %struct.intel_gvt_irq, %struct.intel_gvt_irq* %7, i32 0, i32 1
  %9 = load %struct.intel_gvt_irq_map*, %struct.intel_gvt_irq_map** %8, align 8
  store %struct.intel_gvt_irq_map* %9, %struct.intel_gvt_irq_map** %3, align 8
  br label %10

10:                                               ; preds = %53, %1
  %11 = load %struct.intel_gvt_irq_map*, %struct.intel_gvt_irq_map** %3, align 8
  %12 = getelementptr inbounds %struct.intel_gvt_irq_map, %struct.intel_gvt_irq_map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %2, align 8
  %17 = getelementptr inbounds %struct.intel_gvt_irq, %struct.intel_gvt_irq* %16, i32 0, i32 0
  %18 = load %struct.intel_gvt_irq_info**, %struct.intel_gvt_irq_info*** %17, align 8
  %19 = load %struct.intel_gvt_irq_map*, %struct.intel_gvt_irq_map** %3, align 8
  %20 = getelementptr inbounds %struct.intel_gvt_irq_map, %struct.intel_gvt_irq_map* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %18, i64 %21
  %23 = load %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %22, align 8
  store %struct.intel_gvt_irq_info* %23, %struct.intel_gvt_irq_info** %4, align 8
  %24 = load %struct.intel_gvt_irq_map*, %struct.intel_gvt_irq_map** %3, align 8
  %25 = getelementptr inbounds %struct.intel_gvt_irq_map, %struct.intel_gvt_irq_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.intel_gvt_irq*, %struct.intel_gvt_irq** %2, align 8
  %28 = getelementptr inbounds %struct.intel_gvt_irq, %struct.intel_gvt_irq* %27, i32 0, i32 0
  %29 = load %struct.intel_gvt_irq_info**, %struct.intel_gvt_irq_info*** %28, align 8
  %30 = load %struct.intel_gvt_irq_map*, %struct.intel_gvt_irq_map** %3, align 8
  %31 = getelementptr inbounds %struct.intel_gvt_irq_map, %struct.intel_gvt_irq_map* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %29, i64 %32
  %34 = load %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %33, align 8
  store %struct.intel_gvt_irq_info* %34, %struct.intel_gvt_irq_info** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %4, align 8
  %37 = getelementptr inbounds %struct.intel_gvt_irq_info, %struct.intel_gvt_irq_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_bit(i32 %35, i32 %38)
  %40 = load %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %5, align 8
  %41 = getelementptr inbounds %struct.intel_gvt_irq_info, %struct.intel_gvt_irq_info* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %4, align 8
  %43 = getelementptr inbounds %struct.intel_gvt_irq_info, %struct.intel_gvt_irq_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.intel_gvt_irq_info*, %struct.intel_gvt_irq_info** %5, align 8
  %47 = getelementptr inbounds %struct.intel_gvt_irq_info, %struct.intel_gvt_irq_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intel_gvt_irq_map*, %struct.intel_gvt_irq_map** %3, align 8
  %50 = getelementptr inbounds %struct.intel_gvt_irq_map, %struct.intel_gvt_irq_map* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gvt_dbg_irq(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %15
  %54 = load %struct.intel_gvt_irq_map*, %struct.intel_gvt_irq_map** %3, align 8
  %55 = getelementptr inbounds %struct.intel_gvt_irq_map, %struct.intel_gvt_irq_map* %54, i32 1
  store %struct.intel_gvt_irq_map* %55, %struct.intel_gvt_irq_map** %3, align 8
  br label %10

56:                                               ; preds = %10
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @gvt_dbg_irq(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
