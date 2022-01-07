; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_append_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_append_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_hash_request_ctx = type { i64, i64, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_hash_request_ctx*)* @stm32_hash_append_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_hash_append_sg(%struct.stm32_hash_request_ctx* %0) #0 {
  %2 = alloca %struct.stm32_hash_request_ctx*, align 8
  %3 = alloca i64, align 8
  store %struct.stm32_hash_request_ctx* %0, %struct.stm32_hash_request_ctx** %2, align 8
  br label %4

4:                                                ; preds = %125, %57, %1
  %5 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i1 [ false, %4 ], [ %16, %12 ]
  br i1 %18, label %19, label %126

19:                                               ; preds = %17
  %20 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @min(i64 %28, i64 %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i64 @min(i64 %33, i64 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp ule i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %19
  %45 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %52, i32 0, i32 5
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @sg_is_last(%struct.TYPE_4__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i8* @sg_next(%struct.TYPE_4__* %60)
  %62 = bitcast i8* %61 to %struct.TYPE_4__*
  %63 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %63, i32 0, i32 5
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %64, align 8
  br label %4

65:                                               ; preds = %51, %44
  br label %126

66:                                               ; preds = %19
  %67 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %75 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @scatterwalk_map_and_copy(i64 %73, %struct.TYPE_4__* %76, i64 %79, i64 %80, i32 0)
  %82 = load i64, i64* %3, align 8
  %83 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %84 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* %3, align 8
  %88 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %89 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %98 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %101 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %100, i32 0, i32 5
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %66
  %107 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %108 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %107, i32 0, i32 5
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = call i8* @sg_next(%struct.TYPE_4__* %109)
  %111 = bitcast i8* %110 to %struct.TYPE_4__*
  %112 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %113 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %112, i32 0, i32 5
  store %struct.TYPE_4__* %111, %struct.TYPE_4__** %113, align 8
  %114 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %115 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %114, i32 0, i32 5
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = icmp ne %struct.TYPE_4__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %106
  %119 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %120 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  br label %124

121:                                              ; preds = %106
  %122 = load %struct.stm32_hash_request_ctx*, %struct.stm32_hash_request_ctx** %2, align 8
  %123 = getelementptr inbounds %struct.stm32_hash_request_ctx, %struct.stm32_hash_request_ctx* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %66
  br label %4

126:                                              ; preds = %65, %17
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @sg_is_last(%struct.TYPE_4__*) #1

declare dso_local i8* @sg_next(%struct.TYPE_4__*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i64, %struct.TYPE_4__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
