; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_mode_obj_find_prop_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_mode_obj_find_prop_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.drm_mode_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.drm_property** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property* @drm_mode_obj_find_prop_id(%struct.drm_mode_object* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_property*, align 8
  %4 = alloca %struct.drm_mode_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %10 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %7
  %16 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %17 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.drm_property**, %struct.drm_property*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.drm_property*, %struct.drm_property** %20, i64 %22
  %24 = load %struct.drm_property*, %struct.drm_property** %23, align 8
  %25 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %15
  %31 = load %struct.drm_mode_object*, %struct.drm_mode_object** %4, align 8
  %32 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.drm_property**, %struct.drm_property*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.drm_property*, %struct.drm_property** %35, i64 %37
  %39 = load %struct.drm_property*, %struct.drm_property** %38, align 8
  store %struct.drm_property* %39, %struct.drm_property** %3, align 8
  br label %45

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %7

44:                                               ; preds = %7
  store %struct.drm_property* null, %struct.drm_property** %3, align 8
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.drm_property*, %struct.drm_property** %3, align 8
  ret %struct.drm_property* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
