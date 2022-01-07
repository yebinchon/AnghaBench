; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_ldu_del_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_ldu_del_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_legacy_display* }
%struct.vmw_legacy_display = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.vmw_legacy_display_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_legacy_display_unit*)* @vmw_ldu_del_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_ldu_del_active(%struct.vmw_private* %0, %struct.vmw_legacy_display_unit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_legacy_display_unit*, align 8
  %6 = alloca %struct.vmw_legacy_display*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store %struct.vmw_legacy_display_unit* %1, %struct.vmw_legacy_display_unit** %5, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 0
  %9 = load %struct.vmw_legacy_display*, %struct.vmw_legacy_display** %8, align 8
  store %struct.vmw_legacy_display* %9, %struct.vmw_legacy_display** %6, align 8
  %10 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %5, align 8
  %11 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %10, i32 0, i32 0
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.vmw_legacy_display_unit*, %struct.vmw_legacy_display_unit** %5, align 8
  %17 = getelementptr inbounds %struct.vmw_legacy_display_unit, %struct.vmw_legacy_display_unit* %16, i32 0, i32 0
  %18 = call i32 @list_del_init(i32* %17)
  %19 = load %struct.vmw_legacy_display*, %struct.vmw_legacy_display** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_legacy_display, %struct.vmw_legacy_display* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %15
  %25 = load %struct.vmw_legacy_display*, %struct.vmw_legacy_display** %6, align 8
  %26 = getelementptr inbounds %struct.vmw_legacy_display, %struct.vmw_legacy_display* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.vmw_legacy_display*, %struct.vmw_legacy_display** %6, align 8
  %33 = getelementptr inbounds %struct.vmw_legacy_display, %struct.vmw_legacy_display* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_2__*)* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load %struct.vmw_legacy_display*, %struct.vmw_legacy_display** %6, align 8
  %40 = getelementptr inbounds %struct.vmw_legacy_display, %struct.vmw_legacy_display* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %42, align 8
  %44 = load %struct.vmw_legacy_display*, %struct.vmw_legacy_display** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_legacy_display, %struct.vmw_legacy_display* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 %43(%struct.TYPE_2__* %46)
  br label %48

48:                                               ; preds = %38, %24
  %49 = load %struct.vmw_legacy_display*, %struct.vmw_legacy_display** %6, align 8
  %50 = getelementptr inbounds %struct.vmw_legacy_display, %struct.vmw_legacy_display* %49, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  br label %51

51:                                               ; preds = %48, %15
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
