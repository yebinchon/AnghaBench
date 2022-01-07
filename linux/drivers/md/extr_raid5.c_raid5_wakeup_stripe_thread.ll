; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_wakeup_stripe_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_wakeup_stripe_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.r5worker_group*, i32, %struct.r5conf* }
%struct.r5worker_group = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.r5conf = type { i32, %struct.r5worker_group*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@raid5_wq = common dso_local global i32 0, align 4
@MAX_STRIPE_BATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @raid5_wakeup_stripe_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_wakeup_stripe_thread(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.r5worker_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r5worker_group*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %9 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %10 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %9, i32 0, i32 3
  %11 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  store %struct.r5conf* %11, %struct.r5conf** %3, align 8
  %12 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %13 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cpu_online(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @cpu_online_mask, align 4
  %20 = call i32 @cpumask_any(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %23 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %26 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %25, i32 0, i32 2
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 1
  %32 = load %struct.r5worker_group*, %struct.r5worker_group** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cpu_to_group(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %32, i64 %35
  store %struct.r5worker_group* %36, %struct.r5worker_group** %8, align 8
  %37 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %38 = call i64 @stripe_is_lowprio(%struct.stripe_head* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %42 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %41, i32 0, i32 2
  %43 = load %struct.r5worker_group*, %struct.r5worker_group** %8, align 8
  %44 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %43, i32 0, i32 3
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  br label %52

46:                                               ; preds = %29
  %47 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %48 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %47, i32 0, i32 2
  %49 = load %struct.r5worker_group*, %struct.r5worker_group** %8, align 8
  %50 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %49, i32 0, i32 2
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.r5worker_group*, %struct.r5worker_group** %8, align 8
  %54 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.r5worker_group*, %struct.r5worker_group** %8, align 8
  %58 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %59 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %58, i32 0, i32 1
  store %struct.r5worker_group* %57, %struct.r5worker_group** %59, align 8
  br label %60

60:                                               ; preds = %52, %24
  %61 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %62 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %67 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @md_wakeup_thread(i32 %70)
  br label %150

72:                                               ; preds = %60
  %73 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %74 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %73, i32 0, i32 1
  %75 = load %struct.r5worker_group*, %struct.r5worker_group** %74, align 8
  %76 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %77 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cpu_to_group(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %75, i64 %80
  store %struct.r5worker_group* %81, %struct.r5worker_group** %4, align 8
  %82 = load %struct.r5worker_group*, %struct.r5worker_group** %4, align 8
  %83 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %88 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @raid5_wq, align 4
  %91 = load %struct.r5worker_group*, %struct.r5worker_group** %4, align 8
  %92 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = call i32 @queue_work_on(i32 %89, i32 %90, i32* %95)
  %97 = load %struct.r5worker_group*, %struct.r5worker_group** %4, align 8
  %98 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MAX_STRIPE_BATCH, align 4
  %101 = sdiv i32 %99, %100
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %103

103:                                              ; preds = %147, %72
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %106 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = icmp sgt i32 %110, 0
  br label %112

112:                                              ; preds = %109, %103
  %113 = phi i1 [ false, %103 ], [ %111, %109 ]
  br i1 %113, label %114, label %150

114:                                              ; preds = %112
  %115 = load %struct.r5worker_group*, %struct.r5worker_group** %4, align 8
  %116 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %114
  %125 = load %struct.r5worker_group*, %struct.r5worker_group** %4, align 8
  %126 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  %132 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %133 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @raid5_wq, align 4
  %136 = load %struct.r5worker_group*, %struct.r5worker_group** %4, align 8
  %137 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = call i32 @queue_work_on(i32 %134, i32 %135, i32* %142)
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %124, %114
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %103

150:                                              ; preds = %65, %112
  ret void
}

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @cpumask_any(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cpu_to_group(i32) #1

declare dso_local i64 @stripe_is_lowprio(%struct.stripe_head*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
