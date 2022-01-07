; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_dpm_print_ps_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_dpm_print_ps_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_ps*, %struct.amdgpu_ps*, %struct.amdgpu_ps* }
%struct.amdgpu_ps = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"\09status:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" b\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_dpm_print_ps_status(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ps*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %4, align 8
  %5 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %10, align 8
  %12 = icmp eq %struct.amdgpu_ps* %6, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %20, align 8
  %22 = icmp eq %struct.amdgpu_ps* %16, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %15
  %26 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %30, align 8
  %32 = icmp eq %struct.amdgpu_ps* %26, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %25
  %36 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
