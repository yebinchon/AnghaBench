; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_bulk_move_lru_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_bulk_move_lru_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lru_bulk_move = type { %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos* }
%struct.ttm_lru_bulk_move_pos = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.ttm_mem_type_manager* }
%struct.TYPE_9__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.ttm_mem_type_manager = type { %struct.list_head* }
%struct.TYPE_7__ = type { i32 }

@TTM_MAX_BO_PRIORITY = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i64 0, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_bo_bulk_move_lru_tail(%struct.ttm_lru_bulk_move* %0) #0 {
  %2 = alloca %struct.ttm_lru_bulk_move*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_lru_bulk_move_pos*, align 8
  %5 = alloca %struct.ttm_mem_type_manager*, align 8
  %6 = alloca %struct.ttm_lru_bulk_move_pos*, align 8
  %7 = alloca %struct.ttm_mem_type_manager*, align 8
  %8 = alloca %struct.ttm_lru_bulk_move_pos*, align 8
  %9 = alloca %struct.list_head*, align 8
  store %struct.ttm_lru_bulk_move* %0, %struct.ttm_lru_bulk_move** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %65, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %10
  %15 = load %struct.ttm_lru_bulk_move*, %struct.ttm_lru_bulk_move** %2, align 8
  %16 = getelementptr inbounds %struct.ttm_lru_bulk_move, %struct.ttm_lru_bulk_move* %15, i32 0, i32 2
  %17 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %17, i64 %19
  store %struct.ttm_lru_bulk_move_pos* %20, %struct.ttm_lru_bulk_move_pos** %4, align 8
  %21 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %4, align 8
  %22 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %65

26:                                               ; preds = %14
  %27 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %4, align 8
  %28 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_resv_assert_held(i32 %32)
  %34 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %4, align 8
  %35 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dma_resv_assert_held(i32 %39)
  %41 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %4, align 8
  %42 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %46, align 8
  %48 = load i64, i64* @TTM_PL_TT, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %47, i64 %48
  store %struct.ttm_mem_type_manager* %49, %struct.ttm_mem_type_manager** %5, align 8
  %50 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %51 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %50, i32 0, i32 0
  %52 = load %struct.list_head*, %struct.list_head** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i64 %54
  %56 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %4, align 8
  %57 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %4, align 8
  %61 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = call i32 @list_bulk_move_tail(%struct.list_head* %55, i32* %59, i32* %63)
  br label %65

65:                                               ; preds = %26, %25
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %10

68:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %124, %68
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %69
  %74 = load %struct.ttm_lru_bulk_move*, %struct.ttm_lru_bulk_move** %2, align 8
  %75 = getelementptr inbounds %struct.ttm_lru_bulk_move, %struct.ttm_lru_bulk_move* %74, i32 0, i32 1
  %76 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %76, i64 %78
  store %struct.ttm_lru_bulk_move_pos* %79, %struct.ttm_lru_bulk_move_pos** %6, align 8
  %80 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %6, align 8
  %81 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  br label %124

85:                                               ; preds = %73
  %86 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %6, align 8
  %87 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dma_resv_assert_held(i32 %91)
  %93 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %6, align 8
  %94 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dma_resv_assert_held(i32 %98)
  %100 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %6, align 8
  %101 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %100, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %105, align 8
  %107 = load i64, i64* @TTM_PL_VRAM, align 8
  %108 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %106, i64 %107
  store %struct.ttm_mem_type_manager* %108, %struct.ttm_mem_type_manager** %7, align 8
  %109 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %110 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %109, i32 0, i32 0
  %111 = load %struct.list_head*, %struct.list_head** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.list_head, %struct.list_head* %111, i64 %113
  %115 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %6, align 8
  %116 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %6, align 8
  %120 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = call i32 @list_bulk_move_tail(%struct.list_head* %114, i32* %118, i32* %122)
  br label %124

124:                                              ; preds = %85, %84
  %125 = load i32, i32* %3, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %69

127:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %181, %127
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @TTM_MAX_BO_PRIORITY, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %184

132:                                              ; preds = %128
  %133 = load %struct.ttm_lru_bulk_move*, %struct.ttm_lru_bulk_move** %2, align 8
  %134 = getelementptr inbounds %struct.ttm_lru_bulk_move, %struct.ttm_lru_bulk_move* %133, i32 0, i32 0
  %135 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %135, i64 %137
  store %struct.ttm_lru_bulk_move_pos* %138, %struct.ttm_lru_bulk_move_pos** %8, align 8
  %139 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %8, align 8
  %140 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %132
  br label %181

144:                                              ; preds = %132
  %145 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %8, align 8
  %146 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %145, i32 0, i32 1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @dma_resv_assert_held(i32 %150)
  %152 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %8, align 8
  %153 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %152, i32 0, i32 0
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dma_resv_assert_held(i32 %157)
  %159 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %8, align 8
  %160 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %159, i32 0, i32 1
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load %struct.list_head*, %struct.list_head** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.list_head, %struct.list_head* %167, i64 %169
  store %struct.list_head* %170, %struct.list_head** %9, align 8
  %171 = load %struct.list_head*, %struct.list_head** %9, align 8
  %172 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %8, align 8
  %173 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %172, i32 0, i32 1
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load %struct.ttm_lru_bulk_move_pos*, %struct.ttm_lru_bulk_move_pos** %8, align 8
  %177 = getelementptr inbounds %struct.ttm_lru_bulk_move_pos, %struct.ttm_lru_bulk_move_pos* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = call i32 @list_bulk_move_tail(%struct.list_head* %171, i32* %175, i32* %179)
  br label %181

181:                                              ; preds = %144, %143
  %182 = load i32, i32* %3, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %3, align 4
  br label %128

184:                                              ; preds = %128
  ret void
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @list_bulk_move_tail(%struct.list_head*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
