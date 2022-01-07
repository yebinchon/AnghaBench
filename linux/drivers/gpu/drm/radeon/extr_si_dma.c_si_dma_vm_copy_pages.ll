; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dma.c_si_dma_vm_copy_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dma.c_si_dma_vm_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i32*, i32 }

@DMA_PACKET_COPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_dma_vm_copy_pages(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %12

12:                                               ; preds = %21, %5
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %92

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = mul i32 %16, 8
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ugt i32 %18, 1048568
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1048568, i32* %11, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* @DMA_PACKET_COPY, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @DMA_PACKET(i32 %22, i32 1, i32 0, i32 0, i32 %23)
  %25 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %26 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  store i32 %24, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @lower_32_bits(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %41 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 %36, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @lower_32_bits(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %50 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %53 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32 %48, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @upper_32_bits(i32 %58)
  %60 = and i32 %59, 255
  %61 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %62 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %65 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  store i32 %60, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @upper_32_bits(i32 %70)
  %72 = and i32 %71, 255
  %73 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %74 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %77 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  store i32 %72, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = udiv i32 %88, 8
  %90 = load i32, i32* %10, align 4
  %91 = sub i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %12

92:                                               ; preds = %12
  ret void
}

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
