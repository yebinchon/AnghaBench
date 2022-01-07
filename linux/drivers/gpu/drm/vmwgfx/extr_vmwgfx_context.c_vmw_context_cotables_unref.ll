; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_context.c_vmw_context_cotables_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_context.c_vmw_context_cotables_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_user_context = type { i32, %struct.vmw_resource** }
%struct.vmw_resource = type { i32 }

@SVGA_COTABLE_DX10_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_user_context*)* @vmw_context_cotables_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_context_cotables_unref(%struct.vmw_user_context* %0) #0 {
  %2 = alloca %struct.vmw_user_context*, align 8
  %3 = alloca %struct.vmw_resource*, align 8
  %4 = alloca i32, align 4
  store %struct.vmw_user_context* %0, %struct.vmw_user_context** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SVGA_COTABLE_DX10_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = load %struct.vmw_user_context*, %struct.vmw_user_context** %2, align 8
  %11 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.vmw_user_context*, %struct.vmw_user_context** %2, align 8
  %14 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %13, i32 0, i32 1
  %15 = load %struct.vmw_resource**, %struct.vmw_resource*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vmw_resource*, %struct.vmw_resource** %15, i64 %17
  %19 = load %struct.vmw_resource*, %struct.vmw_resource** %18, align 8
  store %struct.vmw_resource* %19, %struct.vmw_resource** %3, align 8
  %20 = load %struct.vmw_user_context*, %struct.vmw_user_context** %2, align 8
  %21 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %20, i32 0, i32 1
  %22 = load %struct.vmw_resource**, %struct.vmw_resource*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vmw_resource*, %struct.vmw_resource** %22, i64 %24
  store %struct.vmw_resource* null, %struct.vmw_resource** %25, align 8
  %26 = load %struct.vmw_user_context*, %struct.vmw_user_context** %2, align 8
  %27 = getelementptr inbounds %struct.vmw_user_context, %struct.vmw_user_context* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.vmw_resource*, %struct.vmw_resource** %3, align 8
  %30 = icmp ne %struct.vmw_resource* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = call i32 @vmw_resource_unreference(%struct.vmw_resource** %3)
  br label %33

33:                                               ; preds = %31, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmw_resource_unreference(%struct.vmw_resource**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
