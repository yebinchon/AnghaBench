; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_request_device_late.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_request_device_late.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_cmdbuf_man*, i64 }
%struct.vmw_cmdbuf_man = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Unable to initialize guest Memory OBjects.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*)* @vmw_request_device_late to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_request_device_late(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_cmdbuf_man*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %6 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %12 = call i32 @vmw_otables_setup(%struct.vmw_private* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 0
  %25 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %24, align 8
  %26 = icmp ne %struct.vmw_cmdbuf_man* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %29 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %28, i32 0, i32 0
  %30 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %29, align 8
  %31 = call i32 @vmw_cmdbuf_set_pool_size(%struct.vmw_cmdbuf_man* %30, i32 1048576, i32 8192)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %36 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %35, i32 0, i32 0
  %37 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %36, align 8
  store %struct.vmw_cmdbuf_man* %37, %struct.vmw_cmdbuf_man** %5, align 8
  %38 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 0
  store %struct.vmw_cmdbuf_man* null, %struct.vmw_cmdbuf_man** %39, align 8
  %40 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %41 = call i32 @vmw_cmdbuf_man_destroy(%struct.vmw_cmdbuf_man* %40)
  br label %42

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42, %22
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @vmw_otables_setup(%struct.vmw_private*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_cmdbuf_set_pool_size(%struct.vmw_cmdbuf_man*, i32, i32) #1

declare dso_local i32 @vmw_cmdbuf_man_destroy(%struct.vmw_cmdbuf_man*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
