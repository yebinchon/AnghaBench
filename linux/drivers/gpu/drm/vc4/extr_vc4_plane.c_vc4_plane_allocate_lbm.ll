; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_allocate_lbm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_allocate_lbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vc4_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vc4_plane_state = type { i64, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*)* @vc4_plane_allocate_lbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_plane_allocate_lbm(%struct.drm_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_plane_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vc4_dev* @to_vc4_dev(i32 %13)
  store %struct.vc4_dev* %14, %struct.vc4_dev** %4, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %16 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %15)
  store %struct.vc4_plane_state* %16, %struct.vc4_plane_state** %5, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %18 = call i64 @vc4_lbm_size(%struct.drm_plane_state* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %87

34:                                               ; preds = %22
  %35 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %36 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %34
  %41 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %42 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %48 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %52 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @drm_mm_insert_node_generic(i32* %50, %struct.TYPE_6__* %52, i64 %53, i32 32, i32 0, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %56 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %40
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %87

65:                                               ; preds = %40
  br label %75

66:                                               ; preds = %34
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %69 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %67, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON_ONCE(i32 %73)
  br label %75

75:                                               ; preds = %66, %65
  %76 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %77 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %81 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %84 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %86, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %75, %63, %31, %21
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(i32) #1

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local i64 @vc4_lbm_size(%struct.drm_plane_state*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_mm_insert_node_generic(i32*, %struct.TYPE_6__*, i64, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
