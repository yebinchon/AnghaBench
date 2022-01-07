; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_atomic_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_atomic_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_atomic_state = type { i32, i32, i64 }
%struct.vc4_dev = type { i32 }

@commit_work = common dso_local global i32 0, align 4
@system_unbound_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_atomic_state*, i32)* @vc4_atomic_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_atomic_commit(%struct.drm_device* %0, %struct.drm_atomic_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %10)
  store %struct.vc4_dev* %11, %struct.vc4_dev** %8, align 8
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %13 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %18 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %17, i32 0, i32 0
  %19 = call i32 @down_interruptible(i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %115

24:                                               ; preds = %16
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %27 = call i32 @drm_atomic_helper_prepare_planes(%struct.drm_device* %25, %struct.drm_atomic_state* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %32 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %31, i32 0, i32 0
  %33 = call i32 @up(i32* %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %115

35:                                               ; preds = %24
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %38 = call i32 @drm_atomic_helper_async_commit(%struct.drm_device* %36, %struct.drm_atomic_state* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %41 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %39, %struct.drm_atomic_state* %40)
  %42 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %43 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %42, i32 0, i32 0
  %44 = call i32 @up(i32* %43)
  store i32 0, i32* %4, align 4
  br label %115

45:                                               ; preds = %3
  %46 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %47 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @drm_atomic_helper_setup_commit(%struct.drm_atomic_state* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %115

55:                                               ; preds = %45
  %56 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %57 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %56, i32 0, i32 1
  %58 = load i32, i32* @commit_work, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %61 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %60, i32 0, i32 0
  %62 = call i32 @down_interruptible(i32* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %115

67:                                               ; preds = %55
  %68 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %69 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %70 = call i32 @drm_atomic_helper_prepare_planes(%struct.drm_device* %68, %struct.drm_atomic_state* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %75 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %74, i32 0, i32 0
  %76 = call i32 @up(i32* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %115

78:                                               ; preds = %67
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %78
  %82 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %83 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %84 = call i32 @drm_atomic_helper_wait_for_fences(%struct.drm_device* %82, %struct.drm_atomic_state* %83, i32 1)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %89 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %90 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %88, %struct.drm_atomic_state* %89)
  %91 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %92 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %91, i32 0, i32 0
  %93 = call i32 @up(i32* %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %115

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %78
  %97 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %98 = call i64 @drm_atomic_helper_swap_state(%struct.drm_atomic_state* %97, i32 0)
  %99 = icmp slt i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %103 = call i32 @drm_atomic_state_get(%struct.drm_atomic_state* %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load i32, i32* @system_unbound_wq, align 4
  %108 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %109 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %108, i32 0, i32 1
  %110 = call i32 @queue_work(i32 %107, i32* %109)
  br label %114

111:                                              ; preds = %96
  %112 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %113 = call i32 @vc4_atomic_complete_commit(%struct.drm_atomic_state* %112)
  br label %114

114:                                              ; preds = %111, %106
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %87, %73, %65, %53, %35, %30, %22
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @drm_atomic_helper_prepare_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @drm_atomic_helper_async_commit(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_setup_commit(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_atomic_helper_wait_for_fences(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @drm_atomic_helper_swap_state(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_state_get(%struct.drm_atomic_state*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @vc4_atomic_complete_commit(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
