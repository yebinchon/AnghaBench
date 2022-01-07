; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_put_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_put_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ras_manager = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"RAS ERROR: Unbalance obj(%s) use\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ras_manager*)* @put_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_obj(%struct.ras_manager* %0) #0 {
  %2 = alloca %struct.ras_manager*, align 8
  store %struct.ras_manager* %0, %struct.ras_manager** %2, align 8
  %3 = load %struct.ras_manager*, %struct.ras_manager** %2, align 8
  %4 = icmp ne %struct.ras_manager* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.ras_manager*, %struct.ras_manager** %2, align 8
  %7 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load %struct.ras_manager*, %struct.ras_manager** %2, align 8
  %13 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %12, i32 0, i32 2
  %14 = call i32 @list_del(i32* %13)
  br label %15

15:                                               ; preds = %11, %5, %1
  %16 = load %struct.ras_manager*, %struct.ras_manager** %2, align 8
  %17 = icmp ne %struct.ras_manager* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.ras_manager*, %struct.ras_manager** %2, align 8
  %20 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.ras_manager*, %struct.ras_manager** %2, align 8
  %25 = getelementptr inbounds %struct.ras_manager, %struct.ras_manager* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %18, %15
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
