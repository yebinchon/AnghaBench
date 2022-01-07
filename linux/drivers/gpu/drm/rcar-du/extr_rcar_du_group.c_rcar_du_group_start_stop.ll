; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_start_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcar_du_group_start_stop(%struct.rcar_du_group* %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_du_group*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %15 = call i32 @__rcar_du_group_start_stop(%struct.rcar_du_group* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %7
  %17 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %18 = call i32 @__rcar_du_group_start_stop(%struct.rcar_du_group* %17, i32 1)
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %21 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %27 = call i32 @__rcar_du_group_start_stop(%struct.rcar_du_group* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @__rcar_du_group_start_stop(%struct.rcar_du_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
