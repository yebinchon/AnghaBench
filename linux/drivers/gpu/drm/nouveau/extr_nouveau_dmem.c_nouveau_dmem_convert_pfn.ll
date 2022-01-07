; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_convert_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_convert_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32 }
%struct.hmm_range = type { i64, i64, i32*, i32*, i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@HMM_PFN_DEVICE_PRIVATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Some unknown device memory !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_dmem_convert_pfn(%struct.nouveau_drm* %0, %struct.hmm_range* %1) #0 {
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.hmm_range*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  store %struct.hmm_range* %1, %struct.hmm_range** %4, align 8
  %9 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %10 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %13 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %95, %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %98

22:                                               ; preds = %18
  %23 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %24 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %25 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.page* @hmm_device_entry_to_page(%struct.hmm_range* %23, i32 %29)
  store %struct.page* %30, %struct.page** %7, align 8
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = icmp eq %struct.page* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %95

34:                                               ; preds = %22
  %35 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %36 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %42 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @HMM_PFN_DEVICE_PRIVATE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %40, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %95

50:                                               ; preds = %34
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %52 = load %struct.page*, %struct.page** %7, align 8
  %53 = call i32 @nouveau_dmem_page(%struct.nouveau_drm* %51, %struct.page* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %58 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 0, i32* %61, align 4
  br label %95

62:                                               ; preds = %50
  %63 = load %struct.page*, %struct.page** %7, align 8
  %64 = call i64 @nouveau_dmem_page_addr(%struct.page* %63)
  store i64 %64, i64* %8, align 8
  %65 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %66 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = shl i64 1, %67
  %69 = sub i64 %68, 1
  %70 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %71 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, %69
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @PAGE_SHIFT, align 8
  %81 = lshr i64 %79, %80
  %82 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %83 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %81, %84
  %86 = load %struct.hmm_range*, %struct.hmm_range** %4, align 8
  %87 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = or i64 %92, %85
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %95

95:                                               ; preds = %62, %55, %49, %33
  %96 = load i64, i64* %5, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %5, align 8
  br label %18

98:                                               ; preds = %18
  ret void
}

declare dso_local %struct.page* @hmm_device_entry_to_page(%struct.hmm_range*, i32) #1

declare dso_local i32 @nouveau_dmem_page(%struct.nouveau_drm*, %struct.page*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @nouveau_dmem_page_addr(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
