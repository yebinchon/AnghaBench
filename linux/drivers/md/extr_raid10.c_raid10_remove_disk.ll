; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_remove_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_remove_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_2__, %struct.raid10_info* }
%struct.TYPE_2__ = type { i32 }
%struct.raid10_info = type { i64, %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32, i32, i32 }

@In_sync = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@RemoveSynchronized = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @raid10_remove_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_remove_disk(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev**, align 8
  %10 = alloca %struct.raid10_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load %struct.r10conf*, %struct.r10conf** %12, align 8
  store %struct.r10conf* %13, %struct.r10conf** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 1
  %19 = load %struct.raid10_info*, %struct.raid10_info** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %19, i64 %21
  store %struct.raid10_info* %22, %struct.raid10_info** %10, align 8
  %23 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %24 = call i32 @print_conf(%struct.r10conf* %23)
  %25 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %26 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %27 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %26, i32 0, i32 2
  %28 = load %struct.md_rdev*, %struct.md_rdev** %27, align 8
  %29 = icmp eq %struct.md_rdev* %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %32 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %31, i32 0, i32 2
  store %struct.md_rdev** %32, %struct.md_rdev*** %9, align 8
  br label %44

33:                                               ; preds = %2
  %34 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %35 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %36 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %35, i32 0, i32 1
  %37 = load %struct.md_rdev*, %struct.md_rdev** %36, align 8
  %38 = icmp eq %struct.md_rdev* %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %41 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %40, i32 0, i32 1
  store %struct.md_rdev** %41, %struct.md_rdev*** %9, align 8
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %147

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* @In_sync, align 4
  %46 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 2
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %44
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %143

58:                                               ; preds = %50
  %59 = load i32, i32* @Faulty, align 4
  %60 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %61 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %58
  %65 = load %struct.mddev*, %struct.mddev** %4, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %69 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %64
  %73 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %74 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %73, i32 0, i32 1
  %75 = load %struct.md_rdev*, %struct.md_rdev** %74, align 8
  %76 = icmp ne %struct.md_rdev* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %79 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %78, i32 0, i32 1
  %80 = load %struct.md_rdev*, %struct.md_rdev** %79, align 8
  %81 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %82 = icmp eq %struct.md_rdev* %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %86 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %92 = call i64 @enough(%struct.r10conf* %91, i32 -1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %143

97:                                               ; preds = %90, %83, %77, %64, %58
  %98 = load %struct.md_rdev**, %struct.md_rdev*** %9, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %98, align 8
  %99 = load i32, i32* @RemoveSynchronized, align 4
  %100 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %101 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %100, i32 0, i32 1
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %97
  %105 = call i32 (...) @synchronize_rcu()
  %106 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %107 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %106, i32 0, i32 2
  %108 = call i64 @atomic_read(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  %113 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %114 = load %struct.md_rdev**, %struct.md_rdev*** %9, align 8
  store %struct.md_rdev* %113, %struct.md_rdev** %114, align 8
  br label %143

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %97
  %117 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %118 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %117, i32 0, i32 1
  %119 = load %struct.md_rdev*, %struct.md_rdev** %118, align 8
  %120 = icmp ne %struct.md_rdev* %119, null
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %123 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %122, i32 0, i32 1
  %124 = load %struct.md_rdev*, %struct.md_rdev** %123, align 8
  %125 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %126 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %125, i32 0, i32 2
  store %struct.md_rdev* %124, %struct.md_rdev** %126, align 8
  %127 = load i32, i32* @Replacement, align 4
  %128 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %129 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %128, i32 0, i32 1
  %130 = load %struct.md_rdev*, %struct.md_rdev** %129, align 8
  %131 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %130, i32 0, i32 1
  %132 = call i32 @clear_bit(i32 %127, i32* %131)
  %133 = call i32 (...) @smp_mb()
  %134 = load %struct.raid10_info*, %struct.raid10_info** %10, align 8
  %135 = getelementptr inbounds %struct.raid10_info, %struct.raid10_info* %134, i32 0, i32 1
  store %struct.md_rdev* null, %struct.md_rdev** %135, align 8
  br label %136

136:                                              ; preds = %121, %116
  %137 = load i32, i32* @WantReplacement, align 4
  %138 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %139 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %138, i32 0, i32 1
  %140 = call i32 @clear_bit(i32 %137, i32* %139)
  %141 = load %struct.mddev*, %struct.mddev** %4, align 8
  %142 = call i32 @md_integrity_register(%struct.mddev* %141)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %136, %110, %94, %55
  %144 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %145 = call i32 @print_conf(%struct.r10conf* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %42
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @print_conf(%struct.r10conf*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @enough(%struct.r10conf*, i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @md_integrity_register(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
