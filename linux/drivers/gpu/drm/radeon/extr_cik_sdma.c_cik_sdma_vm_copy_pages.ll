; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_copy_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i32*, i32 }

@SDMA_OPCODE_COPY = common dso_local global i32 0, align 4
@SDMA_WRITE_SUB_OPCODE_LINEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_sdma_vm_copy_pages(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4) #0 {
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
  br i1 %14, label %15, label %111

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = mul i32 %16, 8
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ugt i32 %18, 2097144
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 2097144, i32* %11, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* @SDMA_OPCODE_COPY, align 4
  %23 = load i32, i32* @SDMA_WRITE_SUB_OPCODE_LINEAR, align 4
  %24 = call i32 @SDMA_PACKET(i32 %22, i32 %23, i32 0)
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
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %36 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %39 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %34, i32* %43, align 4
  %44 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %45 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @lower_32_bits(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %60 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 %55, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @upper_32_bits(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %69 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %72 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 %67, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i8* @lower_32_bits(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %81 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %84 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  store i32 %79, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @upper_32_bits(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %93 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.radeon_ib*, %struct.radeon_ib** %7, align 8
  %96 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  store i32 %91, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = udiv i32 %107, 8
  %109 = load i32, i32* %10, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %12

111:                                              ; preds = %12
  ret void
}

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
