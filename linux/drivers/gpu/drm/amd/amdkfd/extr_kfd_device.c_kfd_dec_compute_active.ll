; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_dec_compute_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kfd_dec_compute_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Compute profile ref. count error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kfd_dec_compute_active(%struct.kfd_dev* %0) #0 {
  %2 = alloca %struct.kfd_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %2, align 8
  %4 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %5 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %4, i32 0, i32 1
  %6 = call i32 @atomic_dec_return(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %11 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @amdgpu_amdkfd_set_compute_idle(i32 %12, i32 1)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ONCE(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @amdgpu_amdkfd_set_compute_idle(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
