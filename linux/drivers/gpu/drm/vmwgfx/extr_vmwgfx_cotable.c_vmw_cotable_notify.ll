; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cotable.c_vmw_cotable_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_resource = type { i32 }
%struct.vmw_cotable = type { i32, i64 }

@SVGA_COTABLE_MAX_IDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Illegal COTable id. Type is %u. Id is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_cotable_notify(%struct.vmw_resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_cotable*, align 8
  store %struct.vmw_resource* %0, %struct.vmw_resource** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %8 = call %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource* %7)
  store %struct.vmw_cotable* %8, %struct.vmw_cotable** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SVGA_COTABLE_MAX_IDS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11, %2
  %16 = load %struct.vmw_cotable*, %struct.vmw_cotable** %6, align 8
  %17 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %11
  %25 = load %struct.vmw_cotable*, %struct.vmw_cotable** %6, align 8
  %26 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.vmw_resource*, %struct.vmw_resource** %4, align 8
  %32 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.vmw_cotable*, %struct.vmw_cotable** %6, align 8
  %35 = getelementptr inbounds %struct.vmw_cotable, %struct.vmw_cotable* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.vmw_cotable* @vmw_cotable(%struct.vmw_resource*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
