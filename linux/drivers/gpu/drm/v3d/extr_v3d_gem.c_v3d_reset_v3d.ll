; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_reset_v3d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_reset_v3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v3d_dev*)* @v3d_reset_v3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3d_reset_v3d(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  %3 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %4 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %9 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @reset_control_reset(i64 %10)
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %14 = call i32 @v3d_reset_by_bridge(%struct.v3d_dev* %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %17 = call i32 @v3d_init_hw_state(%struct.v3d_dev* %16)
  ret void
}

declare dso_local i32 @reset_control_reset(i64) #1

declare dso_local i32 @v3d_reset_by_bridge(%struct.v3d_dev*) #1

declare dso_local i32 @v3d_init_hw_state(%struct.v3d_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
