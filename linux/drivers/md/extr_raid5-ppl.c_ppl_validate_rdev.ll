; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_validate_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_validate_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i64, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@PPL_HEADER_SIZE = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"md/raid:%s: PPL space too small on %s\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"md/raid:%s: PPL space overlaps with data on %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"md/raid:%s: PPL space overlaps with superblock on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*)* @ppl_validate_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppl_validate_rdev(%struct.md_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.md_rdev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %3, align 8
  %9 = load i32, i32* @BDEVNAME_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PPL_HEADER_SIZE, align 4
  %18 = ashr i32 %17, 9
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @STRIPE_SECTORS, align 4
  %25 = call i32 @rounddown(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @mdname(%struct.TYPE_4__* %32)
  %34 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %35 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bdevname(i32 %36, i8* %12)
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37)
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %154

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PPL_HEADER_SIZE, align 4
  %44 = ashr i32 %43, 9
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %41
  %55 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %63 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %88, label %66

66:                                               ; preds = %54, %41
  %67 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %72 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %66
  %76 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %77 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %80 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %84 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %82, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %75, %54
  %89 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %90 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %89, i32 0, i32 5
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @mdname(%struct.TYPE_4__* %91)
  %93 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %94 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bdevname(i32 %95, i8* %12)
  %97 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %154

100:                                              ; preds = %75, %66
  %101 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 5
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %149, label %107

107:                                              ; preds = %100
  %108 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %109 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %115 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %119 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %120, 9
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %137, label %123

123:                                              ; preds = %113, %107
  %124 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %125 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %123
  %130 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %131 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %129, %113
  %138 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %139 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %138, i32 0, i32 5
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = call i32 @mdname(%struct.TYPE_4__* %140)
  %142 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %143 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @bdevname(i32 %144, i8* %12)
  %146 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %145)
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %154

149:                                              ; preds = %129, %123, %100
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.md_rdev*, %struct.md_rdev** %3, align 8
  %152 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %154

154:                                              ; preds = %149, %137, %88, %29
  %155 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rounddown(i32, i32) #2

declare dso_local i32 @pr_warn(i8*, i32, i32) #2

declare dso_local i32 @mdname(%struct.TYPE_4__*) #2

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
