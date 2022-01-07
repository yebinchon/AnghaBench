; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_remove_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, %struct.r1conf* }
%struct.r1conf = type { i32, i64, %struct.raid1_info* }
%struct.raid1_info = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32 }

@In_sync = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@RemoveSynchronized = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid1_remove_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid1_remove_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.raid1_info*, align 8
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %4, align 8
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 2
  %12 = load %struct.r1conf*, %struct.r1conf** %11, align 8
  store %struct.r1conf* %12, %struct.r1conf** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %17 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %16, i32 0, i32 2
  %18 = load %struct.raid1_info*, %struct.raid1_info** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %18, i64 %20
  store %struct.raid1_info* %21, %struct.raid1_info** %8, align 8
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %24 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %23, i32 0, i32 0
  %25 = load %struct.md_rdev*, %struct.md_rdev** %24, align 8
  %26 = icmp ne %struct.md_rdev* %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %29 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %28, i32 0, i32 2
  %30 = load %struct.raid1_info*, %struct.raid1_info** %29, align 8
  %31 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %32 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %30, i64 %34
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %35, i64 %37
  store %struct.raid1_info* %38, %struct.raid1_info** %8, align 8
  br label %39

39:                                               ; preds = %27, %2
  %40 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %41 = call i32 @print_conf(%struct.r1conf* %40)
  %42 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %43 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %44 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %43, i32 0, i32 0
  %45 = load %struct.md_rdev*, %struct.md_rdev** %44, align 8
  %46 = icmp eq %struct.md_rdev* %42, %45
  br i1 %46, label %47, label %173

47:                                               ; preds = %39
  %48 = load i32, i32* @In_sync, align 4
  %49 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 2
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %47
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %174

61:                                               ; preds = %53
  %62 = load i32, i32* @Faulty, align 4
  %63 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 1
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %61
  %68 = load %struct.mddev*, %struct.mddev** %3, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %72 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load %struct.mddev*, %struct.mddev** %3, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %80 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %174

86:                                               ; preds = %75, %67, %61
  %87 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %88 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %87, i32 0, i32 0
  store %struct.md_rdev* null, %struct.md_rdev** %88, align 8
  %89 = load i32, i32* @RemoveSynchronized, align 4
  %90 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 1
  %92 = call i64 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %86
  %95 = call i32 (...) @synchronize_rcu()
  %96 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %97 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %96, i32 0, i32 2
  %98 = call i64 @atomic_read(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* @EBUSY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %104 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %105 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %104, i32 0, i32 0
  store %struct.md_rdev* %103, %struct.md_rdev** %105, align 8
  br label %174

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %109 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %108, i32 0, i32 2
  %110 = load %struct.raid1_info*, %struct.raid1_info** %109, align 8
  %111 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %112 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %110, i64 %116
  %118 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %117, i32 0, i32 0
  %119 = load %struct.md_rdev*, %struct.md_rdev** %118, align 8
  %120 = icmp ne %struct.md_rdev* %119, null
  br i1 %120, label %121, label %166

121:                                              ; preds = %107
  %122 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %123 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %122, i32 0, i32 2
  %124 = load %struct.raid1_info*, %struct.raid1_info** %123, align 8
  %125 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %126 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %124, i64 %130
  %132 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %131, i32 0, i32 0
  %133 = load %struct.md_rdev*, %struct.md_rdev** %132, align 8
  store %struct.md_rdev* %133, %struct.md_rdev** %9, align 8
  %134 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %135 = call i32 @freeze_array(%struct.r1conf* %134, i32 0)
  %136 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %137 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %136, i32 0, i32 2
  %138 = call i64 @atomic_read(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %121
  %141 = load i32, i32* @EBUSY, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  %143 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %144 = call i32 @unfreeze_array(%struct.r1conf* %143)
  br label %174

145:                                              ; preds = %121
  %146 = load i32, i32* @Replacement, align 4
  %147 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %148 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %147, i32 0, i32 1
  %149 = call i32 @clear_bit(i32 %146, i32* %148)
  %150 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %151 = load %struct.raid1_info*, %struct.raid1_info** %8, align 8
  %152 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %151, i32 0, i32 0
  store %struct.md_rdev* %150, %struct.md_rdev** %152, align 8
  %153 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %154 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %153, i32 0, i32 2
  %155 = load %struct.raid1_info*, %struct.raid1_info** %154, align 8
  %156 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %157 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %155, i64 %161
  %163 = getelementptr inbounds %struct.raid1_info, %struct.raid1_info* %162, i32 0, i32 0
  store %struct.md_rdev* null, %struct.md_rdev** %163, align 8
  %164 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %165 = call i32 @unfreeze_array(%struct.r1conf* %164)
  br label %166

166:                                              ; preds = %145, %107
  %167 = load i32, i32* @WantReplacement, align 4
  %168 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %169 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %168, i32 0, i32 1
  %170 = call i32 @clear_bit(i32 %167, i32* %169)
  %171 = load %struct.mddev*, %struct.mddev** %3, align 8
  %172 = call i32 @md_integrity_register(%struct.mddev* %171)
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %166, %39
  br label %174

174:                                              ; preds = %173, %140, %100, %83, %58
  %175 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %176 = call i32 @print_conf(%struct.r1conf* %175)
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @print_conf(%struct.r1conf*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @freeze_array(%struct.r1conf*, i32) #1

declare dso_local i32 @unfreeze_array(%struct.r1conf*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @md_integrity_register(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
