; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_takeover_raid10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_takeover_raid10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.r0conf = type opaque

@.str = private unnamed_addr constant [50 x i8] c"md/raid0:%s:: Raid0 cannot takeover layout: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"md/raid0:%s: Raid0 cannot takeover Raid10 with odd disk number.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"md/raid0:%s: All mirrors must be already degraded!\0A\00", align 1
@MaxSector = common dso_local global i32 0, align 4
@UNSUPPORTED_MDDEV_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid0_takeover_raid10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid0_takeover_raid10(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r0conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 258
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = call i32 @mdname(%struct.mddev* %10)
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i8* @ERR_PTR(i32 %17)
  store i8* %18, i8** %2, align 8
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = call i32 @mdname(%struct.mddev* %26)
  %28 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i8* @ERR_PTR(i32 %30)
  store i8* %31, i8** %2, align 8
  br label %85

32:                                               ; preds = %19
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mddev*, %struct.mddev** %3, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 1
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.mddev*, %struct.mddev** %3, align 8
  %43 = call i32 @mdname(%struct.mddev* %42)
  %44 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i8* @ERR_PTR(i32 %46)
  store i8* %47, i8** %2, align 8
  br label %85

48:                                               ; preds = %32
  %49 = load %struct.mddev*, %struct.mddev** %3, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 8
  store i64 0, i64* %50, align 8
  %51 = load %struct.mddev*, %struct.mddev** %3, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load %struct.mddev*, %struct.mddev** %3, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mddev*, %struct.mddev** %3, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  %62 = sdiv i32 %61, 2
  %63 = load %struct.mddev*, %struct.mddev** %3, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mddev*, %struct.mddev** %3, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mddev*, %struct.mddev** %3, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.mddev*, %struct.mddev** %3, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* @MaxSector, align 4
  %75 = load %struct.mddev*, %struct.mddev** %3, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mddev*, %struct.mddev** %3, align 8
  %78 = load i32, i32* @UNSUPPORTED_MDDEV_FLAGS, align 4
  %79 = call i32 @mddev_clear_unsupported_flags(%struct.mddev* %77, i32 %78)
  %80 = load %struct.mddev*, %struct.mddev** %3, align 8
  %81 = bitcast %struct.r0conf** %4 to i8**
  %82 = call i32 @create_strip_zones(%struct.mddev* %80, i8** %81)
  %83 = load %struct.r0conf*, %struct.r0conf** %4, align 8
  %84 = bitcast %struct.r0conf* %83 to i8*
  store i8* %84, i8** %2, align 8
  br label %85

85:                                               ; preds = %48, %41, %25, %9
  %86 = load i8*, i8** %2, align 8
  ret i8* %86
}

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @mddev_clear_unsupported_flags(%struct.mddev*, i32) #1

declare dso_local i32 @create_strip_zones(%struct.mddev*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
