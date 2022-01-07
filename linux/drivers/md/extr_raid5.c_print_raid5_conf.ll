; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_print_raid5_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_print_raid5_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, %struct.disk_info*, %struct.TYPE_3__* }
%struct.disk_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"RAID conf printout:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(conf==NULL)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" --- level:%d rd:%d wd:%d\0A\00", align 1
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c" disk %d, o:%d, dev:%s\0A\00", align 1
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*)* @print_raid5_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_raid5_conf(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.disk_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %9 = icmp ne %struct.r5conf* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %17 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %20 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %24 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %22, %27
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %18, i64 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %71, %12
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %33 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = load i32, i32* @BDEVNAME_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %5, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %6, align 8
  %41 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %42 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %41, i32 0, i32 2
  %43 = load %struct.disk_info*, %struct.disk_info** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %43, i64 %45
  store %struct.disk_info* %46, %struct.disk_info** %4, align 8
  %47 = load %struct.disk_info*, %struct.disk_info** %4, align 8
  %48 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %36
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @Faulty, align 4
  %54 = load %struct.disk_info*, %struct.disk_info** %4, align 8
  %55 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @test_bit(i32 %53, i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.disk_info*, %struct.disk_info** %4, align 8
  %63 = getelementptr inbounds %struct.disk_info, %struct.disk_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @bdevname(i32 %66, i8* %40)
  %68 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %61, i64 %67)
  br label %69

69:                                               ; preds = %51, %36
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %30

74:                                               ; preds = %10, %30
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @bdevname(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
