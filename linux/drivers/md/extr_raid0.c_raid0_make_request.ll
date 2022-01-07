; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, %struct.r0conf*, i32 }
%struct.r0conf = type { i32 }
%struct.bio = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.strip_zone = type { i32 }
%struct.md_rdev = type { i32, i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"md/raid0:%s: Invalid layout\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"raid0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @raid0_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid0_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.r0conf*, align 8
  %7 = alloca %struct.strip_zone*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 2
  %17 = load %struct.r0conf*, %struct.r0conf** %16, align 8
  store %struct.r0conf* %17, %struct.r0conf** %6, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @REQ_PREFLUSH, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = call i32 @md_flush_request(%struct.mddev* %26, %struct.bio* %27)
  store i32 1, i32* %3, align 4
  br label %162

29:                                               ; preds = %2
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i64 @bio_op(%struct.bio* %30)
  %32 = load i64, i64* @REQ_OP_DISCARD, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = call i32 @raid0_handle_discard(%struct.mddev* %38, %struct.bio* %39)
  store i32 1, i32* %3, align 4
  br label %162

41:                                               ; preds = %29
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.mddev*, %struct.mddev** %4, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @is_power_of_2(i32 %51)
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 %57, 1
  %59 = and i32 %56, %58
  br label %64

60:                                               ; preds = %41
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @sector_div(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i32 [ %59, %55 ], [ %63, %60 ]
  %66 = sub i32 %50, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = call i32 @bio_sectors(%struct.bio* %69)
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.bio*, %struct.bio** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @GFP_NOIO, align 4
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 3
  %78 = call %struct.bio* @bio_split(%struct.bio* %73, i32 %74, i32 %75, i32* %77)
  store %struct.bio* %78, %struct.bio** %14, align 8
  %79 = load %struct.bio*, %struct.bio** %14, align 8
  %80 = load %struct.bio*, %struct.bio** %5, align 8
  %81 = call i32 @bio_chain(%struct.bio* %79, %struct.bio* %80)
  %82 = load %struct.bio*, %struct.bio** %5, align 8
  %83 = call i32 @generic_make_request(%struct.bio* %82)
  %84 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %84, %struct.bio** %5, align 8
  br label %85

85:                                               ; preds = %72, %64
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.mddev*, %struct.mddev** %4, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 2
  %89 = load %struct.r0conf*, %struct.r0conf** %88, align 8
  %90 = call %struct.strip_zone* @find_zone(%struct.r0conf* %89, i32* %10)
  store %struct.strip_zone* %90, %struct.strip_zone** %7, align 8
  %91 = load %struct.r0conf*, %struct.r0conf** %6, align 8
  %92 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %104 [
    i32 128, label %94
    i32 129, label %99
  ]

94:                                               ; preds = %85
  %95 = load %struct.mddev*, %struct.mddev** %4, align 8
  %96 = load %struct.strip_zone*, %struct.strip_zone** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.md_rdev* @map_sector(%struct.mddev* %95, %struct.strip_zone* %96, i32 %97, i32* %10)
  store %struct.md_rdev* %98, %struct.md_rdev** %8, align 8
  br label %110

99:                                               ; preds = %85
  %100 = load %struct.mddev*, %struct.mddev** %4, align 8
  %101 = load %struct.strip_zone*, %struct.strip_zone** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call %struct.md_rdev* @map_sector(%struct.mddev* %100, %struct.strip_zone* %101, i32 %102, i32* %10)
  store %struct.md_rdev* %103, %struct.md_rdev** %8, align 8
  br label %110

104:                                              ; preds = %85
  %105 = load %struct.mddev*, %struct.mddev** %4, align 8
  %106 = call i32 @mdname(%struct.mddev* %105)
  %107 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = call i32 @bio_io_error(%struct.bio* %108)
  store i32 1, i32* %3, align 4
  br label %162

110:                                              ; preds = %99, %94
  %111 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %112 = call i32 @is_mddev_broken(%struct.md_rdev* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = call i32 @bio_io_error(%struct.bio* %116)
  store i32 1, i32* %3, align 4
  br label %162

118:                                              ; preds = %110
  %119 = load %struct.bio*, %struct.bio** %5, align 8
  %120 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %121 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @bio_set_dev(%struct.bio* %119, i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.strip_zone*, %struct.strip_zone** %7, align 8
  %126 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %124, %127
  %129 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %130 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %128, %131
  %133 = load %struct.bio*, %struct.bio** %5, align 8
  %134 = getelementptr inbounds %struct.bio, %struct.bio* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.mddev*, %struct.mddev** %4, align 8
  %137 = getelementptr inbounds %struct.mddev, %struct.mddev* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %118
  %141 = load %struct.bio*, %struct.bio** %5, align 8
  %142 = getelementptr inbounds %struct.bio, %struct.bio* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.bio*, %struct.bio** %5, align 8
  %147 = load %struct.mddev*, %struct.mddev** %4, align 8
  %148 = getelementptr inbounds %struct.mddev, %struct.mddev* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @disk_devt(i64 %149)
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @trace_block_bio_remap(i32 %145, %struct.bio* %146, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %140, %118
  %154 = load %struct.mddev*, %struct.mddev** %4, align 8
  %155 = load %struct.bio*, %struct.bio** %5, align 8
  %156 = call i32 @mddev_check_writesame(%struct.mddev* %154, %struct.bio* %155)
  %157 = load %struct.mddev*, %struct.mddev** %4, align 8
  %158 = load %struct.bio*, %struct.bio** %5, align 8
  %159 = call i32 @mddev_check_write_zeroes(%struct.mddev* %157, %struct.bio* %158)
  %160 = load %struct.bio*, %struct.bio** %5, align 8
  %161 = call i32 @generic_make_request(%struct.bio* %160)
  store i32 1, i32* %3, align 4
  br label %162

162:                                              ; preds = %153, %115, %104, %37, %25
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @raid0_handle_discard(%struct.mddev*, %struct.bio*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local %struct.strip_zone* @find_zone(%struct.r0conf*, i32*) #1

declare dso_local %struct.md_rdev* @map_sector(%struct.mddev*, %struct.strip_zone*, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @is_mddev_broken(%struct.md_rdev*, i8*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @trace_block_bio_remap(i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @disk_devt(i64) #1

declare dso_local i32 @mddev_check_writesame(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @mddev_check_write_zeroes(%struct.mddev*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
