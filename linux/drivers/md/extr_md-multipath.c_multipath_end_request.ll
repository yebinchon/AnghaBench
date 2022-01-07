; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_end_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_5__, %struct.multipath_bh* }
%struct.TYPE_5__ = type { i64 }
%struct.multipath_bh = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mpconf* }
%struct.mpconf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@REQ_RAHEAD = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"multipath: %s: rescheduling sector %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @multipath_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multipath_end_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.multipath_bh*, align 8
  %4 = alloca %struct.mpconf*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 3
  %10 = load %struct.multipath_bh*, %struct.multipath_bh** %9, align 8
  store %struct.multipath_bh* %10, %struct.multipath_bh** %3, align 8
  %11 = load %struct.multipath_bh*, %struct.multipath_bh** %3, align 8
  %12 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.mpconf*, %struct.mpconf** %14, align 8
  store %struct.mpconf* %15, %struct.mpconf** %4, align 8
  %16 = load %struct.mpconf*, %struct.mpconf** %4, align 8
  %17 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.multipath_bh*, %struct.multipath_bh** %3, align 8
  %20 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.md_rdev*, %struct.md_rdev** %23, align 8
  store %struct.md_rdev* %24, %struct.md_rdev** %5, align 8
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.multipath_bh*, %struct.multipath_bh** %3, align 8
  %31 = call i32 @multipath_end_bh_io(%struct.multipath_bh* %30, i32 0)
  br label %68

32:                                               ; preds = %1
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @REQ_RAHEAD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @BDEVNAME_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %6, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %7, align 8
  %44 = load %struct.multipath_bh*, %struct.multipath_bh** %3, align 8
  %45 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %48 = call i32 @md_error(%struct.TYPE_6__* %46, %struct.md_rdev* %47)
  %49 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bdevname(i32 %51, i8* %43)
  %53 = load %struct.bio*, %struct.bio** %2, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %56)
  %58 = load %struct.multipath_bh*, %struct.multipath_bh** %3, align 8
  %59 = call i32 @multipath_reschedule_retry(%struct.multipath_bh* %58)
  %60 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %67

61:                                               ; preds = %32
  %62 = load %struct.multipath_bh*, %struct.multipath_bh** %3, align 8
  %63 = load %struct.bio*, %struct.bio** %2, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @multipath_end_bh_io(%struct.multipath_bh* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %39
  br label %68

68:                                               ; preds = %67, %29
  %69 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %70 = load %struct.mpconf*, %struct.mpconf** %4, align 8
  %71 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rdev_dec_pending(%struct.md_rdev* %69, i32 %72)
  ret void
}

declare dso_local i32 @multipath_end_bh_io(%struct.multipath_bh*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @md_error(%struct.TYPE_6__*, %struct.md_rdev*) #1

declare dso_local i32 @pr_info(i8*, i32, i64) #1

declare dso_local i32 @bdevname(i32, i8*) #1

declare dso_local i32 @multipath_reschedule_retry(%struct.multipath_bh*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
