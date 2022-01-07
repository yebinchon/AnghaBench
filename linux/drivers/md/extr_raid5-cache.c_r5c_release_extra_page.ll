; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_release_extra_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_release_extra_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.TYPE_5__*, %struct.r5conf* }
%struct.TYPE_5__ = type { i32, %struct.page*, %struct.page* }
%struct.page = type { i32 }
%struct.r5conf = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.page* }

@R5_OrigPageUPTDODATE = common dso_local global i32 0, align 4
@R5C_EXTRA_PAGE_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5c_release_extra_page(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %7 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 2
  %9 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  store %struct.r5conf* %9, %struct.r5conf** %3, align 8
  %10 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %11 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.page*, %struct.page** %14, align 8
  %16 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %17 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.page*, %struct.page** %20, align 8
  %22 = icmp eq %struct.page* %15, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %88, %1
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %33 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.page*, %struct.page** %38, align 8
  %40 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %41 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load %struct.page*, %struct.page** %46, align 8
  %48 = icmp ne %struct.page* %39, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %31
  %50 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %51 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.page*, %struct.page** %56, align 8
  store %struct.page* %57, %struct.page** %6, align 8
  %58 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %59 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.page*, %struct.page** %64, align 8
  %66 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %67 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store %struct.page* %65, %struct.page** %72, align 8
  %73 = load i32, i32* @R5_OrigPageUPTDODATE, align 4
  %74 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %75 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @clear_bit(i32 %73, i32* %80)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %49
  %85 = load %struct.page*, %struct.page** %6, align 8
  %86 = call i32 @put_page(%struct.page* %85)
  br label %87

87:                                               ; preds = %84, %49
  br label %88

88:                                               ; preds = %87, %31
  br label %27

89:                                               ; preds = %27
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* @R5C_EXTRA_PAGE_IN_USE, align 4
  %94 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %95 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %94, i32 0, i32 1
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  %97 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %98 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @md_wakeup_thread(i32 %101)
  br label %103

103:                                              ; preds = %92, %89
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
