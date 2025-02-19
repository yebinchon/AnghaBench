; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_shrink_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_shrink_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.page*, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @shrink_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_buffers(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %6 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %7 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %17 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.page*, %struct.page** %22, align 8
  %24 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.page*, %struct.page** %30, align 8
  %32 = icmp ne %struct.page* %23, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.page*, %struct.page** %41, align 8
  store %struct.page* %42, %struct.page** %3, align 8
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %15
  br label %56

46:                                               ; preds = %15
  %47 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %48 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.page* null, %struct.page** %53, align 8
  %54 = load %struct.page*, %struct.page** %3, align 8
  %55 = call i32 @put_page(%struct.page* %54)
  br label %56

56:                                               ; preds = %46, %45
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %11

59:                                               ; preds = %11
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
