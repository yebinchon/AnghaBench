; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_do_hydration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_do_hydration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.batch_info = type { i64, i32* }

@CM_READ_ONLY = common dso_local global i64 0, align 8
@DM_CLONE_HYDRATION_SUSPENDED = common dso_local global i32 0, align 4
@DM_CLONE_HYDRATION_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*)* @do_hydration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hydration(%struct.clone* %0) #0 {
  %2 = alloca %struct.clone*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.batch_info, align 8
  store %struct.clone* %0, %struct.clone** %2, align 8
  %7 = load %struct.clone*, %struct.clone** %2, align 8
  %8 = getelementptr inbounds %struct.clone, %struct.clone* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = bitcast %struct.batch_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.clone*, %struct.clone** %2, align 8
  %12 = call i64 @get_clone_mode(%struct.clone* %11)
  %13 = load i64, i64* @CM_READ_ONLY, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %108

19:                                               ; preds = %1
  %20 = load %struct.clone*, %struct.clone** %2, align 8
  %21 = getelementptr inbounds %struct.clone, %struct.clone* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @dm_clone_is_hydration_done(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %108

26:                                               ; preds = %19
  %27 = load %struct.clone*, %struct.clone** %2, align 8
  %28 = getelementptr inbounds %struct.clone, %struct.clone* %27, i32 0, i32 2
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = call i32 (...) @smp_mb__after_atomic()
  %31 = load %struct.clone*, %struct.clone** %2, align 8
  %32 = getelementptr inbounds %struct.clone, %struct.clone* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %78, %26
  %35 = load i32, i32* @DM_CLONE_HYDRATION_SUSPENDED, align 4
  %36 = load %struct.clone*, %struct.clone** %2, align 8
  %37 = getelementptr inbounds %struct.clone, %struct.clone* %36, i32 0, i32 4
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %34
  %45 = load %struct.clone*, %struct.clone** %2, align 8
  %46 = getelementptr inbounds %struct.clone, %struct.clone* %45, i32 0, i32 5
  %47 = call i32 @atomic_read(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @DM_CLONE_HYDRATION_ENABLED, align 4
  %51 = load %struct.clone*, %struct.clone** %2, align 8
  %52 = getelementptr inbounds %struct.clone, %struct.clone* %51, i32 0, i32 4
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ult i64 %56, %57
  br label %59

59:                                               ; preds = %55, %49, %44, %34
  %60 = phi i1 [ false, %49 ], [ false, %44 ], [ false, %34 ], [ %58, %55 ]
  br i1 %60, label %61, label %82

61:                                               ; preds = %59
  %62 = load %struct.clone*, %struct.clone** %2, align 8
  %63 = getelementptr inbounds %struct.clone, %struct.clone* %62, i32 0, i32 2
  %64 = call i32 @atomic_read(i32* %63)
  store i32 %64, i32* %3, align 4
  %65 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.clone*, %struct.clone** %2, align 8
  %73 = getelementptr inbounds %struct.clone, %struct.clone* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @READ_ONCE(i32 %74)
  %76 = icmp ugt i32 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  br label %82

78:                                               ; preds = %61
  %79 = load %struct.clone*, %struct.clone** %2, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @__start_next_hydration(%struct.clone* %79, i64 %80, %struct.batch_info* %6)
  store i64 %81, i64* %4, align 8
  br label %34

82:                                               ; preds = %77, %59
  %83 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %6, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %6, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds %struct.batch_info, %struct.batch_info* %6, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @hydration_copy(i32* %88, i64 %90)
  br label %92

92:                                               ; preds = %86, %82
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i64 0, i64* %4, align 8
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i64, i64* %4, align 8
  %99 = load %struct.clone*, %struct.clone** %2, align 8
  %100 = getelementptr inbounds %struct.clone, %struct.clone* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.clone*, %struct.clone** %2, align 8
  %102 = getelementptr inbounds %struct.clone, %struct.clone* %101, i32 0, i32 2
  %103 = call i64 @atomic_dec_and_test(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.clone*, %struct.clone** %2, align 8
  %107 = call i32 @wakeup_hydration_waiters(%struct.clone* %106)
  br label %108

108:                                              ; preds = %18, %25, %105, %97
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @get_clone_mode(%struct.clone*) #2

declare dso_local i64 @dm_clone_is_hydration_done(i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @smp_mb__after_atomic(...) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @READ_ONCE(i32) #2

declare dso_local i64 @__start_next_hydration(%struct.clone*, i64, %struct.batch_info*) #2

declare dso_local i32 @hydration_copy(i32*, i64) #2

declare dso_local i64 @atomic_dec_and_test(i32*) #2

declare dso_local i32 @wakeup_hydration_waiters(%struct.clone*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
