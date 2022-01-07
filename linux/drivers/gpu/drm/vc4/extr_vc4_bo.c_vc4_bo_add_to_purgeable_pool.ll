; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_add_to_purgeable_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_add_to_purgeable_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_bo = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.vc4_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_bo_add_to_purgeable_pool(%struct.vc4_bo* %0) #0 {
  %2 = alloca %struct.vc4_bo*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  store %struct.vc4_bo* %0, %struct.vc4_bo** %2, align 8
  %4 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %5 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.vc4_dev* @to_vc4_dev(i32 %8)
  store %struct.vc4_dev* %9, %struct.vc4_dev** %3, align 8
  %10 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %11 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %15 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %14, i32 0, i32 1
  %16 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = call i32 @list_add_tail(i32* %15, i32* %18)
  %20 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %21 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.vc4_bo*, %struct.vc4_bo** %2, align 8
  %26 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %31 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %29
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %38 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
