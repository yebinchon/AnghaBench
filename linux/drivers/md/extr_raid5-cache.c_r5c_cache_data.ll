; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_cache_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_cache_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i64, i32, i32, i32, i32 }
%struct.stripe_head = type { i32, i64, i32, i32, i32, %struct.TYPE_2__*, %struct.r5conf* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.r5conf = type { i32 }

@R5_Wantwrite = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@R5C_LOG_CRITICAL = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5c_cache_data(%struct.r5l_log* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %4, align 8
  %11 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %12 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %11, i32 0, i32 6
  %13 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  store %struct.r5conf* %13, %struct.r5conf** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %15 = icmp ne %struct.r5l_log* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %64, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %22 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %19
  %26 = load i32, i32* @R5_Wantwrite, align 4
  %27 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %28 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = call i64 @test_bit(i32 %26, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %64

37:                                               ; preds = %25
  %38 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %39 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @kmap_atomic(i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %48 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @crc32c_le(i32 %49, i8* %50, i32 %51)
  %53 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %54 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @kunmap_atomic(i8* %60)
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %37, %36
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %19

67:                                               ; preds = %19
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load i32, i32* @STRIPE_DELAYED, align 4
  %73 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %74 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %73, i32 0, i32 4
  %75 = call i32 @clear_bit(i32 %72, i32* %74)
  %76 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %77 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %76, i32 0, i32 3
  %78 = call i32 @atomic_inc(i32* %77)
  %79 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %80 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 1, %82
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = sub nsw i32 %84, 9
  %86 = shl i32 %83, %85
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @R5C_LOG_CRITICAL, align 4
  %88 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %89 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %67
  %93 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %94 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MaxSector, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %100 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %101 = call i32 @r5l_add_no_space_stripe(%struct.r5l_log* %99, %struct.stripe_head* %100)
  br label %143

102:                                              ; preds = %92, %67
  %103 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @r5l_has_free_space(%struct.r5l_log* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %102
  %108 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %109 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %112 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 (...) @BUG()
  br label %121

117:                                              ; preds = %107
  %118 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %119 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %120 = call i32 @r5l_add_no_space_stripe(%struct.r5l_log* %118, %struct.stripe_head* %119)
  br label %121

121:                                              ; preds = %117, %115
  br label %142

122:                                              ; preds = %102
  %123 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %124 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @r5l_log_stripe(%struct.r5l_log* %123, %struct.stripe_head* %124, i32 %125, i32 0)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %122
  %130 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %131 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %130, i32 0, i32 2
  %132 = call i32 @spin_lock_irq(i32* %131)
  %133 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %134 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %133, i32 0, i32 2
  %135 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %136 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %135, i32 0, i32 3
  %137 = call i32 @list_add_tail(i32* %134, i32* %136)
  %138 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %139 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %138, i32 0, i32 2
  %140 = call i32 @spin_unlock_irq(i32* %139)
  br label %141

141:                                              ; preds = %129, %122
  br label %142

142:                                              ; preds = %141, %121
  br label %143

143:                                              ; preds = %142, %98
  %144 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %145 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %144, i32 0, i32 1
  %146 = call i32 @mutex_unlock(i32* %145)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @crc32c_le(i32, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @r5l_add_no_space_stripe(%struct.r5l_log*, %struct.stripe_head*) #1

declare dso_local i32 @r5l_has_free_space(%struct.r5l_log*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @r5l_log_stripe(%struct.r5l_log*, %struct.stripe_head*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
