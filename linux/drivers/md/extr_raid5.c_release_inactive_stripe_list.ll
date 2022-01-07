; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_release_inactive_stripe_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_release_inactive_stripe_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.TYPE_2__*, i64, i32, i32, i32, i64, %struct.list_head*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@NR_STRIPE_HASH_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.list_head*, i32)* @release_inactive_stripe_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_inactive_stripe_list(%struct.r5conf* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.list_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NR_STRIPE_HASH_LOCKS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @NR_STRIPE_HASH_LOCKS, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @NR_STRIPE_HASH_LOCKS, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %19

18:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %14
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %20
  %24 = load %struct.list_head*, %struct.list_head** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i64 %27
  store %struct.list_head* %28, %struct.list_head** %10, align 8
  %29 = load %struct.list_head*, %struct.list_head** %10, align 8
  %30 = call i32 @list_empty_careful(%struct.list_head* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %23
  %33 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %34 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_lock_irqsave(i64 %38, i64 %39)
  %41 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %42 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %41, i32 0, i32 6
  %43 = load %struct.list_head*, %struct.list_head** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i64 %45
  %47 = call i64 @list_empty(%struct.list_head* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %32
  %50 = load %struct.list_head*, %struct.list_head** %10, align 8
  %51 = call i64 @list_empty(%struct.list_head* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 7
  %56 = call i32 @atomic_dec(i32* %55)
  br label %57

57:                                               ; preds = %53, %49, %32
  %58 = load %struct.list_head*, %struct.list_head** %10, align 8
  %59 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %60 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %59, i32 0, i32 6
  %61 = load %struct.list_head*, %struct.list_head** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.list_head, %struct.list_head* %61, i64 %63
  %65 = call i32 @list_splice_tail_init(%struct.list_head* %58, %struct.list_head* %64)
  store i32 1, i32* %8, align 4
  %66 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %67 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_unlock_irqrestore(i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %57, %23
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %6, align 4
  br label %20

79:                                               ; preds = %20
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %84 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %83, i32 0, i32 4
  %85 = call i32 @wake_up(i32* %84)
  %86 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %87 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %86, i32 0, i32 3
  %88 = call i64 @atomic_read(i32* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %92 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %91, i32 0, i32 2
  %93 = call i32 @wake_up(i32* %92)
  br label %94

94:                                               ; preds = %90, %82
  %95 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %96 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %101 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @md_wakeup_thread(i32 %104)
  br label %106

106:                                              ; preds = %99, %94
  br label %107

107:                                              ; preds = %106, %79
  ret void
}

declare dso_local i32 @list_empty_careful(%struct.list_head*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_splice_tail_init(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
