; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_print_multipath_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_print_multipath_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpconf = type { i32, %struct.multipath_info*, %struct.TYPE_4__* }
%struct.multipath_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"MULTIPATH conf printout:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"(conf==NULL)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" --- wd:%d rd:%d\0A\00", align 1
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c" disk%d, o:%d, dev:%s\0A\00", align 1
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpconf*)* @print_multipath_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_multipath_conf(%struct.mpconf* %0) #0 {
  %2 = alloca %struct.mpconf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.multipath_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mpconf* %0, %struct.mpconf** %2, align 8
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.mpconf*, %struct.mpconf** %2, align 8
  %9 = icmp ne %struct.mpconf* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.mpconf*, %struct.mpconf** %2, align 8
  %14 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = load %struct.mpconf*, %struct.mpconf** %2, align 8
  %18 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = load %struct.mpconf*, %struct.mpconf** %2, align 8
  %24 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %22, i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %68, %12
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.mpconf*, %struct.mpconf** %2, align 8
  %30 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load i32, i32* @BDEVNAME_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %5, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %6, align 8
  %38 = load %struct.mpconf*, %struct.mpconf** %2, align 8
  %39 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %38, i32 0, i32 1
  %40 = load %struct.multipath_info*, %struct.multipath_info** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %40, i64 %42
  store %struct.multipath_info* %43, %struct.multipath_info** %4, align 8
  %44 = load %struct.multipath_info*, %struct.multipath_info** %4, align 8
  %45 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %33
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @Faulty, align 4
  %51 = load %struct.multipath_info*, %struct.multipath_info** %4, align 8
  %52 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i32 @test_bit(i32 %50, i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.multipath_info*, %struct.multipath_info** %4, align 8
  %60 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bdevname(i32 %63, i8* %37)
  %65 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %48, %33
  %67 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %27

71:                                               ; preds = %10, %27
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bdevname(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
