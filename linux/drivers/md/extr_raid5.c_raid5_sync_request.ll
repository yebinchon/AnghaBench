; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_sync_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stripe_head = type { i32 }
%struct.md_rdev = type { i32 }

@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4
@STRIPE_SYNC_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i64, i32*)* @raid5_sync_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raid5_sync_request(%struct.mddev* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca %struct.stripe_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.mddev*, %struct.mddev** %5, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 5
  %18 = load %struct.r5conf*, %struct.r5conf** %17, align 8
  store %struct.r5conf* %18, %struct.r5conf** %8, align 8
  %19 = load %struct.mddev*, %struct.mddev** %5, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %3
  %26 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %27 = load %struct.mddev*, %struct.mddev** %5, align 8
  %28 = getelementptr inbounds %struct.mddev, %struct.mddev* %27, i32 0, i32 4
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %33 = call i32 @end_reshape(%struct.r5conf* %32)
  store i64 0, i64* %4, align 8
  br label %194

34:                                               ; preds = %25
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.mddev*, %struct.mddev** %5, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mddev*, %struct.mddev** %5, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @md_bitmap_end_sync(i32 %43, i64 %46, i64* %11, i32 1)
  br label %51

48:                                               ; preds = %34
  %49 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.mddev*, %struct.mddev** %5, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @md_bitmap_close_sync(i32 %54)
  store i64 0, i64* %4, align 8
  br label %194

56:                                               ; preds = %3
  %57 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %58 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %61 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 2
  %64 = zext i1 %63 to i32
  %65 = call i32 @wait_event(i32 %59, i32 %64)
  %66 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 4
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.mddev*, %struct.mddev** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @reshape_request(%struct.mddev* %72, i64 %73, i32* %74)
  store i64 %75, i64* %4, align 8
  br label %194

76:                                               ; preds = %56
  %77 = load %struct.mddev*, %struct.mddev** %5, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %81 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %86 = load %struct.mddev*, %struct.mddev** %5, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 4
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.mddev*, %struct.mddev** %5, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %14, align 8
  %96 = load i32*, i32** %7, align 8
  store i32 1, i32* %96, align 4
  %97 = load i64, i64* %14, align 8
  store i64 %97, i64* %4, align 8
  br label %194

98:                                               ; preds = %84, %76
  %99 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %100 = load %struct.mddev*, %struct.mddev** %5, align 8
  %101 = getelementptr inbounds %struct.mddev, %struct.mddev* %100, i32 0, i32 4
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %98
  %105 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %106 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %104
  %110 = load %struct.mddev*, %struct.mddev** %5, align 8
  %111 = getelementptr inbounds %struct.mddev, %struct.mddev* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @md_bitmap_start_sync(i32 %112, i64 %113, i64* %11, i32 1)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %109
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @STRIPE_SECTORS, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i64, i64* @STRIPE_SECTORS, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sdiv i64 %122, %121
  store i64 %123, i64* %11, align 8
  %124 = load i32*, i32** %7, align 8
  store i32 1, i32* %124, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* @STRIPE_SECTORS, align 8
  %127 = mul nsw i64 %125, %126
  store i64 %127, i64* %4, align 8
  br label %194

128:                                              ; preds = %116, %109, %104, %98
  %129 = load %struct.mddev*, %struct.mddev** %5, align 8
  %130 = getelementptr inbounds %struct.mddev, %struct.mddev* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @md_bitmap_cond_end_sync(i32 %131, i64 %132, i32 0)
  %134 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %134, i64 %135, i32 0, i32 1, i32 0)
  store %struct.stripe_head* %136, %struct.stripe_head** %9, align 8
  %137 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %138 = icmp eq %struct.stripe_head* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %141 = load i64, i64* %6, align 8
  %142 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %140, i64 %141, i32 0, i32 0, i32 0)
  store %struct.stripe_head* %142, %struct.stripe_head** %9, align 8
  %143 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %144

144:                                              ; preds = %139, %128
  %145 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %172, %144
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %149 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %175

152:                                              ; preds = %146
  %153 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %154 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call %struct.md_rdev* @READ_ONCE(i32 %160)
  store %struct.md_rdev* %161, %struct.md_rdev** %15, align 8
  %162 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %163 = icmp eq %struct.md_rdev* %162, null
  br i1 %163, label %170, label %164

164:                                              ; preds = %152
  %165 = load i32, i32* @Faulty, align 4
  %166 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  %167 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %166, i32 0, i32 0
  %168 = call i64 @test_bit(i32 %165, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164, %152
  store i32 1, i32* %12, align 4
  br label %171

171:                                              ; preds = %170, %164
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %146

175:                                              ; preds = %146
  %176 = call i32 (...) @rcu_read_unlock()
  %177 = load %struct.mddev*, %struct.mddev** %5, align 8
  %178 = getelementptr inbounds %struct.mddev, %struct.mddev* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i64, i64* %6, align 8
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @md_bitmap_start_sync(i32 %179, i64 %180, i64* %11, i32 %181)
  %183 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %184 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %185 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %184, i32 0, i32 0
  %186 = call i32 @set_bit(i32 %183, i32* %185)
  %187 = load i32, i32* @STRIPE_HANDLE, align 4
  %188 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %189 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %188, i32 0, i32 0
  %190 = call i32 @set_bit(i32 %187, i32* %189)
  %191 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %192 = call i32 @raid5_release_stripe(%struct.stripe_head* %191)
  %193 = load i64, i64* @STRIPE_SECTORS, align 8
  store i64 %193, i64* %4, align 8
  br label %194

194:                                              ; preds = %175, %120, %90, %71, %51, %31
  %195 = load i64, i64* %4, align 8
  ret i64 %195
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @end_reshape(%struct.r5conf*) #1

declare dso_local i32 @md_bitmap_end_sync(i32, i64, i64*, i32) #1

declare dso_local i32 @md_bitmap_close_sync(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @reshape_request(%struct.mddev*, i64, i32*) #1

declare dso_local i32 @md_bitmap_start_sync(i32, i64, i64*, i32) #1

declare dso_local i32 @md_bitmap_cond_end_sync(i32, i64, i32) #1

declare dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf*, i64, i32, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @READ_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
