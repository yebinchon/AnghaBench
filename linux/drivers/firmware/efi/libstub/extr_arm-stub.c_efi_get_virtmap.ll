; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm-stub.c_efi_get_virtmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm-stub.c_efi_get_virtmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@virtmap_base = common dso_local global i32 0, align 4
@CONFIG_ARM64 = common dso_local global i32 0, align 4
@cmp_mem_desc = common dso_local global i32 0, align 4
@EFI_MEMORY_RUNTIME = common dso_local global i32 0, align 4
@EFI_PAGE_SIZE = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efi_get_virtmap(%struct.TYPE_11__* %0, i64 %1, i64 %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @virtmap_base, align 4
  store i32 %18, i32* %11, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %14, align 8
  %20 = load i32, i32* @CONFIG_ARM64, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = udiv i64 %25, %26
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @cmp_mem_desc, align 4
  %30 = call i32 @sort(%struct.TYPE_11__* %24, i64 %27, i64 %28, i32 %29, i32* null)
  br label %31

31:                                               ; preds = %23, %5
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %139, %31
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %146

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = bitcast %struct.TYPE_11__* %38 to i8*
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = bitcast i8* %42 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %12, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EFI_MEMORY_RUNTIME, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  br label %139

51:                                               ; preds = %37
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EFI_PAGE_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %17, align 4
  %60 = call i64 (...) @novamap()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %139

68:                                               ; preds = %51
  %69 = load i32, i32* @CONFIG_ARM64, align 4
  %70 = call i64 @IS_ENABLED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = call i32 @regions_are_adjacent(%struct.TYPE_11__* %73, %struct.TYPE_11__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72, %68
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = call i32 @regions_have_compatible_memory_type_attrs(%struct.TYPE_11__* %78, %struct.TYPE_11__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %114, label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SZ_64K, align 4
  %87 = call i32 @round_down(i32 %85, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %17, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SZ_2M, align 4
  %99 = call i64 @IS_ALIGNED(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %82
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @SZ_2M, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @SZ_2M, align 4
  %108 = call i32 @round_up(i32 %106, i32 %107)
  store i32 %108, i32* %11, align 4
  br label %113

109:                                              ; preds = %101, %82
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @SZ_64K, align 4
  %112 = call i32 @round_up(i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %77
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %11, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @memcpy(%struct.TYPE_11__* %127, %struct.TYPE_11__* %128, i64 %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %132 = bitcast %struct.TYPE_11__* %131 to i8*
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr i8, i8* %132, i64 %133
  %135 = bitcast i8* %134 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %14, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %114, %62, %50
  %140 = load i64, i64* %8, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %15, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %13, align 8
  br label %32

146:                                              ; preds = %32
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @sort(%struct.TYPE_11__*, i64, i64, i32, i32*) #1

declare dso_local i64 @novamap(...) #1

declare dso_local i32 @regions_are_adjacent(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @regions_have_compatible_memory_type_attrs(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
