; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_dec_usecnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_dec_usecnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_bo = type { i64, i32, i32 }

@VC4_MADV_DONTNEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_bo_dec_usecnt(%struct.vc4_bo* %0) #0 {
  %2 = alloca %struct.vc4_bo*, align 8
  store %struct.vc4_bo* %0, %struct.vc4_bo** %2, align 8
  %3 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %4 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %3, i32 0, i32 2
  %5 = call i64 @refcount_dec_not_one(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %10 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %13 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %12, i32 0, i32 2
  %14 = call i64 @refcount_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %18 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VC4_MADV_DONTNEED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %24 = call i32 @vc4_bo_add_to_purgeable_pool(%struct.vc4_bo* %23)
  br label %25

25:                                               ; preds = %22, %16, %8
  %26 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %27 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %29

29:                                               ; preds = %25, %7
  ret void
}

declare dso_local i64 @refcount_dec_not_one(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @vc4_bo_add_to_purgeable_pool(%struct.vc4_bo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
