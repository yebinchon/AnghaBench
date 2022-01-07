; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_spare_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_spare_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r1conf* }
%struct.r1conf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i64, i32, i32 }

@Candidate = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid1_spare_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_spare_active(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r1conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 1
  %11 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  store %struct.r1conf* %11, %struct.r1conf** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %13 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %123, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %19 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %126

22:                                               ; preds = %16
  %23 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %24 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.md_rdev*, %struct.md_rdev** %29, align 8
  store %struct.md_rdev* %30, %struct.md_rdev** %7, align 8
  %31 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %32 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %35 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.md_rdev*, %struct.md_rdev** %41, align 8
  store %struct.md_rdev* %42, %struct.md_rdev** %8, align 8
  %43 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %44 = icmp ne %struct.md_rdev* %43, null
  br i1 %44, label %45, label %94

45:                                               ; preds = %22
  %46 = load i32, i32* @Candidate, align 4
  %47 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 2
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %94, label %51

51:                                               ; preds = %45
  %52 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %53 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MaxSector, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %51
  %58 = load i32, i32* @Faulty, align 4
  %59 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %60 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %59, i32 0, i32 2
  %61 = call i32 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @In_sync, align 4
  %65 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %66 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %65, i32 0, i32 2
  %67 = call i32 @test_and_set_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %94, label %69

69:                                               ; preds = %63
  %70 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %71 = icmp ne %struct.md_rdev* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @In_sync, align 4
  %74 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 2
  %76 = call i32 @test_and_clear_bit(i32 %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %83 = icmp ne %struct.md_rdev* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* @Faulty, align 4
  %86 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %87 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %86, i32 0, i32 2
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %90 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sysfs_notify_dirent_safe(i32 %91)
  br label %93

93:                                               ; preds = %84, %81
  br label %94

94:                                               ; preds = %93, %63, %57, %51, %45, %22
  %95 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %96 = icmp ne %struct.md_rdev* %95, null
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %99 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MaxSector, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %97
  %104 = load i32, i32* @Faulty, align 4
  %105 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %106 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %105, i32 0, i32 2
  %107 = call i32 @test_bit(i32 %104, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @In_sync, align 4
  %111 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %112 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %111, i32 0, i32 2
  %113 = call i32 @test_and_set_bit(i32 %110, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  %118 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %119 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @sysfs_notify_dirent_safe(i32 %120)
  br label %122

122:                                              ; preds = %115, %109, %103, %97, %94
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %16

126:                                              ; preds = %16
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.mddev*, %struct.mddev** %2, align 8
  %129 = getelementptr inbounds %struct.mddev, %struct.mddev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %133 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %132, i32 0, i32 1
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %137 = call i32 @print_conf(%struct.r1conf* %136)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @print_conf(%struct.r1conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
