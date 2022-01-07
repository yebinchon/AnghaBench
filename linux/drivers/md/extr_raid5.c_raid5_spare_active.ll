; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_spare_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_spare_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r5conf* }
%struct.r5conf = type { i32, i32, %struct.disk_info* }
%struct.disk_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@MaxSector = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid5_spare_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_spare_active(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.disk_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %8 = load %struct.mddev*, %struct.mddev** %2, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 1
  %10 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  store %struct.r5conf* %10, %struct.r5conf** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %133, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %136

17:                                               ; preds = %11
  %18 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 2
  %20 = load %struct.disk_info*, %struct.disk_info** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %20, i64 %22
  store %struct.disk_info* %23, %struct.disk_info** %5, align 8
  %24 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %25 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %93

28:                                               ; preds = %17
  %29 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %30 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MaxSector, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %28
  %37 = load i32, i32* @Faulty, align 4
  %38 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %39 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = call i32 @test_bit(i32 %37, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %93, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @In_sync, align 4
  %46 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %47 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = call i32 @test_and_set_bit(i32 %45, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %93, label %52

52:                                               ; preds = %44
  %53 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %54 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* @In_sync, align 4
  %59 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %60 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = call i32 @test_and_clear_bit(i32 %58, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %70 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i32, i32* @Faulty, align 4
  %75 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %76 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = call i32 @set_bit(i32 %74, i32* %78)
  %80 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %81 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sysfs_notify_dirent_safe(i32 %84)
  br label %86

86:                                               ; preds = %73, %68
  %87 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %88 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sysfs_notify_dirent_safe(i32 %91)
  br label %132

93:                                               ; preds = %44, %36, %28, %17
  %94 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %95 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %98, label %131

98:                                               ; preds = %93
  %99 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %100 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MaxSector, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %98
  %107 = load i32, i32* @Faulty, align 4
  %108 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %109 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = call i32 @test_bit(i32 %107, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %106
  %115 = load i32, i32* @In_sync, align 4
  %116 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %117 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = call i32 @test_and_set_bit(i32 %115, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = load %struct.disk_info*, %struct.disk_info** %5, align 8
  %126 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @sysfs_notify_dirent_safe(i32 %129)
  br label %131

131:                                              ; preds = %122, %114, %106, %98, %93
  br label %132

132:                                              ; preds = %131, %86
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %3, align 4
  br label %11

136:                                              ; preds = %11
  %137 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %138 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %137, i32 0, i32 1
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @spin_lock_irqsave(i32* %138, i64 %139)
  %141 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %142 = call i32 @raid5_calc_degraded(%struct.r5conf* %141)
  %143 = load %struct.mddev*, %struct.mddev** %2, align 8
  %144 = getelementptr inbounds %struct.mddev, %struct.mddev* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %146 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %145, i32 0, i32 1
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %150 = call i32 @print_raid5_conf(%struct.r5conf* %149)
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raid5_calc_degraded(%struct.r5conf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @print_raid5_conf(%struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
