; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }
%struct.radeon_vm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.radeon_fence = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_vm_fence(%struct.radeon_device* %0, %struct.radeon_vm* %1, %struct.radeon_fence* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_vm*, align 8
  %6 = alloca %struct.radeon_fence*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %5, align 8
  store %struct.radeon_fence* %2, %struct.radeon_fence** %6, align 8
  %8 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %9 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %12 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = call i32 @radeon_fence_unref(i8** %23)
  %25 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %26 = call i8* @radeon_fence_ref(%struct.radeon_fence* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %26, i8** %33, align 8
  %34 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %38 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @radeon_fence_unref(i8** %41)
  %43 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %44 = call i8* @radeon_fence_ref(%struct.radeon_fence* %43)
  %45 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %44, i8** %52, align 8
  ret void
}

declare dso_local i32 @radeon_fence_unref(i8**) #1

declare dso_local i8* @radeon_fence_ref(%struct.radeon_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
