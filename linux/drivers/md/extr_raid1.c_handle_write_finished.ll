; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_handle_write_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_handle_write_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, %struct.TYPE_5__*, i32, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.r1bio = type { i32, i32, i32, i32**, i32 }

@IO_MADE_GOOD = common dso_local global i32* null, align 8
@R1BIO_Degraded = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, %struct.r1bio*)* @handle_write_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_write_finished(%struct.r1conf* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.md_rdev*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %94, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %12 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 2
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %9
  %17 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %18 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** @IO_MADE_GOOD, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %16
  %27 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %28 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %27, i32 0, i32 6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.md_rdev*, %struct.md_rdev** %33, align 8
  store %struct.md_rdev* %34, %struct.md_rdev** %8, align 8
  %35 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %36 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %37 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %40 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %35, i32 %38, i32 %41, i32 0)
  %43 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %44 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %45 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @rdev_dec_pending(%struct.md_rdev* %43, %struct.TYPE_5__* %46)
  br label %93

48:                                               ; preds = %16
  %49 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %50 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  %58 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @narrow_write_error(%struct.r1bio* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  %63 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %64 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %67 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %66, i32 0, i32 6
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.md_rdev*, %struct.md_rdev** %72, align 8
  %74 = call i32 @md_error(%struct.TYPE_5__* %65, %struct.md_rdev* %73)
  %75 = load i32, i32* @R1BIO_Degraded, align 4
  %76 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %77 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %62, %57
  %80 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %81 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %80, i32 0, i32 6
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.md_rdev*, %struct.md_rdev** %86, align 8
  %88 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %89 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @rdev_dec_pending(%struct.md_rdev* %87, %struct.TYPE_5__* %90)
  br label %92

92:                                               ; preds = %79, %48
  br label %93

93:                                               ; preds = %92, %26
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %9

97:                                               ; preds = %9
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %97
  %101 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %102 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %101, i32 0, i32 3
  %103 = call i32 @spin_lock_irq(i32* %102)
  %104 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %105 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %104, i32 0, i32 2
  %106 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %107 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %106, i32 0, i32 5
  %108 = call i32 @list_add(i32* %105, i32* %107)
  %109 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %110 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sector_to_idx(i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %114 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @atomic_inc(i32* %118)
  %120 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %121 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %120, i32 0, i32 3
  %122 = call i32 @spin_unlock_irq(i32* %121)
  %123 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %124 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %123, i32 0, i32 2
  %125 = call i32 @wake_up(i32* %124)
  %126 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %127 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @md_wakeup_thread(i32 %130)
  br label %144

132:                                              ; preds = %97
  %133 = load i32, i32* @R1BIO_WriteError, align 4
  %134 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %135 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %134, i32 0, i32 0
  %136 = call i64 @test_bit(i32 %133, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %140 = call i32 @close_write(%struct.r1bio* %139)
  br label %141

141:                                              ; preds = %138, %132
  %142 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %143 = call i32 @raid_end_bio_io(%struct.r1bio* %142)
  br label %144

144:                                              ; preds = %141, %100
  ret void
}

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_5__*) #1

declare dso_local i32 @narrow_write_error(%struct.r1bio*, i32) #1

declare dso_local i32 @md_error(%struct.TYPE_5__*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sector_to_idx(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @close_write(%struct.r1bio*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r1bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
