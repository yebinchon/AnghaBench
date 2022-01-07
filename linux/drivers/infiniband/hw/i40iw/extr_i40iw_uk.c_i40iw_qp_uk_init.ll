; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_uk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_qp_uk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40iw_qp_uk_init_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@I40IW_MAX_WQ_FRAGMENT_COUNT = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_FRAG_COUNT = common dso_local global i32 0, align 4
@I40IW_MAX_RQ_WQE_SHIFT = common dso_local global i32 0, align 4
@iw_qp_uk_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_qp_uk_init(%struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk_init_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_qp_uk*, align 8
  %5 = alloca %struct.i40iw_qp_uk_init_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %4, align 8
  store %struct.i40iw_qp_uk_init_info* %1, %struct.i40iw_qp_uk_init_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %11 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I40IW_MAX_WQ_FRAGMENT_COUNT, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @I40IW_ERR_INVALID_FRAG_COUNT, align 4
  store i32 %16, i32* %3, align 4
  br label %171

17:                                               ; preds = %2
  %18 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %19 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I40IW_MAX_WQ_FRAGMENT_COUNT, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @I40IW_ERR_INVALID_FRAG_COUNT, align 4
  store i32 %24, i32* %3, align 4
  br label %171

25:                                               ; preds = %17
  %26 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %27 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %30 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @i40iw_get_wqe_shift(i64 %28, i32 %31, i32* %8)
  %33 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %34 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %37 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %36, i32 0, i32 23
  store i32 %35, i32* %37, align 8
  %38 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %39 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %41, i32 0, i32 22
  store i32 %40, i32* %42, align 4
  %43 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %44 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %47 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %46, i32 0, i32 21
  store i32 %45, i32* %47, align 8
  %48 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %49 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %52 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %51, i32 0, i32 20
  store i32 %50, i32* %52, align 4
  %53 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %54 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %57 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %56, i32 0, i32 19
  store i32 %55, i32* %57, align 8
  %58 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %59 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %62 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %61, i32 0, i32 18
  store i32 %60, i32* %62, align 4
  %63 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %64 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %67 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %66, i32 0, i32 17
  store i32 %65, i32* %67, align 8
  %68 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %69 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %72 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %74 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %77 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %76, i32 0, i32 16
  store i32 %75, i32* %77, align 4
  %78 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %79 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %82 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %81, i32 0, i32 15
  store i32 %80, i32* %82, align 8
  %83 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %84 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %87 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %89 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 %90, %91
  store i32 %92, i32* %7, align 4
  %93 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %94 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %93, i32 0, i32 14
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @I40IW_RING_INIT(i32 %95, i32 %96)
  %98 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %99 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @I40IW_RING_INIT(i32 %100, i32 %101)
  %103 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %104 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %103, i32 0, i32 14
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @I40IW_RING_MOVE_HEAD(i32 %105, i32 %106)
  %108 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %109 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @I40IW_RING_MOVE_TAIL(i32 %110)
  %112 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %113 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %112, i32 0, i32 13
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @I40IW_RING_MOVE_HEAD(i32 %114, i32 %115)
  %117 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %118 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %120 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  %121 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %122 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %121, i32 0, i32 4
  store i32 1, i32* %122, align 8
  %123 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %124 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %123, i32 0, i32 12
  store i64 0, i64* %124, align 8
  %125 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %126 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %166, label %129

129:                                              ; preds = %25
  %130 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %131 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %134 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %136 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %139 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %138, i32 0, i32 6
  store i64 %137, i64* %139, align 8
  %140 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %141 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %144 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @I40IW_RING_INIT(i32 %142, i32 %145)
  %147 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %148 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %156 [
    i32 4, label %150
    i32 5, label %155
  ]

150:                                              ; preds = %129
  %151 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %5, align 8
  %152 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @i40iw_get_wqe_shift(i64 %153, i32 0, i32* %9)
  br label %158

155:                                              ; preds = %129
  br label %156

156:                                              ; preds = %129, %155
  %157 = load i32, i32* @I40IW_MAX_RQ_WQE_SHIFT, align 4
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %156, %150
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %161 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %9, align 4
  %163 = shl i32 4, %162
  %164 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %165 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %158, %25
  %167 = load i32, i32* @iw_qp_uk_ops, align 4
  %168 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %4, align 8
  %169 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %166, %23, %15
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @i40iw_get_wqe_shift(i64, i32, i32*) #1

declare dso_local i32 @I40IW_RING_INIT(i32, i32) #1

declare dso_local i32 @I40IW_RING_MOVE_HEAD(i32, i32) #1

declare dso_local i32 @I40IW_RING_MOVE_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
