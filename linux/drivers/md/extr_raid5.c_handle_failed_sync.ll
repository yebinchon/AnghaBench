; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_failed_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_failed_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.stripe_head = type { i64, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.stripe_head_state = type { i64, i64 }
%struct.md_rdev = type { i32 }

@STRIPE_SYNCING = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*)* @handle_failed_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_failed_sync(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2) #0 {
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.stripe_head_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %11 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* @STRIPE_SYNCING, align 4
  %15 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %16 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %15, i32 0, i32 3
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @R5_Overlap, align 4
  %19 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %23 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i64 @test_and_clear_bit(i32 %18, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 4
  %32 = call i32 @wake_up(i32* %31)
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.stripe_head_state*, %struct.stripe_head_state** %6, align 8
  %35 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.stripe_head_state*, %struct.stripe_head_state** %6, align 8
  %37 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %39 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = call i64 @test_bit(i32 %38, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %136

45:                                               ; preds = %33
  %46 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %120, %45
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %123

53:                                               ; preds = %47
  %54 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.md_rdev* @rcu_dereference(i32 %61)
  store %struct.md_rdev* %62, %struct.md_rdev** %9, align 8
  %63 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %64 = icmp ne %struct.md_rdev* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %53
  %66 = load i32, i32* @Faulty, align 4
  %67 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 0
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @In_sync, align 4
  %73 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %74 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %73, i32 0, i32 0
  %75 = call i64 @test_bit(i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %79 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %80 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @STRIPE_SECTORS, align 4
  %83 = call i32 @rdev_set_badblocks(%struct.md_rdev* %78, i32 %81, i32 %82, i32 0)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %77, %71, %65, %53
  %87 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %88 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.md_rdev* @rcu_dereference(i32 %94)
  store %struct.md_rdev* %95, %struct.md_rdev** %9, align 8
  %96 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %97 = icmp ne %struct.md_rdev* %96, null
  br i1 %97, label %98, label %119

98:                                               ; preds = %86
  %99 = load i32, i32* @Faulty, align 4
  %100 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %101 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %100, i32 0, i32 0
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @In_sync, align 4
  %106 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %107 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %106, i32 0, i32 0
  %108 = call i64 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %104
  %111 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %112 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %113 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @STRIPE_SECTORS, align 4
  %116 = call i32 @rdev_set_badblocks(%struct.md_rdev* %111, i32 %114, i32 %115, i32 0)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %110, %104, %98, %86
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %47

123:                                              ; preds = %47
  %124 = call i32 (...) @rcu_read_unlock()
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %129 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %134 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %127, %123
  br label %136

136:                                              ; preds = %135, %33
  %137 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %138 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* @STRIPE_SECTORS, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @md_done_sync(%struct.TYPE_6__* %139, i32 %140, i32 %144)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @md_done_sync(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
