; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_add_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, %struct.r1conf* }
%struct.r1conf = type { i32, i64, i32, %struct.raid1_info* }
%struct.raid1_info = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid1_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_add_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r1conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid1_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %12 = load %struct.mddev*, %struct.mddev** %4, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 3
  %14 = load %struct.r1conf*, %struct.r1conf** %13, align 8
  store %struct.r1conf* %14, %struct.r1conf** %6, align 8
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %18 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load %struct.mddev*, %struct.mddev** %4, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %25 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %204

31:                                               ; preds = %2
  %32 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %33 = load %struct.mddev*, %struct.mddev** %4, align 8
  %34 = call i64 @md_integrity_add_rdev(%struct.md_rdev* %32, %struct.mddev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %204

39:                                               ; preds = %31
  %40 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %46 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %61 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %64 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %69 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %68, i32 0, i32 3
  %70 = load %struct.raid1_info*, %struct.raid1_info** %69, align 8
  %71 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %72 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %70, i64 %74
  %76 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp eq %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %81 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %67, %59, %53, %48
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %179, %83
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %182

89:                                               ; preds = %85
  %90 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %91 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %90, i32 0, i32 3
  %92 = load %struct.raid1_info*, %struct.raid1_info** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %92, i64 %94
  store %struct.raid1_info* %95, %struct.raid1_info** %9, align 8
  %96 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %97 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = icmp ne %struct.TYPE_2__* %98, null
  br i1 %99, label %136, label %100

100:                                              ; preds = %89
  %101 = load %struct.mddev*, %struct.mddev** %4, align 8
  %102 = getelementptr inbounds %struct.mddev, %struct.mddev* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.mddev*, %struct.mddev** %4, align 8
  %107 = getelementptr inbounds %struct.mddev, %struct.mddev* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %110 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %113 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 9
  %116 = call i32 @disk_stack_limits(i64 %108, i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %105, %100
  %118 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %119 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %122 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %7, align 4
  %123 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %124 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %129 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %128, i32 0, i32 2
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %117
  %131 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %132 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %135 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %133, %struct.md_rdev* %134)
  br label %182

136:                                              ; preds = %89
  %137 = load i32, i32* @WantReplacement, align 4
  %138 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %139 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i64 @test_bit(i32 %137, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %136
  %145 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %146 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %147 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %145, i64 %149
  %151 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = icmp eq %struct.TYPE_2__* %152, null
  br i1 %153, label %154, label %178

154:                                              ; preds = %144
  %155 = load i32, i32* @In_sync, align 4
  %156 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %157 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %156, i32 0, i32 4
  %158 = call i32 @clear_bit(i32 %155, i32* %157)
  %159 = load i32, i32* @Replacement, align 4
  %160 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %161 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %160, i32 0, i32 4
  %162 = call i32 @set_bit(i32 %159, i32* %161)
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %165 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  store i32 0, i32* %7, align 4
  %166 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %167 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %166, i32 0, i32 2
  store i32 1, i32* %167, align 8
  %168 = load %struct.raid1_info*, %struct.raid1_info** %9, align 8
  %169 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %170 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %168, i64 %172
  %174 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %177 = call i32 @rcu_assign_pointer(%struct.TYPE_2__* %175, %struct.md_rdev* %176)
  br label %182

178:                                              ; preds = %144, %136
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %85

182:                                              ; preds = %154, %130, %85
  %183 = load %struct.mddev*, %struct.mddev** %4, align 8
  %184 = getelementptr inbounds %struct.mddev, %struct.mddev* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %182
  %188 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %189 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @bdev_get_queue(i32 %190)
  %192 = call i64 @blk_queue_discard(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %196 = load %struct.mddev*, %struct.mddev** %4, align 8
  %197 = getelementptr inbounds %struct.mddev, %struct.mddev* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @blk_queue_flag_set(i32 %195, i64 %198)
  br label %200

200:                                              ; preds = %194, %187, %182
  %201 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %202 = call i32 @print_conf(%struct.r1conf* %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %36, %28
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i64 @md_integrity_add_rdev(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @disk_stack_limits(i64, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.TYPE_2__*, %struct.md_rdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @blk_queue_discard(i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, i64) #1

declare dso_local i32 @print_conf(%struct.r1conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
