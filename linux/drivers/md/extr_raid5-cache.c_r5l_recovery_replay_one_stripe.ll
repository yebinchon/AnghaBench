; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_replay_one_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_replay_one_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.stripe_head = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.r5l_recovery_ctx = type { i32 }
%struct.md_rdev = type { i32, i32 }

@R5_Wantwrite = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, %struct.r5l_recovery_ctx*)* @r5l_recovery_replay_one_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_recovery_replay_one_stripe(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.r5l_recovery_ctx* %2) #0 {
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.r5l_recovery_ctx*, align 8
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  store %struct.r5l_recovery_ctx* %2, %struct.r5l_recovery_ctx** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %45, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %14 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load i32, i32* @R5_Wantwrite, align 4
  %19 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %18, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %45

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %32 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %38 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %41, %28
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %158

52:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %150, %52
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %56 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %153

59:                                               ; preds = %53
  %60 = load i32, i32* @R5_Wantwrite, align 4
  %61 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %62 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = call i32 @test_bit(i32 %60, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %59
  br label %150

71:                                               ; preds = %59
  %72 = call i32 (...) @rcu_read_lock()
  %73 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %74 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.md_rdev* @rcu_dereference(i32 %80)
  store %struct.md_rdev* %81, %struct.md_rdev** %7, align 8
  %82 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %83 = icmp ne %struct.md_rdev* %82, null
  br i1 %83, label %84, label %110

84:                                               ; preds = %71
  %85 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %86 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %85, i32 0, i32 1
  %87 = call i32 @atomic_inc(i32* %86)
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %90 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %91 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %95 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @REQ_OP_WRITE, align 4
  %103 = call i32 @sync_page_io(%struct.md_rdev* %89, i32 %92, i32 %93, i32 %101, i32 %102, i32 0, i32 0)
  %104 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %105 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %106 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @rdev_dec_pending(%struct.md_rdev* %104, i32 %107)
  %109 = call i32 (...) @rcu_read_lock()
  br label %110

110:                                              ; preds = %84, %71
  %111 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %112 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.md_rdev* @rcu_dereference(i32 %118)
  store %struct.md_rdev* %119, %struct.md_rdev** %8, align 8
  %120 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %121 = icmp ne %struct.md_rdev* %120, null
  br i1 %121, label %122, label %148

122:                                              ; preds = %110
  %123 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %124 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %123, i32 0, i32 1
  %125 = call i32 @atomic_inc(i32* %124)
  %126 = call i32 (...) @rcu_read_unlock()
  %127 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %128 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %129 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %133 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @REQ_OP_WRITE, align 4
  %141 = call i32 @sync_page_io(%struct.md_rdev* %127, i32 %130, i32 %131, i32 %139, i32 %140, i32 0, i32 0)
  %142 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %143 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %144 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @rdev_dec_pending(%struct.md_rdev* %142, i32 %145)
  %147 = call i32 (...) @rcu_read_lock()
  br label %148

148:                                              ; preds = %122, %110
  %149 = call i32 (...) @rcu_read_unlock()
  br label %150

150:                                              ; preds = %148, %70
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %53

153:                                              ; preds = %53
  %154 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %6, align 8
  %155 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %51
  %159 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %160 = call i32 @r5l_recovery_reset_stripe(%struct.stripe_head* %159)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sync_page_io(%struct.md_rdev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

declare dso_local i32 @r5l_recovery_reset_stripe(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
