; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_kms.c_setup_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_kms.c_setup_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.qxl_memslot = type { i32, i8*, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [60 x i8] c"slot %d (%s): base 0x%08lx, size 0x%08lx, gpu_offset 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qxl_device*, %struct.qxl_memslot*, i32, i8*, i64, i64)* @setup_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_slot(%struct.qxl_device* %0, %struct.qxl_memslot* %1, i32 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.qxl_device*, align 8
  %8 = alloca %struct.qxl_memslot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %7, align 8
  store %struct.qxl_memslot* %1, %struct.qxl_memslot** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %16 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %19 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %22 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %25 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %27 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %28 = call i32 @setup_hw_slot(%struct.qxl_device* %26, %struct.qxl_memslot* %27)
  %29 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %30 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %35 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %37 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %42 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %40, %43
  %45 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %46 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %44, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %52 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %57 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %62 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  %67 = sub nsw i32 64, %66
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %72 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %74 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %77 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %80 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %83 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.qxl_memslot*, %struct.qxl_memslot** %8, align 8
  %86 = getelementptr inbounds %struct.qxl_memslot, %struct.qxl_memslot* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @DRM_INFO(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %78, i64 %81, i64 %84, i64 %87)
  ret void
}

declare dso_local i32 @setup_hw_slot(%struct.qxl_device*, %struct.qxl_memslot*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
