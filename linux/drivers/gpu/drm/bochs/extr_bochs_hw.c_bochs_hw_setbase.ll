; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_setbase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_setbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bochs_device = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"x %d, y %d, addr %llx -> offset %lx, vx %d, vy %d\0A\00", align 1
@VBE_DISPI_INDEX_VIRT_WIDTH = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_X_OFFSET = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_Y_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bochs_hw_setbase(%struct.bochs_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.bochs_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bochs_device* %0, %struct.bochs_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %17 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %21 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 %18, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %28 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 8
  %31 = mul nsw i32 %26, %30
  %32 = sext i32 %31 to i64
  %33 = add i64 %25, %32
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %36 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %34, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %43 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = urem i64 %41, %45
  %47 = mul i64 %46, 8
  %48 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %49 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %47, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %54, 8
  %56 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %57 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %55, %58
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i64 %62, i64 %63, i32 %64, i32 %65)
  %67 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %68 = load i32, i32* @VBE_DISPI_INDEX_VIRT_WIDTH, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @bochs_dispi_write(%struct.bochs_device* %67, i32 %68, i32 %69)
  %71 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %72 = load i32, i32* @VBE_DISPI_INDEX_X_OFFSET, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @bochs_dispi_write(%struct.bochs_device* %71, i32 %72, i32 %73)
  %75 = load %struct.bochs_device*, %struct.bochs_device** %6, align 8
  %76 = load i32, i32* @VBE_DISPI_INDEX_Y_OFFSET, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @bochs_dispi_write(%struct.bochs_device* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @bochs_dispi_write(%struct.bochs_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
