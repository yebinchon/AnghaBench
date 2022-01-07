; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_dump_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_dump_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r0conf* }
%struct.r0conf = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"md: RAID0 configuration for %s - %d zone%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"md: zone%d=[%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"      zone-offset=%10lluKB, device-offset=%10lluKB, size=%10lluKB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @dump_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_zones(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.r0conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [200 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* @BDEVNAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.mddev*, %struct.mddev** %2, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 0
  %19 = load %struct.r0conf*, %struct.r0conf** %18, align 8
  store %struct.r0conf* %19, %struct.r0conf** %9, align 8
  %20 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %21 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = call i32 @mdname(%struct.mddev* %26)
  %28 = sext i32 %27 to i64
  %29 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %30 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %33 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31, i8* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %127, %1
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %42 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %130

45:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %87, %45
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %49 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %47, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %46
  %58 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 200, %62
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %68 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %69 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bdevname(i32 %80, i8* %16)
  %82 = call i64 @snprintf(i8* %61, i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %57
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %46

90:                                               ; preds = %46
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %94 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %92, i8* %93)
  %95 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %96 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub nsw i64 %102, %103
  store i64 %104, i64* %5, align 8
  %105 = load i64, i64* %6, align 8
  %106 = lshr i64 %105, 1
  %107 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %108 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = lshr i64 %114, 1
  %116 = load i64, i64* %5, align 8
  %117 = lshr i64 %116, 1
  %118 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i64 %106, i64 %115, i64 %117)
  %119 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  %120 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %90
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %39

130:                                              ; preds = %39
  %131 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %131)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #2

declare dso_local i32 @mdname(%struct.mddev*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
